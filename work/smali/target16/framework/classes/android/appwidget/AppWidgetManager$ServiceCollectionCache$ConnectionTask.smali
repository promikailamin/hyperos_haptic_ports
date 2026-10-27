.class Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;
.super Ljava/lang/Object;
.source "AppWidgetManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionTask"
.end annotation


# instance fields
.field private blacklist mBinderCallExecutor:Ljava/util/concurrent/ExecutorService;

.field private final blacklist mConnectionTimeout:Ljava/lang/Runnable;

.field private blacklist mCurrentTaskToken:Ljava/lang/Object;

.field private final blacklist mDestroyAfterTimeout:Ljava/lang/Runnable;

.field private final blacklist mExecutorName:Ljava/lang/String;

.field private blacklist mIBinder:Landroid/os/IBinder;

.field private blacklist mOnDestroyTimeout:Z

.field private final blacklist mTaskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;


# direct methods
.method public static synthetic blacklist $r8$lambda$3UF9eEsYCU8GhcNlBBDOgtCadv0(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;Ljava/util/concurrent/Future;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->lambda$handleNext$2(Ljava/util/concurrent/Future;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$45TcuKsxsjo8cSErR-GCtx0ila4(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->lambda$handleNext$1(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$J9KzaT9AoWvLn3RCpGRDxbfhHtQ(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->lambda$handleNext$0(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$USM1WqBJTr68xwfDdgalw4wrO8U(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;)V
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->onConnectionTimeout()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$W41tqMRtm2E8q_i_MnFBu3FZQII(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;)V
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->onDestroyTimeout()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pTnOOPBKfqH_YXKm5tSZeRZf_NU(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;)V
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->handleNext()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;Landroid/content/Intent$FilterComparison;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1745
    iput-object p1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1734
    new-instance v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mDestroyAfterTimeout:Ljava/lang/Runnable;

    .line 1735
    new-instance v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda1;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mConnectionTimeout:Ljava/lang/Runnable;

    .line 1736
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mTaskQueue:Ljava/util/ArrayDeque;

    .line 1739
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mOnDestroyTimeout:Z

    .line 1746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appwidget-connectiontask-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent$FilterComparison;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mExecutorName:Ljava/lang/String;

    .line 1748
    :try_start_36
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmContext(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object p2

    .line 1749
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Landroid/content/Context$BindServiceFlags;->of(J)Landroid/content/Context$BindServiceFlags;

    move-result-object v1

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;

    move-result-object v2

    .line 1750
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda2;-><init>(Landroid/os/Handler;)V

    .line 1748
    invoke-virtual {v0, p2, v1, v3, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/Context$BindServiceFlags;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_53} :catch_54

    .line 1754
    goto :goto_5c

    .line 1752
    :catch_54
    move-exception p2

    .line 1753
    const-string v0, "AppWidgetManager"

    const-string v1, "Error connecting to service in connection cache"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1755
    :goto_5c
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mConnectionTimeout:Ljava/lang/Runnable;

    const-wide/16 v0, 0x4e20

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1756
    return-void
.end method

.method private blacklist handleNext()V
    .registers 5

    .line 1801
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mDestroyAfterTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1802
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    .line 1803
    if-eqz v0, :cond_43

    .line 1804
    iput-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mCurrentTaskToken:Ljava/lang/Object;

    .line 1805
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mOnDestroyTimeout:Z

    .line 1806
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mBinderCallExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_27

    .line 1807
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mExecutorName:Ljava/lang/String;

    const/4 v2, -0x2

    invoke-static {v1, v2}, Landroid/appwidget/AppWidgetManager;->-$$Nest$smcreateExecutorService(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mBinderCallExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1810
    :cond_27
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mBinderCallExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda4;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;Ljava/util/function/Consumer;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 1815
    iget-object v2, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v1, v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda5;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;Ljava/util/concurrent/Future;Ljava/util/function/Consumer;)V

    const-wide/16 v0, 0x4e20

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1819
    goto :goto_57

    .line 1821
    :cond_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mOnDestroyTimeout:Z

    .line 1822
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mDestroyAfterTimeout:Ljava/lang/Runnable;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmTimeOut(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1824
    :goto_57
    return-void
.end method

.method private synthetic blacklist lambda$handleNext$0(Ljava/util/function/Consumer;)V
    .registers 2

    .line 1812
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->onTaskComplete(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$handleNext$1(Ljava/util/function/Consumer;)V
    .registers 4

    .line 1811
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mIBinder:Landroid/os/IBinder;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1812
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda6;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1813
    return-void
.end method

.method private synthetic blacklist lambda$handleNext$2(Ljava/util/concurrent/Future;Ljava/util/function/Consumer;)V
    .registers 3

    .line 1816
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->onTaskTimeout(Ljava/util/concurrent/Future;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist onBinderReceived(Landroid/os/IBinder;)V
    .registers 3

    .line 1774
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mIBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_5

    .line 1775
    return-void

    .line 1777
    :cond_5
    iput-object p1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mIBinder:Landroid/os/IBinder;

    .line 1778
    iget-object p1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mConnectionTimeout:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1779
    iget-object p1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda3;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1780
    return-void
.end method

.method private blacklist onConnectionTimeout()V
    .registers 2

    .line 1770
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-direct {p0, v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->onBinderReceived(Landroid/os/IBinder;)V

    .line 1771
    return-void
.end method

.method private blacklist onDestroyTimeout()V
    .registers 4

    .line 1846
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1847
    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->handleNext()V

    .line 1848
    return-void

    .line 1851
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmContext(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_16

    .line 1854
    goto :goto_1e

    .line 1852
    :catch_16
    move-exception v0

    .line 1853
    const-string v1, "AppWidgetManager"

    const-string v2, "Error unbinding the cached connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1855
    :goto_1e
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mBinderCallExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_27

    .line 1856
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mBinderCallExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1858
    :cond_27
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->this$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->-$$Nest$fgetmActiveConnections(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1859
    return-void
.end method

.method private blacklist onTaskComplete(Ljava/lang/Object;)V
    .registers 3

    .line 1794
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mCurrentTaskToken:Ljava/lang/Object;

    if-ne v0, p1, :cond_a

    .line 1795
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mCurrentTaskToken:Ljava/lang/Object;

    .line 1796
    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->handleNext()V

    .line 1798
    :cond_a
    return-void
.end method

.method private blacklist onTaskTimeout(Ljava/util/concurrent/Future;Ljava/lang/Object;)V
    .registers 5

    .line 1831
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1832
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mBinderCallExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1833
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mBinderCallExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1834
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1835
    if-eqz v0, :cond_14

    .line 1836
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1838
    :cond_14
    invoke-direct {p0, p2}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->onTaskComplete(Ljava/lang/Object;)V

    .line 1840
    :cond_17
    return-void
.end method


# virtual methods
.method blacklist add(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 1786
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1787
    iget-boolean p1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->mOnDestroyTimeout:Z

    if-eqz p1, :cond_c

    .line 1789
    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->handleNext()V

    .line 1791
    :cond_c
    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 3

    .line 1766
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 1767
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 1760
    invoke-direct {p0, p2}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->onBinderReceived(Landroid/os/IBinder;)V

    .line 1761
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 1783
    return-void
.end method
