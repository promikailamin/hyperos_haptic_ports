.class public Landroid/content/ComponentCallbacksController;
.super Ljava/lang/Object;
.source "ComponentCallbacksController.java"


# instance fields
.field private blacklist mComponentCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/ComponentCallbacksController;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist forAllComponentCallbacks(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/ComponentCallbacks;",
            ">;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Landroid/content/ComponentCallbacksController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_2a

    .line 121
    :cond_10
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Landroid/content/ComponentCallbacks;

    .line 122
    iget-object v3, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 123
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2c

    .line 124
    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v1, :cond_29

    aget-object v3, v2, v0

    .line 125
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 127
    :cond_29
    return-void

    .line 119
    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v0

    return-void

    .line 123
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method static synthetic blacklist lambda$dispatchConfigurationChanged$0(Landroid/content/res/Configuration;Landroid/content/ComponentCallbacks;)V
    .registers 2

    .line 92
    invoke-interface {p1, p0}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchTrimMemory$1(ILandroid/content/ComponentCallbacks;)V
    .registers 3

    .line 109
    instance-of v0, p1, Landroid/content/ComponentCallbacks2;

    if-eqz v0, :cond_9

    .line 110
    check-cast p1, Landroid/content/ComponentCallbacks2;

    invoke-interface {p1, p0}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    .line 112
    :cond_9
    return-void
.end method


# virtual methods
.method public blacklist clearCallbacks()V
    .registers 3

    .line 80
    iget-object v0, p0, Landroid/content/ComponentCallbacksController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_3
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    if-eqz v1, :cond_c

    .line 82
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 84
    :cond_c
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 92
    new-instance v0, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda2;-><init>(Landroid/content/res/Configuration;)V

    invoke-direct {p0, v0}, Landroid/content/ComponentCallbacksController;->forAllComponentCallbacks(Ljava/util/function/Consumer;)V

    .line 93
    return-void
.end method

.method public blacklist dispatchLowMemory()V
    .registers 2

    .line 100
    new-instance v0, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Landroid/content/ComponentCallbacksController;->forAllComponentCallbacks(Ljava/util/function/Consumer;)V

    .line 101
    return-void
.end method

.method public blacklist dispatchTrimMemory(I)V
    .registers 3

    .line 108
    new-instance v0, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/content/ComponentCallbacksController;->forAllComponentCallbacks(Ljava/util/function/Consumer;)V

    .line 113
    return-void
.end method

.method public blacklist registerCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 4

    .line 53
    iget-object v0, p0, Landroid/content/ComponentCallbacksController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_3
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    if-nez v1, :cond_e

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    .line 57
    :cond_e
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 58
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public blacklist unregisterCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 4

    .line 67
    iget-object v0, p0, Landroid/content/ComponentCallbacksController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_3
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_17

    .line 71
    :cond_10
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 69
    :cond_17
    :goto_17
    monitor-exit v0

    return-void

    .line 72
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method
