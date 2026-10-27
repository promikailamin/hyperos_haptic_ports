.class public Landroid/filterfw/core/FilterContext;
.super Ljava/lang/Object;
.source "FilterContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;
    }
.end annotation


# instance fields
.field private greylist-max-o mFrameManager:Landroid/filterfw/core/FrameManager;

.field private greylist-max-o mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

.field private greylist-max-o mGraphs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/filterfw/core/FilterGraph;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStoredFrames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/Frame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/FilterContext;->mGraphs:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method final greylist-max-o addGraph(Landroid/filterfw/core/FilterGraph;)V
    .registers 3

    .line 123
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGraphs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public declared-synchronized greylist-max-o fetchFrame(Ljava/lang/String;)Landroid/filterfw/core/Frame;
    .registers 3

    monitor-enter p0

    .line 81
    :try_start_1
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/filterfw/core/Frame;

    .line 82
    if-eqz p1, :cond_e

    .line 83
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->onFrameFetch()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 85
    :cond_e
    monitor-exit p0

    return-object p1

    .line 80
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public greylist getFrameManager()Landroid/filterfw/core/FrameManager;
    .registers 2

    .line 38
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    return-object v0
.end method

.method public greylist getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    return-object v0
.end method

.method public greylist-max-o initGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V
    .registers 3

    .line 59
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    if-nez v0, :cond_7

    .line 60
    iput-object p1, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 65
    return-void

    .line 62
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Attempting to re-initialize GL Environment for FilterContext!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized greylist-max-o removeFrame(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 89
    :try_start_1
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Frame;

    .line 90
    if-eqz v0, :cond_13

    .line 91
    iget-object v1, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 94
    :cond_13
    monitor-exit p0

    return-void

    .line 88
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public greylist-max-o setFrameManager(Landroid/filterfw/core/FrameManager;)V
    .registers 3

    .line 42
    if-eqz p1, :cond_18

    .line 44
    invoke-virtual {p1}, Landroid/filterfw/core/FrameManager;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v0

    if-nez v0, :cond_10

    .line 48
    iput-object p1, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    .line 49
    iget-object p1, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    invoke-virtual {p1, p0}, Landroid/filterfw/core/FrameManager;->setContext(Landroid/filterfw/core/FilterContext;)V

    .line 51
    return-void

    .line 45
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to set FrameManager which is already bound to another FilterContext!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_18
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Attempting to set null FrameManager!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized greylist-max-o storeFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .registers 4

    monitor-enter p0

    .line 72
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/filterfw/core/FilterContext;->fetchFrame(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_a

    .line 74
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 76
    :cond_a
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->onFrameStore()V

    .line 77
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 78
    monitor-exit p0

    return-void

    .line 71
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public declared-synchronized greylist-max-o tearDown()V
    .registers 3

    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/Frame;

    .line 99
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 100
    goto :goto_b

    .line 101
    :cond_1b
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 104
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGraphs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/FilterGraph;

    .line 105
    invoke-virtual {v1, p0}, Landroid/filterfw/core/FilterGraph;->tearDown(Landroid/filterfw/core/FilterContext;)V

    .line 106
    goto :goto_26

    .line 107
    :cond_36
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGraphs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 110
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    .line 111
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    invoke-virtual {v0}, Landroid/filterfw/core/FrameManager;->tearDown()V

    .line 112
    iput-object v1, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    .line 116
    :cond_47
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    if-eqz v0, :cond_52

    .line 117
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->tearDown()V

    .line 118
    iput-object v1, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_54

    .line 120
    :cond_52
    monitor-exit p0

    return-void

    .line 97
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method
