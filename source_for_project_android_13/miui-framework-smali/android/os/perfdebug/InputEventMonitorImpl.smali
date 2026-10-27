.class public Landroid/os/perfdebug/InputEventMonitorImpl;
.super Landroid/os/perfdebug/InputEventMonitor;
.source "InputEventMonitorImpl.java"


# static fields
.field private static final blacklist INPUT_DELAY_TIMEOUT:I = 0x1388

.field private static final blacklist INPUT_DISPATCH_TIMEOUT:I = 0x1388

.field private static final blacklist TAG:Ljava/lang/String; = "InputEventMonitor"

.field private static final blacklist TRACK_INTERVAL:J = 0xea60L


# instance fields
.field private blacklist mDispatchBeginTime:J

.field private blacklist mDispatchSeqNumber:I

.field private blacklist mKeyEventBeginTime:J

.field private blacklist mKeyPreImeEventBeginTime:J

.field private blacklist mLastTrackInputDelayMs:J

.field private blacklist mPointEventBeginTime:J

.field private blacklist mTrackInputDispatchMs:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Landroid/os/perfdebug/InputEventMonitor;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/perfdebug/InputEventMonitorImpl;->mLastTrackInputDelayMs:J

    .line 45
    iput-wide v0, p0, Landroid/os/perfdebug/InputEventMonitorImpl;->mTrackInputDispatchMs:J

    return-void
.end method

.method private blacklist currentPackageName()Ljava/lang/String;
    .registers 2

    .line 143
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 144
    const-string v0, "system_server"

    return-object v0

    .line 146
    :cond_9
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist inputEventToString(Landroid/view/InputEvent;)Ljava/lang/String;
    .registers 7
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 152
    const-string v0, ""

    .line 153
    .local v0, "keyCode":Ljava/lang/String;
    const-string v1, ""

    .line 154
    .local v1, "action":Ljava/lang/String;
    instance-of v2, p1, Landroid/view/KeyEvent;

    if-eqz v2, :cond_1d

    .line 155
    move-object v2, p1

    check-cast v2, Landroid/view/KeyEvent;

    .line 156
    .local v2, "keyEvent":Landroid/view/KeyEvent;
    const/4 v3, 0x0

    .line 157
    .local v3, "touchKey":Z
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    .end local v2    # "keyEvent":Landroid/view/KeyEvent;
    goto :goto_2e

    .end local v3    # "touchKey":Z
    :cond_1d
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_67

    .line 160
    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    .line 161
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    const/4 v3, 0x1

    .line 162
    .restart local v3    # "touchKey":Z
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    nop

    .line 166
    :goto_2e
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 167
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v4, " type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    if-eqz v3, :cond_3f

    const-string v4, "motion"

    goto :goto_41

    :cond_3f
    const-string v4, "key"

    :goto_41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v4, " seq="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    if-nez v3, :cond_5a

    .line 172
    const-string v4, " code="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_5a
    const-string v4, " action="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 164
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "touchKey":Z
    :cond_67
    const-string v2, ""

    return-object v2
.end method

