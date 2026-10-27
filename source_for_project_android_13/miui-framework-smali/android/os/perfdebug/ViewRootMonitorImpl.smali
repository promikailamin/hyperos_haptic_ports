.class public Landroid/os/perfdebug/ViewRootMonitorImpl;
.super Landroid/os/perfdebug/ViewRootMonitor;
.source "ViewRootMonitorImpl.java"


# static fields
.field private static final blacklist DEBUG:Z

.field public static final blacklist DRAW_MODE_HARDWARE:I = 0x1

.field public static final blacklist DRAW_MODE_SOFTWARE:I = 0x2

.field public static final blacklist DRAW_MODE_SURFACE:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "ViewRootMonitor"

.field private static final blacklist THRESHOLD_SLOW_TRAVERSALS_MS:I


# instance fields
.field private blacklist mDrawMode:I

.field private blacklist mGlobalLayoutBeginTime:J

.field private blacklist mGlobalLayoutEndTime:J

.field private blacklist mHadValidSurface:Z

.field private blacklist mLayoutBeginTime:J

.field private blacklist mLayoutEndTime:J

.field private blacklist mMeasureBeginTime:J

.field private blacklist mMeasureEndTime:J

.field private blacklist mPerformDrawBeginTime:J

.field private blacklist mPerformDrawEndTime:J

.field private blacklist mPreDrawBeginTime:J

.field private blacklist mPreDrawEndTime:J

.field private blacklist mTraversalsBeginTime:J

.field private blacklist mViewDrawBeginTime:J

.field private blacklist mViewDrawEndTime:J

.field private blacklist mViewTreeDrawBeginTime:J

.field private blacklist mViewTreeDrawEndTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    sget-boolean v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG:Z

    sput-boolean v0, Landroid/os/perfdebug/ViewRootMonitorImpl;->DEBUG:Z

    .line 34
    sget v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THRESHOLD_SLOW_DOFRAME_MS:I

    sput v0, Landroid/os/perfdebug/ViewRootMonitorImpl;->THRESHOLD_SLOW_TRAVERSALS_MS:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/os/perfdebug/ViewRootMonitor;-><init>()V

    .line 122
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mDrawMode:I

    return-void
.end method

.method private blacklist drawModeToString()Ljava/lang/String;
    .registers 2

    .line 383
    iget v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mDrawMode:I

    packed-switch v0, :pswitch_data_12

    .line 393
    const-string v0, ""

    return-object v0

    .line 389
    :pswitch_8
    const-string v0, "AS"

    return-object v0

    .line 387
    :pswitch_b
    const-string v0, "SW"

    return-object v0

    .line 385
    :pswitch_e
    const-string v0, "HWUI"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public blacklist monitorGlobalLayoutBegin()V
    .registers 4

    .line 242
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 243
    const-wide/16 v0, 0x8

    const-string v2, "dispatchOnGlobalLayout"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mGlobalLayoutEndTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mGlobalLayoutBeginTime:J

    .line 246
    :cond_15
    return-void
.end method

.method public blacklist monitorGlobalLayoutEnd()V
    .registers 3

    .line 253
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mGlobalLayoutEndTime:J

    .line 255
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 257
    :cond_11
    return-void
.end method

.method public blacklist monitorPerformDrawBegin()V
    .registers 3

    .line 328
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mPerformDrawEndTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mPerformDrawBeginTime:J

    .line 331
    :cond_e
    return-void
.end method

.method public blacklist monitorPerformDrawEnd()V
    .registers 3

    .line 338
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mPerformDrawEndTime:J

    .line 341
    :cond_c
    return-void
.end method

.method public blacklist monitorPerformLayoutBegin()V
    .registers 3

    .line 221
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mLayoutEndTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mLayoutBeginTime:J

    .line 224
    :cond_e
    return-void
.end method

.method public blacklist monitorPerformLayoutEnd()V
    .registers 3

    .line 231
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mLayoutEndTime:J

    .line 234
    :cond_c
    return-void
.end method

.method public blacklist monitorPerformMeasureBegin()V
    .registers 3

    .line 201
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mMeasureEndTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mMeasureBeginTime:J

    .line 204
    :cond_e
    return-void
.end method

.method public blacklist monitorPerformMeasureEnd()V
    .registers 3

    .line 211
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mMeasureEndTime:J

    .line 214
    :cond_c
    return-void
.end method

.method public blacklist monitorTraversalsBegin()V
    .registers 4

    .line 131
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mTraversalsBeginTime:J

    .line 133
    const-wide/16 v0, 0x8

    const-string v2, "doTraversals"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 135
    :cond_13
    return-void
.end method

