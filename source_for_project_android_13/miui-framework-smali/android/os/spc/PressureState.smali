.class public Landroid/os/spc/PressureState;
.super Ljava/lang/Object;
.source "PressureState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/spc/PressureState$PressureListener;,
        Landroid/os/spc/PressureState$State;
    }
.end annotation


# static fields
.field public static final blacklist NS_PER_MS:J = 0xf4240L


# instance fields
.field private blacklist mCurState:Landroid/os/spc/PressureState$State;

.field private blacklist mEventQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/os/spc/PSIEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mListener:Landroid/os/spc/PressureState$PressureListener;

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mPressureStallDurationMillis:J

.field private final blacklist mPressureThreshold:J

.field private final blacklist mQueueLock:Ljava/lang/Object;

.field private final blacklist mWindowNs:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;JJ)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "windowNs"    # J
    .param p4, "thresholdMs"    # J

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/spc/PressureState;->mListener:Landroid/os/spc/PressureState$PressureListener;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/spc/PressureState;->mQueueLock:Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/spc/PressureState;->mEventQueue:Ljava/util/LinkedList;

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    .line 25
    sget-object v0, Landroid/os/spc/PressureState$State;->NON_PRESSURE:Landroid/os/spc/PressureState$State;

    iput-object v0, p0, Landroid/os/spc/PressureState;->mCurState:Landroid/os/spc/PressureState$State;

    .line 32
    iput-object p1, p0, Landroid/os/spc/PressureState;->mName:Ljava/lang/String;

    .line 33
    iput-wide p2, p0, Landroid/os/spc/PressureState;->mWindowNs:J

    .line 34
    iput-wide p4, p0, Landroid/os/spc/PressureState;->mPressureThreshold:J

    .line 35
    return-void
.end method

.method private blacklist pruneLatencyEvents(J)V
    .registers 11
    .param p1, "currentTimeNS"    # J

    .line 66
    iget-object v0, p0, Landroid/os/spc/PressureState;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 67
    return-void

    .line 69
    :cond_9
    iget-object v0, p0, Landroid/os/spc/PressureState;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 70
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/spc/PSIEvent;>;"
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/spc/PSIEvent;

    .line 72
    .local v1, "ev":Landroid/os/spc/PSIEvent;
    iget-wide v2, p0, Landroid/os/spc/PressureState;->mWindowNs:J

    sub-long v2, p1, v2

    iget-wide v4, v1, Landroid/os/spc/PSIEvent;->timeNs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_33

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 74
    iget-wide v2, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    iget-wide v4, v1, Landroid/os/spc/PSIEvent;->growthNs:J

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    .line 76
    .end local v1    # "ev":Landroid/os/spc/PSIEvent;
    :cond_33
    goto :goto_f

    .line 77
    :cond_34
    return-void
.end method

.method private blacklist updateCurrentState()V
    .registers 7

    .line 80
    sget-boolean v0, Landroid/os/spc/PSIMonitorSetting;->DEBUG:Z

    if-eqz v0, :cond_2d

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-wide v2, Landroid/os/spc/PressureStateSettings;->MEM_PRESSURE_WINDOW_NS:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/os/spc/PressureState;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s last %s ms mPressureStallDurationMillis:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemPressureControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2d
    iget-object v0, p0, Landroid/os/spc/PressureState;->mCurState:Landroid/os/spc/PressureState$State;

    .line 84
    .local v0, "preState":Landroid/os/spc/PressureState$State;
    iget-wide v1, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    iget-wide v3, p0, Landroid/os/spc/PressureState;->mPressureThreshold:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3c

    .line 85
    sget-object v1, Landroid/os/spc/PressureState$State;->NON_PRESSURE:Landroid/os/spc/PressureState$State;

    iput-object v1, p0, Landroid/os/spc/PressureState;->mCurState:Landroid/os/spc/PressureState$State;

    goto :goto_40

    .line 87
    :cond_3c
    sget-object v1, Landroid/os/spc/PressureState$State;->HIGH_PRESSURE:Landroid/os/spc/PressureState$State;

    iput-object v1, p0, Landroid/os/spc/PressureState;->mCurState:Landroid/os/spc/PressureState$State;

    .line 90
    :goto_40
    iget-object v1, p0, Landroid/os/spc/PressureState;->mCurState:Landroid/os/spc/PressureState$State;

    if-eq v1, v0, :cond_4b

    iget-object v2, p0, Landroid/os/spc/PressureState;->mListener:Landroid/os/spc/PressureState$PressureListener;

    if-eqz v2, :cond_4b

    .line 91
    invoke-interface {v2, v1, v0}, Landroid/os/spc/PressureState$PressureListener;->onStateChanged(Landroid/os/spc/PressureState$State;Landroid/os/spc/PressureState$State;)V

    .line 93
    :cond_4b
    return-void
.end method


# virtual methods
.method public blacklist addPSIEvent(Landroid/os/spc/PSIEvent;)V
    .registers 9
    .param p1, "ev"    # Landroid/os/spc/PSIEvent;

    .line 46
    if-nez p1, :cond_3

    .line 47
    return-void

    .line 49
    :cond_3
    iget-object v0, p0, Landroid/os/spc/PressureState;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_6
    iget-object v1, p0, Landroid/os/spc/PressureState;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-wide v1, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    iget-wide v3, p1, Landroid/os/spc/PSIEvent;->growthNs:J

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    .line 52
    iget-wide v1, p1, Landroid/os/spc/PSIEvent;->timeNs:J

    invoke-direct {p0, v1, v2}, Landroid/os/spc/PressureState;->pruneLatencyEvents(J)V

    .line 53
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_20

    .line 54
    invoke-direct {p0}, Landroid/os/spc/PressureState;->updateCurrentState()V

    .line 55
    return-void

    .line 53
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public blacklist clearPSIEvents()V
    .registers 4

    .line 58
    iget-object v0, p0, Landroid/os/spc/PressureState;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    const-wide/16 v1, 0x0

    :try_start_5
    iput-wide v1, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    .line 60
    iget-object v1, p0, Landroid/os/spc/PressureState;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 61
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    .line 62
    invoke-direct {p0}, Landroid/os/spc/PressureState;->updateCurrentState()V

    .line 63
    return-void

    .line 61
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Landroid/os/spc/PressureState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setListener(Landroid/os/spc/PressureState$PressureListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/os/spc/PressureState$PressureListener;

    .line 42
    iput-object p1, p0, Landroid/os/spc/PressureState;->mListener:Landroid/os/spc/PressureState$PressureListener;

    .line 43
    return-void
.end method