.method private blacklist trackInputDelayTimeout(J)V
    .registers 10
    .param p1, "latency"    # J

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 71
    .local v0, "now":J
    iget-wide v2, p0, Landroid/os/perfdebug/InputEventMonitorImpl;->mLastTrackInputDelayMs:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gez v2, :cond_10

    return-void

    .line 72
    :cond_10
    iput-wide v0, p0, Landroid/os/perfdebug/InputEventMonitorImpl;->mLastTrackInputDelayMs:J

    .line 73
    invoke-direct {p0}, Landroid/os/perfdebug/InputEventMonitorImpl;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Lmiui/mqsas/sdk/event/GeneralExceptionEvent;

    invoke-direct {v3}, Lmiui/mqsas/sdk/event/GeneralExceptionEvent;-><init>()V

    .line 76
    .local v3, "event":Lmiui/mqsas/sdk/event/GeneralExceptionEvent;
    const/16 v4, 0x1b5

    invoke-virtual {v3, v4}, Lmiui/mqsas/sdk/event/GeneralExceptionEvent;->setType(I)V

    .line 77
    invoke-virtual {v3, v2}, Lmiui/mqsas/sdk/event/GeneralExceptionEvent;->setPackageName(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lmiui/mqsas/sdk/event/GeneralExceptionEvent;->setTimeStamp(J)V

    .line 79
    const-string v4, "input delay timeout"

    invoke-virtual {v3, v4}, Lmiui/mqsas/sdk/event/GeneralExceptionEvent;->setSummary(Ljava/lang/String;)V

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "latency="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/mqsas/sdk/event/GeneralExceptionEvent;->setDetails(Ljava/lang/String;)V

    .line 81
    long-to-int v4, p1

    invoke-virtual {v3, v4}, Lmiui/mqsas/sdk/event/GeneralExceptionEvent;->setPid(I)V

    .line 82
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v4

    invoke-virtual {v4, v3}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportGeneralException(Lmiui/mqsas/sdk/event/GeneralExceptionEvent;)V

    .line 84
    new-instance v4, Lcom/miui/misight/MiEvent;

    const v5, 0x35b436fe

    invoke-direct {v4, v5}, Lcom/miui/misight/MiEvent;-><init>(I)V

    .line 85
    .local v4, "miEvent":Lcom/miui/misight/MiEvent;
    const-string v5, "PackageName"

    invoke-virtual {v4, v5, v2}, Lcom/miui/misight/MiEvent;->addStr(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/misight/MiEvent;

    .line 86
    long-to-int v5, p1

    const-string v6, "Duration"

    invoke-virtual {v4, v6, v5}, Lcom/miui/misight/MiEvent;->addInt(Ljava/lang/String;I)Lcom/miui/misight/MiEvent;

    .line 87
    invoke-static {v4}, Lcom/miui/misight/MiSight;->sendEvent(Lcom/miui/misight/MiEvent;)V

    .line 88
    return-void
.end method

.method private blacklist trackInputDispatchTimeout(J)V
    .registers 10
    .param p1, "latency"    # J

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 123
    .local v0, "now":J
    iget-wide v2, p0, Landroid/os/perfdebug/InputEventMonitorImpl;->mTrackInputDispatchMs:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gez v2, :cond_10

    return-void

    .line 124
    :cond_10
    iput-wide v0, p0, Landroid/os/perfdebug/InputEventMonitorImpl;->mTrackInputDispatchMs:J

    .line 125
    invoke-direct {p0}, Landroid/os/perfdebug/InputEventMonitorImpl;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Lmiui/mqsas/sdk/event/GeneralExceptionEvent;

    invoke-direct {v3}, Lmiui/mqsas/sdk/event/GeneralExceptionEvent;-><init>()V

    .line 128
    .local v3, "event":Lmiui/mqsas/sdk/event/GeneralExceptionEvent;
    const/16 v4, 0x1b6

    invoke-virtual {v3, v4}, Lmiui/mqsas/sdk/event/GeneralExceptionEvent;->setType(I)V

    .line 129
    invoke-virtual {v3, v2}, Lmiui/mqsas/sdk/event/GeneralExceptionEvent;->setPackageName(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lmiui/mqsas/sdk/event/GeneralExceptionEvent;->setTimeStamp(J)V

    .line 131
    const-string v4, "input dispatch timeout"

    invoke-virtual {v3, v4}, Lmiui/mqsas/sdk/event/GeneralExceptionEvent;->setSummary(Ljava/lang/String;)V

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "latency="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/mqsas/sdk/event/GeneralExceptionEvent;->setDetails(Ljava/lang/String;)V

    .line 133
    long-to-int v4, p1

    invoke-virtual {v3, v4}, Lmiui/mqsas/sdk/event/GeneralExceptionEvent;->setPid(I)V

    .line 134
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v4

    invoke-virtual {v4, v3}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportGeneralException(Lmiui/mqsas/sdk/event/GeneralExceptionEvent;)V

    .line 136
    new-instance v4, Lcom/miui/misight/MiEvent;

    const v5, 0x35b436ff

    invoke-direct {v4, v5}, Lcom/miui/misight/MiEvent;-><init>(I)V

    .line 137
    .local v4, "miEvent":Lcom/miui/misight/MiEvent;
    const-string v5, "PackageName"

    invoke-virtual {v4, v5, v2}, Lcom/miui/misight/MiEvent;->addStr(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/misight/MiEvent;

    .line 138
    long-to-int v5, p1

    const-string v6, "Duration"

    invoke-virtual {v4, v6, v5}, Lcom/miui/misight/MiEvent;->addInt(Ljava/lang/String;I)Lcom/miui/misight/MiEvent;

    .line 139
    invoke-static {v4}, Lcom/miui/misight/MiSight;->sendEvent(Lcom/miui/misight/MiEvent;)V

    .line 140
    return-void
.end method


# virtual methods
.method public blacklist markViewInterceptTouchEventBegin(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 386
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 387
    const-wide/16 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 388
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 390
    :cond_26
    return-void
.end method

.method public blacklist markViewInterceptTouchEventEnd()V
    .registers 3

    .line 397
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 398
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 400
    :cond_b
    return-void
.end method

.method public blacklist markViewTouchEventBegin(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 410
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 411
    const-wide/16 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 412
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 411
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 414
    :cond_26
    return-void
.end method

.method public blacklist markViewTouchEventEnd()V
    .registers 3

    .line 421
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 422
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 424
    :cond_b
    return-void
.end method

.method public blacklist monitorDispatchInputEvent(Landroid/view/InputEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/InputEventMonitorImpl;->mDispatchBeginTime:J

    .line 61
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v0

    iput v0, p0, Landroid/os/perfdebug/InputEventMonitorImpl;->mDispatchSeqNumber:I

    .line 63
    iget-wide v0, p0, Landroid/os/perfdebug/InputEventMonitorImpl;->mDispatchBeginTime:J

    invoke-virtual {p1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 64
    .local v0, "latency":J
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-lez v2, :cond_1c

    .line 65
    invoke-direct {p0, v0, v1}, Landroid/os/perfdebug/InputEventMonitorImpl;->trackInputDelayTimeout(J)V

    .line 67
    :cond_1c
    return-void
.end method

.method public blacklist monitorDispatchKeyEventBegin(Landroid/view/KeyEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 256
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 257
    const-wide/16 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKeyEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 258
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 262
    :cond_26
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/InputEventMonitorImpl;->mKeyEventBeginTime:J

    .line 265
    :cond_32
    return-void
.end method

.method public blacklist monitorDispatchKeyEventEnd(Landroid/view/KeyEvent;Ljava/lang/String;)V
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 276
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 277
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 281
    :cond_b
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/perfdebug/InputEventMonitorImpl;->mKeyEventBeginTime:J

    sub-long/2addr v0, v2

    .line 283
    .local v0, "monitorTime":J
    sget v2, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THRESHOLD_INPUT_PROCESS_MS:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_20

    .line 284
    return-void

    .line 286
    :cond_20
    sget v2, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_VERSION:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_73

    .line 287
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const v3, 0x35c37552

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    const-string v4, "dispatchKeyEvent"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSequenceNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-static {v3, v2}, Landroid/os/perfdebug/PerfJsonEventUtils;->writeEvent(ILjava/util/List;)V

    .line 297
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_a9

    .line 298
    :cond_73
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 299
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "PerfMonitor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v3, " dispatchKeyEvent : time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 302
    const-string v3, "ms seq "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSequenceNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    const-string v3, ". The pachage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v3, " may be doing too much work on its dispatch key event."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputEventMonitor"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v0    # "monitorTime":J
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_a9
    :goto_a9
    return-void
.end method

.method public blacklist monitorDispatchKeyEventPreImeBegin(Landroid/view/KeyEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 322
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 323
    const-wide/16 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKeyEventPreIme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 324
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 328
    :cond_26
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/InputEventMonitorImpl;->mKeyPreImeEventBeginTime:J

    .line 331
    :cond_32
    return-void
.end method

.method public blacklist monitorDispatchKeyEventPreImeEnd(Landroid/view/KeyEvent;Ljava/lang/String;)V
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 342
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 343
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 347
    :cond_b
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/perfdebug/InputEventMonitorImpl;->mKeyPreImeEventBeginTime:J

    sub-long/2addr v0, v2

    .line 349
    .local v0, "monitorTime":J
    sget v2, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THRESHOLD_INPUT_PROCESS_MS:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_20

    .line 350
    return-void

    .line 352
    :cond_20
    sget v2, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_VERSION:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_73

    .line 353
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const v3, 0x35c37552

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    const-string v4, "dispatchKeyEventPreIme"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSequenceNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-static {v3, v2}, Landroid/os/perfdebug/PerfJsonEventUtils;->writeEvent(ILjava/util/List;)V

    .line 363
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_a9

    .line 364
    :cond_73
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 365
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "PerfMonitor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v3, " dispatchKeyEventPreIme : time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 368
    const-string v3, "ms seq "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSequenceNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    const-string v3, ". The pachage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v3, " may be doing too much work on its dispatch key pre-ime event."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputEventMonitor"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .end local v0    # "monitorTime":J
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_a9
    :goto_a9
    return-void
.end method

.method public blacklist monitorDispatchPointerEventBegin(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 190
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 191
    const-wide/16 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchPointerEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 196
    :cond_26
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/InputEventMonitorImpl;->mPointEventBeginTime:J

    .line 199
    :cond_32
    return-void
.end method

.method public blacklist monitorDispatchPointerEventEnd(Landroid/view/MotionEvent;Ljava/lang/String;)V
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 210
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceInput()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 211
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 215
    :cond_b
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/perfdebug/InputEventMonitorImpl;->mPointEventBeginTime:J

    sub-long/2addr v0, v2

    .line 217
    .local v0, "monitorTime":J
    sget v2, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THRESHOLD_INPUT_PROCESS_MS:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_20

    .line 218
    return-void

    .line 220
    :cond_20
    sget v2, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_VERSION:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_73

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const v3, 0x35c37552

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v4, "dispatchPointerEvent"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSequenceNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-static {v3, v2}, Landroid/os/perfdebug/PerfJsonEventUtils;->writeEvent(ILjava/util/List;)V

    .line 231
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_a9

    .line 232
    :cond_73
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 233
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "PerfMonitor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v3, " dispatchPointerEvent : time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 236
    const-string v3, "ms seq "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSequenceNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    const-string v3, ". The pachage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v3, " may be doing too much work on its dispatch pointer event."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputEventMonitor"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v0    # "monitorTime":J
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_a9
    :goto_a9
    return-void
.end method

.method public blacklist monitorFinishInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V
    .registers 9
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "inputEventReceiver"    # Landroid/view/InputEventReceiver;

    .line 98
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v0

    iget v1, p0, Landroid/os/perfdebug/InputEventMonitorImpl;->mDispatchSeqNumber:I

    if-ne v0, v1, :cond_5f

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/perfdebug/InputEventMonitorImpl;->mDispatchBeginTime:J

    sub-long/2addr v0, v2

    .line 100
    .local v0, "latency":J
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-lez v2, :cond_18

    .line 101
    invoke-direct {p0, v0, v1}, Landroid/os/perfdebug/InputEventMonitorImpl;->trackInputDispatchTimeout(J)V

    .line 103
    :cond_18
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 104
    sget v2, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THRESHOLD_INPUT_DISPATCH_MS:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_26

    .line 105
    return-void

    .line 107
    :cond_26
    invoke-direct {p0, p1}, Landroid/os/perfdebug/InputEventMonitorImpl;->inputEventToString(Landroid/view/InputEvent;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "eventInfo":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 109
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "PerfMonitor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v4, " finishInputEvent : time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v4, " class="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputEventMonitor"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0    # "latency":J
    .end local v2    # "eventInfo":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_5f
    return-void
.end method
