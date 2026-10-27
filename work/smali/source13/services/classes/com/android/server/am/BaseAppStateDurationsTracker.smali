.class abstract Lcom/android/server/am/BaseAppStateDurationsTracker;
.super Lcom/android/server/am/BaseAppStateEventsTracker;
.source "BaseAppStateDurationsTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;,
        Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;",
        "U:",
        "Lcom/android/server/am/BaseAppStateDurations;",
        ">",
        "Lcom/android/server/am/BaseAppStateEventsTracker<",
        "TT;TU;>;"
    }
.end annotation


# static fields
.field static final DEBUG_BASE_APP_STATE_DURATION_TRACKER:Z = false


# instance fields
.field final mUidStateDurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/server/am/AppRestrictionController;
    .param p4, "outerContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/am/AppRestrictionController;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/android/server/am/BaseAppStateTracker$Injector<",
            "TT;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    .local p3, "injector":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    .line 50
    return-void
.end method


# virtual methods
.method dumpEventLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/am/BaseAppStateDurations;J)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p4, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TU;J)V"
        }
    .end annotation

    .line 208
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    .local p3, "events":Lcom/android/server/am/BaseAppStateDurations;, "TU;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    iget v1, p3, Lcom/android/server/am/BaseAppStateDurations;->mUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    .line 209
    .local v0, "uidDurations":Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    const-string v1, "(bg only)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    const-string v1, "    "

    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_7c

    .line 215
    :cond_30
    invoke-virtual {p0, p3}, Lcom/android/server/am/BaseAppStateDurationsTracker;->createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateDurations;

    .line 216
    .local v3, "bgEvents":Lcom/android/server/am/BaseAppStateDurations;, "TU;"
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Lcom/android/server/am/BaseAppStateDurations;I)V

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4, p4, p5}, Lcom/android/server/am/BaseAppStateDurations;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    const-string v2, "(fg + bg)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v1, p4, p5}, Lcom/android/server/am/BaseAppStateDurations;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 221
    return-void

    .line 212
    .end local v3    # "bgEvents":Lcom/android/server/am/BaseAppStateDurations;, "TU;"
    :cond_7c
    :goto_7c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v1, p4, p5}, Lcom/android/server/am/BaseAppStateDurations;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 213
    return-void
.end method

.method bridge synthetic dumpEventLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/am/BaseAppStateEvents;J)V
    .registers 12

    .line 39
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    move-object v3, p3

    check-cast v3, Lcom/android/server/am/BaseAppStateDurations;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurationsTracker;->dumpEventLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/am/BaseAppStateDurations;J)V

    return-void
.end method

