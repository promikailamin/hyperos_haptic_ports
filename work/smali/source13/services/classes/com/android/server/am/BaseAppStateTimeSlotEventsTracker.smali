.class abstract Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;
.super Lcom/android/server/am/BaseAppStateEventsTracker;
.source "BaseAppStateTimeSlotEventsTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;,
        Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;,
        Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;",
        "U:",
        "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;",
        ">",
        "Lcom/android/server/am/BaseAppStateEventsTracker<",
        "TT;TU;>;"
    }
.end annotation


# static fields
.field static final DEBUG_APP_STATE_TIME_SLOT_EVENT_TRACKER:Z = false

.field static final TAG:Ljava/lang/String; = "BaseAppStateTimeSlotEventsTracker"


# instance fields
.field private mHandler:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;

.field private final mTmpPkgs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "TU;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mtrimEvents(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->trimEvents()V

    return-void
.end method

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

    .line 73
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker<TT;TU;>;"
    .local p3, "injector":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/server/am/BaseAppStateTracker$Injector<TT;>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mTmpPkgs:Landroid/util/ArrayMap;

    .line 74
    new-instance v0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;-><init>(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;)V

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mHandler:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;

    .line 75
    return-void
.end method

.method private trimEvents()V
    .registers 7

    .line 146
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker<TT;TU;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 147
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->getMaxTrackingDuration()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->trim(J)V

    .line 148
    return-void
.end method


# virtual methods
.method getTotalEventsLocked(IJ)I
    .registers 6
    .param p1, "uid"    # I
    .param p2, "now"    # J

    .line 138
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker<TT;TU;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->getUidEventsLocked(I)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    .line 139
    .local v0, "events":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;, "TU;"
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 140
    return v1

    .line 142
    :cond_a
    invoke-virtual {v0, p2, p3, v1}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;->getTotalEvents(JI)I

    move-result v1

    return v1
.end method

.method handleNewEvent(Ljava/lang/String;I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 82
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker<TT;TU;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->shouldExempt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 83
    return-void

    .line 85
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 86
    .local v0, "now":J
    const/4 v2, 0x0

    .line 88
    .local v2, "notify":Z
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 89
    :try_start_18
    iget-object v4, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    .line 90
    .local v4, "pkgEvents":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;, "TU;"
    if-nez v4, :cond_2e

    .line 91
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    move-object v4, v5

    .line 92
    iget-object v5, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v5, p2, p1, v4}, Lcom/android/server/am/UidProcessMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_2e
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;->addEvent(JI)V

    .line 95
    invoke-virtual {v4, v0, v1, v5}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;->getTotalEvents(JI)I

    move-result v6

    move v8, v6

    .line 96
    .local v8, "totalEvents":I
    iget-object v6, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    invoke-virtual {v6}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->getNumOfEventsThreshold()I

    move-result v6
    :try_end_43
    .catchall {:try_start_18 .. :try_end_43} :catchall_5d

    if-lt v8, v6, :cond_46

    const/4 v5, 0x1

    :cond_46
    move v9, v5

    .line 97
    .end local v2    # "notify":Z
    .end local v4    # "pkgEvents":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;, "TU;"
    .local v9, "notify":Z
    :try_start_47
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_5a

    .line 98
    if-eqz v9, :cond_59

    .line 99
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    move-object v3, p1

    move v4, p2

    move v5, v8

    move-wide v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->onExcessiveEvents(Ljava/lang/String;IIJ)V

    .line 102
    :cond_59
    return-void

    .line 97
    .end local v8    # "totalEvents":I
    :catchall_5a
    move-exception v4

    move v2, v9

    goto :goto_5e

    .end local v9    # "notify":Z
    .restart local v2    # "notify":Z
    :catchall_5d
    move-exception v4

    :goto_5e
    :try_start_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v4
.end method

.method onMonitorEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 105
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker<TT;TU;>;"
    if-nez p1, :cond_f

    .line 106
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/UidProcessMap;->clear()V

    .line 108
    monitor-exit v0

    goto :goto_f

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1

    .line 110
    :cond_f
    :goto_f
    return-void
.end method

.method onNewEvent(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 78
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker<TT;TU;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mHandler:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1, p1}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 79
    return-void
.end method

.method onNumOfEventsThresholdChanged(I)V
    .registers 13
    .param p1, "threshold"    # I

    .line 113
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker<TT;TU;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 114
    .local v6, "now":J
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v1

    .line 116
    .local v1, "pkgEvents":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;TU;>;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_3f

    .line 117
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 118
    .local v3, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TU;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_21
    if-ltz v4, :cond_3c

    .line 119
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    .line 120
    .local v5, "pkg":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;, "TU;"
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;->getTotalEvents(JI)I

    move-result v8

    .line 122
    .local v8, "totalEvents":I
    if-lt v8, p1, :cond_39

    .line 123
    iget-object v9, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mTmpPkgs:Landroid/util/ArrayMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .end local v5    # "pkg":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;, "TU;"
    .end local v8    # "totalEvents":I
    :cond_39
    add-int/lit8 v4, v4, -0x1

    goto :goto_21

    .line 116
    .end local v3    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TU;>;"
    .end local v4    # "j":I
    :cond_3c
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 127
    .end local v1    # "pkgEvents":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;TU;>;>;"
    .end local v2    # "i":I
    :cond_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_79

    .line 128
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mTmpPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    .local v8, "i":I
    :goto_49
    if-ltz v8, :cond_73

    .line 129
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mTmpPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    .line 130
    .local v9, "pkg":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;, "TU;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    iget-object v1, v9, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;->mPackageName:Ljava/lang/String;

    iget v2, v9, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;->mUid:I

    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mTmpPkgs:Landroid/util/ArrayMap;

    .line 131
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 130
    move-wide v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->onExcessiveEvents(Ljava/lang/String;IIJ)V

    .line 128
    .end local v9    # "pkg":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;, "TU;"
    add-int/lit8 v8, v8, -0x1

    goto :goto_49

    .line 133
    .end local v8    # "i":I
    :cond_73
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mTmpPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 134
    return-void

    .line 127
    :catchall_79
    move-exception v1

    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v1
.end method

.method onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 152
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker<TT;TU;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->onUserInteractionStarted(Ljava/lang/String;I)V

    .line 153
    return-void
.end method
