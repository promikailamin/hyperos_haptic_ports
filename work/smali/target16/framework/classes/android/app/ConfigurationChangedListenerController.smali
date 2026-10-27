.class Landroid/app/ConfigurationChangedListenerController;
.super Ljava/lang/Object;
.source "ConfigurationChangedListenerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ConfigurationChangedListenerController$ListenerContainer;
    }
.end annotation


# instance fields
.field private final blacklist mListenerContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ConfigurationChangedListenerController$ListenerContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ConfigurationChangedListenerController;->mLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ConfigurationChangedListenerController;->mListenerContainers:Ljava/util/List;

    return-void
.end method

.method private blacklist indexOf(Ljava/util/function/Consumer;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)I"
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/app/ConfigurationChangedListenerController;->mListenerContainers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 89
    iget-object v1, p0, Landroid/app/ConfigurationChangedListenerController;->mListenerContainers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;

    invoke-virtual {v1, p1}, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;->isMatch(Ljava/util/function/Consumer;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 90
    return v0

    .line 88
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_1b
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method blacklist addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Landroid/app/ConfigurationChangedListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_3
    invoke-direct {p0, p2}, Landroid/app/ConfigurationChangedListenerController;->indexOf(Ljava/util/function/Consumer;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_c

    .line 53
    monitor-exit v0

    return-void

    .line 55
    :cond_c
    iget-object v1, p0, Landroid/app/ConfigurationChangedListenerController;->mListenerContainers:Ljava/util/List;

    new-instance v2, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;

    invoke-direct {v2, p1, p2}, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 56
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method blacklist dispatchOnConfigurationChanged(Landroid/os/IBinder;)V
    .registers 5

    .line 78
    iget-object v0, p0, Landroid/app/ConfigurationChangedListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ConfigurationChangedListenerController;->mListenerContainers:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1f

    .line 81
    const/4 v0, 0x0

    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 82
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;

    invoke-virtual {v2, p1}, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;->accept(Landroid/os/IBinder;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 84
    :cond_1e
    return-void

    .line 80
    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method blacklist removeListener(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Landroid/app/ConfigurationChangedListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_3
    invoke-direct {p0, p1}, Landroid/app/ConfigurationChangedListenerController;->indexOf(Ljava/util/function/Consumer;)I

    move-result p1

    .line 66
    const/4 v1, -0x1

    if-le p1, v1, :cond_f

    .line 67
    iget-object v1, p0, Landroid/app/ConfigurationChangedListenerController;->mListenerContainers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 69
    :cond_f
    monitor-exit v0

    .line 70
    return-void

    .line 69
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method