.method getTotalDurations(IJ)J
    .registers 6
    .param p1, "uid"    # I
    .param p2, "now"    # J

    .line 141
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method getTotalDurations(IJI)J
    .registers 11
    .param p1, "uid"    # I
    .param p2, "now"    # J
    .param p4, "index"    # I

    .line 137
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(IJIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method getTotalDurations(IJIZ)J
    .registers 10
    .param p1, "uid"    # I
    .param p2, "now"    # J
    .param p4, "index"    # I
    .param p5, "bgOnly"    # Z

    .line 121
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getUidEventsLocked(I)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurations;

    .line 123
    .local v1, "durations":Lcom/android/server/am/BaseAppStateDurations;, "TU;"
    if-nez v1, :cond_f

    .line 124
    const-wide/16 v2, 0x0

    monitor-exit v0

    return-wide v2

    .line 126
    :cond_f
    if-eqz p5, :cond_25

    .line 127
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    .line 128
    .local v2, "uidDurations":Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 129
    const/4 v3, 0x0

    invoke-virtual {v1, v2, p4, v3}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Lcom/android/server/am/BaseAppStateDurations;II)V

    .line 132
    .end local v2    # "uidDurations":Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;
    :cond_25
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurations(JI)J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    .line 133
    .end local v1    # "durations":Lcom/android/server/am/BaseAppStateDurations;, "TU;"
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method getTotalDurations(Ljava/lang/String;IJ)J
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "now"    # J

    .line 117
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(Ljava/lang/String;IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method getTotalDurations(Ljava/lang/String;IJI)J
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "now"    # J
    .param p5, "index"    # I

    .line 113
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(Ljava/lang/String;IJIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method getTotalDurations(Ljava/lang/String;IJIZ)J
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "now"    # J
    .param p5, "index"    # I
    .param p6, "bgOnly"    # Z

    .line 95
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurations;

    .line 97
    .local v1, "durations":Lcom/android/server/am/BaseAppStateDurations;, "TU;"
    if-nez v1, :cond_11

    .line 98
    const-wide/16 v2, 0x0

    monitor-exit v0

    return-wide v2

    .line 100
    :cond_11
    if-eqz p6, :cond_33

    .line 101
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    .line 102
    .local v2, "uidDurations":Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_33

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseAppStateDurationsTracker;->createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateDurations;

    .line 104
    .local v3, "res":Lcom/android/server/am/BaseAppStateDurations;, "TU;"
    const/4 v4, 0x0

    invoke-virtual {v3, v2, p5, v4}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Lcom/android/server/am/BaseAppStateDurations;II)V

    .line 105
    invoke-virtual {v3, p3, p4, p5}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurations(JI)J

    move-result-wide v4

    monitor-exit v0

    return-wide v4

    .line 108
    .end local v2    # "uidDurations":Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;
    .end local v3    # "res":Lcom/android/server/am/BaseAppStateDurations;, "TU;"
    :cond_33
    invoke-virtual {v1, p3, p4, p5}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurations(JI)J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    .line 109
    .end local v1    # "durations":Lcom/android/server/am/BaseAppStateDurations;, "TU;"
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method getTotalDurationsSince(IJJ)J
    .registers 13
    .param p1, "uid"    # I
    .param p2, "since"    # J
    .param p4, "now"    # J

    .line 193
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IJJI)J

    move-result-wide v0

    return-wide v0
.end method

.method getTotalDurationsSince(IJJI)J
    .registers 15
    .param p1, "uid"    # I
    .param p2, "since"    # J
    .param p4, "now"    # J
    .param p6, "index"    # I

    .line 189
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IJJIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method getTotalDurationsSince(IJJIZ)J
    .registers 16
    .param p1, "uid"    # I
    .param p2, "since"    # J
    .param p4, "now"    # J
    .param p6, "index"    # I
    .param p7, "bgOnly"    # Z

    .line 173
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getUidEventsLocked(I)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurations;

    .line 175
    .local v1, "durations":Lcom/android/server/am/BaseAppStateDurations;, "TU;"
    if-nez v1, :cond_f

    .line 176
    const-wide/16 v2, 0x0

    monitor-exit v0

    return-wide v2

    .line 178
    :cond_f
    if-eqz p7, :cond_25

    .line 179
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    .line 180
    .local v2, "uidDurations":Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 181
    const/4 v3, 0x0

    invoke-virtual {v1, v2, p6, v3}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Lcom/android/server/am/BaseAppStateDurations;II)V

    .line 184
    .end local v2    # "uidDurations":Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;
    :cond_25
    move-object v2, v1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(JJI)J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    .line 185
    .end local v1    # "durations":Lcom/android/server/am/BaseAppStateDurations;, "TU;"
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method getTotalDurationsSince(Ljava/lang/String;IJJ)J
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "since"    # J
    .param p5, "now"    # J

    .line 168
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(Ljava/lang/String;IJJI)J

    move-result-wide v0

    return-wide v0
.end method

