.class public Landroid/app/jank/StateTracker;
.super Ljava/lang/Object;
.source "StateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/jank/StateTracker$StateData;
    }
.end annotation


# static fields
.field protected static final blacklist MAX_CONCURRENT_STATE_COUNT:I = 0x19

.field private static final blacklist MAX_POOL_SIZE:I = 0x1f4

.field protected static final blacklist MAX_PREVIOUSLY_ACTIVE_STATE_COUNT:I = 0x3e8


# instance fields
.field private blacklist mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mChoreographer:Landroid/view/Choreographer;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mPreviousStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStateDataObjectPool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/view/Choreographer;)V
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/jank/StateTracker;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/app/jank/StateTracker;->mStateDataObjectPool:Landroid/util/Pools$SimplePool;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/jank/StateTracker;->mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    iput-object p1, p0, Landroid/app/jank/StateTracker;->mChoreographer:Landroid/view/Choreographer;

    .line 61
    return-void
.end method


# virtual methods
.method public blacklist addPendingStateData(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;)V"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Landroid/app/jank/StateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_3
    iget-object v1, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 180
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public blacklist getStateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist putState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 118
    iget-object v0, p0, Landroid/app/jank/StateTracker;->mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0x19

    if-lt v0, v1, :cond_b

    return-void

    .line 120
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/jank/StateTracker;->getStateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Landroid/app/jank/StateTracker;->mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    return-void

    .line 127
    :cond_18
    iget-object v1, p0, Landroid/app/jank/StateTracker;->mStateDataObjectPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/jank/StateTracker$StateData;

    .line 128
    if-nez v1, :cond_27

    .line 129
    new-instance v1, Landroid/app/jank/StateTracker$StateData;

    invoke-direct {v1}, Landroid/app/jank/StateTracker$StateData;-><init>()V

    .line 131
    :cond_27
    iget-object v2, p0, Landroid/app/jank/StateTracker;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v2}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/jank/StateTracker$StateData;->mVsyncIdStart:J

    .line 132
    iput-object v0, v1, Landroid/app/jank/StateTracker$StateData;->mStateDataKey:Ljava/lang/String;

    .line 133
    iput-object p3, v1, Landroid/app/jank/StateTracker$StateData;->mWidgetState:Ljava/lang/String;

    .line 134
    iput-object p1, v1, Landroid/app/jank/StateTracker$StateData;->mWidgetCategory:Ljava/lang/String;

    .line 135
    iput-object p2, v1, Landroid/app/jank/StateTracker$StateData;->mWidgetId:Ljava/lang/String;

    .line 136
    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, v1, Landroid/app/jank/StateTracker$StateData;->mVsyncIdEnd:J

    .line 137
    iget-object p1, p0, Landroid/app/jank/StateTracker;->mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public blacklist removeState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 89
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/jank/StateTracker;->getStateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    iget-object p2, p0, Landroid/app/jank/StateTracker;->mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/jank/StateTracker$StateData;

    .line 96
    if-nez p1, :cond_f

    return-void

    .line 98
    :cond_f
    iget-object p2, p0, Landroid/app/jank/StateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 99
    :try_start_12
    iget-object p3, p0, Landroid/app/jank/StateTracker;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p3}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/app/jank/StateTracker$StateData;->mVsyncIdEnd:J

    .line 102
    iget-object p3, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/16 v0, 0x3e8

    if-ge p3, v0, :cond_29

    .line 103
    iget-object p3, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_29
    monitor-exit p2

    .line 106
    return-void

    .line 105
    :catchall_2b
    move-exception p1

    monitor-exit p2
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public blacklist retrieveAllStates(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;)V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landroid/app/jank/StateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    iget-object v1, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 149
    iget-object v1, p0, Landroid/app/jank/StateTracker;->mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public blacklist stateProcessingComplete()V
    .registers 5

    .line 158
    iget-object v0, p0, Landroid/app/jank/StateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-object v1, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_26

    .line 160
    iget-object v2, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/jank/StateTracker$StateData;

    .line 161
    iget-boolean v3, v2, Landroid/app/jank/StateTracker$StateData;->mProcessed:Z

    if-eqz v3, :cond_23

    .line 162
    iget-object v3, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 163
    iget-object v3, p0, Landroid/app/jank/StateTracker;->mStateDataObjectPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v3, v2}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 159
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 166
    :cond_26
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public blacklist updateState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/jank/StateTracker;->removeState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1, p2, p4}, Landroid/app/jank/StateTracker;->putState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method
