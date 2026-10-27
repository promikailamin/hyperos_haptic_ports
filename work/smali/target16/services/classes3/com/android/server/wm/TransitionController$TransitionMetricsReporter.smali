.class public Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;
.super Landroid/window/ITransitionMetricsReporter$Stub;
.source "TransitionController.java"


# instance fields
.field public final mMetricConsumers:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1942
    invoke-direct {p0}, Landroid/window/ITransitionMetricsReporter$Stub;-><init>()V

    .line 1943
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public associate(Landroid/os/IBinder;Ljava/util/function/LongConsumer;)V
    .registers 4

    .line 1946
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1947
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public reportAnimationStart(Landroid/os/IBinder;J)V
    .registers 6

    .line 1954
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1955
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_1e

    .line 1956
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/LongConsumer;

    .line 1957
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_d

    if-eqz p0, :cond_1d

    .line 1959
    invoke-interface {p0, p2, p3}, Ljava/util/function/LongConsumer;->accept(J)V

    :cond_1d
    return-void

    .line 1957
    :goto_1e
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_d

    throw p0
.end method