.method public blacklist monitorTraversalsEnd()V
    .registers 9

    .line 142
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_165

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mTraversalsBeginTime:J

    sub-long/2addr v0, v2

    .line 144
    .local v0, "monitorTime":J
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 145
    sget v2, Landroid/os/perfdebug/ViewRootMonitorImpl;->THRESHOLD_SLOW_TRAVERSALS_MS:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1a

    .line 146
    return-void

    .line 148
    :cond_1a
    sget v2, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_VERSION:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_cc

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const v3, 0x35c3716e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-static {}, Landroid/os/perfdebug/VsyncFrameImpl;->getInstance()Landroid/os/perfdebug/VsyncFrameImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/perfdebug/VsyncFrameImpl;->getCurFrame()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-wide v4, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mMeasureEndTime:J

    iget-wide v6, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mMeasureBeginTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-wide v4, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mLayoutEndTime:J

    iget-wide v6, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mLayoutBeginTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-wide v4, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mPerformDrawEndTime:J

    iget-wide v6, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mPerformDrawBeginTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-direct {p0}, Landroid/os/perfdebug/ViewRootMonitorImpl;->drawModeToString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-wide v4, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mGlobalLayoutEndTime:J

    iget-wide v6, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mGlobalLayoutBeginTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-wide v4, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mPreDrawEndTime:J

    iget-wide v6, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mPreDrawBeginTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-wide v4, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mViewTreeDrawEndTime:J

    iget-wide v6, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mViewTreeDrawBeginTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-wide v4, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mViewDrawEndTime:J

    iget-wide v6, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mViewDrawBeginTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-static {v3, v2}, Landroid/os/perfdebug/PerfJsonEventUtils;->writeEvent(ILjava/util/List;)V

    .line 167
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto/16 :goto_165

    .line 168
    :cond_cc
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 169
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "PerfMonitor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v3, " traversals : time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 172
    const-string v3, "ms vsyncFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {}, Landroid/os/perfdebug/VsyncFrameImpl;->getInstance()Landroid/os/perfdebug/VsyncFrameImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/perfdebug/VsyncFrameImpl;->getCurFrame()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    const-string v3, " measure="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-wide v3, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mMeasureEndTime:J

    iget-wide v5, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mMeasureBeginTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    const-string v3, "ms layout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-wide v3, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mLayoutEndTime:J

    iget-wide v5, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mLayoutBeginTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    const-string v3, "ms draw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-wide v3, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mPerformDrawEndTime:J

    iget-wide v5, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mPerformDrawBeginTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 180
    const-string v3, "ms mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {p0}, Landroid/os/perfdebug/ViewRootMonitorImpl;->drawModeToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v3, " dispatchOnGlobalLayout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-wide v3, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mGlobalLayoutEndTime:J

    iget-wide v5, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mGlobalLayoutBeginTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 184
    const-string v3, "ms ViewTree#OnPreDraw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-wide v3, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mPreDrawEndTime:J

    iget-wide v5, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mPreDrawBeginTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 186
    const-string v3, "ms ViewTree#OnDraw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-wide v3, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mViewTreeDrawEndTime:J

    iget-wide v5, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mViewTreeDrawBeginTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 188
    const-string v3, "ms viewDraw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-wide v3, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mViewDrawEndTime:J

    iget-wide v5, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mViewDrawBeginTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 190
    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ViewRootMonitor"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v0    # "monitorTime":J
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_165
    :goto_165
    return-void
.end method

.method public blacklist monitorViewDrawBegin()V
    .registers 3

    .line 308
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mViewDrawEndTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mViewDrawBeginTime:J

    .line 311
    :cond_e
    return-void
.end method

.method public blacklist monitorViewDrawEnd()V
    .registers 3

    .line 318
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 319
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mViewDrawEndTime:J

    .line 321
    :cond_c
    return-void
.end method

.method public blacklist monitorViewTreeDrawBegin()V
    .registers 4

    .line 286
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 287
    const-wide/16 v0, 0x8

    const-string v2, "ViewTree#OnDraw"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 288
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mViewTreeDrawEndTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mViewTreeDrawBeginTime:J

    .line 290
    :cond_15
    return-void
.end method

.method public blacklist monitorViewTreeDrawEnd()V
    .registers 3

    .line 297
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 298
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 299
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mViewTreeDrawEndTime:J

    .line 301
    :cond_11
    return-void
.end method

.method public blacklist monitorViewTreePreDrawBegin()V
    .registers 4

    .line 264
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 265
    const-wide/16 v0, 0x8

    const-string v2, "ViewTree#OnPreDraw"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mPreDrawEndTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mPreDrawBeginTime:J

    .line 268
    :cond_15
    return-void
.end method

.method public blacklist monitorViewTreePreDrawEnd()V
    .registers 3

    .line 275
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mPreDrawEndTime:J

    .line 277
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 279
    :cond_11
    return-void
.end method

.method public blacklist onAppVisibilityChanged(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 355
    if-eqz p1, :cond_5

    .line 356
    invoke-static {}, Landroid/view/ChoreographerInjectorStubImpl;->resetSurfaceCount()V

    .line 358
    :cond_5
    return-void
.end method

.method public blacklist onSurfaceCreate()V
    .registers 2

    .line 370
    iget-boolean v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mHadValidSurface:Z

    if-nez v0, :cond_a

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mHadValidSurface:Z

    .line 372
    invoke-static {v0}, Landroid/view/ChoreographerInjectorStubImpl;->onSurfaceCountChanged(Z)V

    .line 374
    :cond_a
    return-void
.end method

.method public blacklist onSurfaceDestroy(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 362
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mHadValidSurface:Z

    .line 364
    invoke-static {v0}, Landroid/view/ChoreographerInjectorStubImpl;->onSurfaceCountChanged(Z)V

    .line 366
    :cond_c
    return-void
.end method

.method public blacklist onWindowStoped(Landroid/view/ViewRootImpl;Z)V
    .registers 3
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p2, "stopped"    # Z

    .line 377
    if-eqz p2, :cond_5

    .line 378
    invoke-static {p1}, Landroid/view/ChoreographerInjectorStubImpl;->updateViewRootImpl(Landroid/view/ViewRootImpl;)V

    .line 380
    :cond_5
    return-void
.end method

.method public blacklist setDrawMode(I)V
    .registers 2
    .param p1, "drawMode"    # I

    .line 350
    iput p1, p0, Landroid/os/perfdebug/ViewRootMonitorImpl;->mDrawMode:I

    .line 351
    return-void
.end method