.method getTotalDurationsSince(Ljava/lang/String;IJJI)J
    .registers 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "since"    # J
    .param p5, "now"    # J
    .param p7, "index"    # I

    .line 164
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(Ljava/lang/String;IJJIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method getTotalDurationsSince(Ljava/lang/String;IJJIZ)J
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "since"    # J
    .param p5, "now"    # J
    .param p7, "index"    # I
    .param p8, "bgOnly"    # Z

    .line 146
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    move-object v1, p0

    move/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/am/BaseAppStateDurationsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 147
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/BaseAppStateDurationsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_54

    move-object v4, p1

    :try_start_9
    invoke-virtual {v0, v2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseAppStateDurations;

    .line 148
    .local v0, "durations":Lcom/android/server/am/BaseAppStateDurations;, "TU;"
    if-nez v0, :cond_15

    .line 149
    const-wide/16 v5, 0x0

    monitor-exit v3

    return-wide v5

    .line 151
    :cond_15
    if-eqz p8, :cond_43

    .line 152
    iget-object v5, v1, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    .line 153
    .local v5, "uidDurations":Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;
    if-eqz v5, :cond_40

    invoke-virtual {v5}, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_40

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BaseAppStateDurations;
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_52

    .line 155
    .local v6, "res":Lcom/android/server/am/BaseAppStateDurations;, "TU;"
    const/4 v7, 0x0

    move/from16 v13, p7

    :try_start_30
    invoke-virtual {v6, v5, v13, v7}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Lcom/android/server/am/BaseAppStateDurations;II)V

    .line 156
    move-object v7, v6

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p7

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(JJI)J

    move-result-wide v7

    monitor-exit v3

    return-wide v7

    .line 153
    .end local v6    # "res":Lcom/android/server/am/BaseAppStateDurations;, "TU;"
    :cond_40
    move/from16 v13, p7

    goto :goto_45

    .line 151
    .end local v5    # "uidDurations":Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;
    :cond_43
    move/from16 v13, p7

    .line 159
    :goto_45
    move-object v5, v0

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(JJI)J

    move-result-wide v5

    monitor-exit v3

    return-wide v5

    .line 160
    .end local v0    # "durations":Lcom/android/server/am/BaseAppStateDurations;, "TU;"
    :catchall_52
    move-exception v0

    goto :goto_56

    :catchall_54
    move-exception v0

    move-object v4, p1

    :goto_56
    move/from16 v13, p7

    :goto_58
    monitor-exit v3
    :try_end_59
    .catchall {:try_start_30 .. :try_end_59} :catchall_5a

    throw v0

    :catchall_5a
    move-exception v0

    goto :goto_58
.end method

.method onUidGone(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 72
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    const/16 v0, 0x14

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->onUidProcStateChanged(II)V

    .line 73
    return-void
.end method

.method onUidProcStateChanged(II)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 54
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_11

    .line 57
    monitor-exit v0

    return-void

    .line 59
    :cond_11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateDurationsTracker;->onUidProcStateChangedUncheckedLocked(II)V

    .line 60
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    .line 61
    .local v1, "uidStateDurations":Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;
    if-nez v1, :cond_31

    .line 62
    new-instance v2, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    iget-object v3, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;

    invoke-direct {v2, p1, v3}, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;-><init>(ILcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    move-object v1, v2

    .line 63
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    :cond_31
    const/4 v2, 0x4

    if-ge p2, v2, :cond_36

    const/4 v2, 0x1

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    .line 66
    :goto_37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 65
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;->addEvent(ZJ)V

    .line 67
    .end local v1    # "uidStateDurations":Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method onUntrackingUidLocked(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 91
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 92
    return-void
.end method

.method reset()V
    .registers 3

    .line 199
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateEventsTracker;->reset()V

    .line 200
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 202
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method trimLocked(J)V
    .registers 6
    .param p1, "earliest"    # J

    .line 78
    .local p0, "this":Lcom/android/server/am/BaseAppStateDurationsTracker;, "Lcom/android/server/am/BaseAppStateDurationsTracker<TT;TU;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;->trimLocked(J)V

    .line 79
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_26

    .line 80
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    .line 81
    .local v1, "u":Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;->trim(J)V

    .line 82
    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 83
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 79
    .end local v1    # "u":Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 86
    .end local v0    # "i":I
    :cond_26
    return-void
.end method
