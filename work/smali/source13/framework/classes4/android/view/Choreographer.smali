.class public final Landroid/view/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$CallbackQueue;,
        Landroid/view/Choreographer$CallbackRecord;,
        Landroid/view/Choreographer$FrameDisplayEventReceiver;,
        Landroid/view/Choreographer$FrameHandler;,
        Landroid/view/Choreographer$VsyncCallback;,
        Landroid/view/Choreographer$FrameData;,
        Landroid/view/Choreographer$FrameTimeline;,
        Landroid/view/Choreographer$FrameCallback;
    }
.end annotation


# static fields
.field public static final blacklist CALLBACK_ANIMATION:I = 0x1

.field public static final greylist-max-o CALLBACK_COMMIT:I = 0x4

.field public static final greylist-max-o CALLBACK_INPUT:I = 0x0

.field public static final blacklist CALLBACK_INSETS_ANIMATION:I = 0x2

.field private static final greylist-max-o CALLBACK_LAST:I = 0x4

.field private static final greylist-max-o CALLBACK_TRACE_TITLES:[Ljava/lang/String;

.field public static final greylist-max-o CALLBACK_TRAVERSAL:I = 0x3

.field private static final greylist-max-o DEBUG_FRAMES:Z = false

.field private static final greylist-max-o DEBUG_JANK:Z = false

.field private static final greylist-max-o DEFAULT_FRAME_DELAY:J = 0xaL

.field private static final greylist-max-o FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static final blacklist MIUI_OPTS_INPUT:Z

.field private static final blacklist MOTION_EVENT_ACTION_CANCEL:I = 0x3

.field private static final blacklist MOTION_EVENT_ACTION_DOWN:I = 0x0

.field private static final blacklist MOTION_EVENT_ACTION_MOVE:I = 0x2

.field private static final blacklist MOTION_EVENT_ACTION_UP:I = 0x1

.field private static final blacklist MSG_CACHE_BUFFER_DO_FRAME:I = 0x64

.field private static final greylist-max-o MSG_DO_FRAME:I = 0x0

.field private static final greylist-max-o MSG_DO_SCHEDULE_CALLBACK:I = 0x2

.field private static final greylist-max-o MSG_DO_SCHEDULE_VSYNC:I = 0x1

.field private static final blacklist MSG_INPUT_OPT_DO_FRAME:I = 0x65

.field private static final blacklist OPTS_INPUT:Z = false

.field private static final greylist-max-o SKIPPED_FRAME_WARNING_LIMIT:I

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Choreographer"

.field private static final greylist-max-o USE_FRAME_TIME:Z

.field private static final greylist-max-p USE_VSYNC:Z

.field private static final blacklist VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static volatile greylist-max-o mMainInstance:Landroid/view/Choreographer;

.field private static volatile greylist-max-o sFrameDelay:J

.field private static final greylist-max-o sSfThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

.field private final greylist mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

.field private greylist-max-o mCallbacksRunning:Z

.field private blacklist mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

.field private blacklist mConsumedDown:Z

.field private blacklist mConsumedMove:Z

.field private greylist-max-o mDebugPrintNextFrameTimeDelta:Z

.field private final greylist mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

.field private greylist-max-o mFPSDivisor:I

.field private blacklist mFirstVSync:Z

.field blacklist mFrameInfo:Landroid/graphics/FrameInfo;

.field private greylist-max-r mFrameIntervalNanos:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist-max-o mFrameScheduled:Z

.field private final greylist-max-o mHandler:Landroid/view/Choreographer$FrameHandler;

.field private blacklist mIsDoFrameProcessing:Z

.field private blacklist mIsVsyncScheduled:Z

.field private blacklist mLastFrameIntervalNanos:J

.field private greylist mLastFrameTimeNanos:J

.field private blacklist mLastStartNanos:J

.field private blacklist mLastTouchOptTimeNanos:J

.field private blacklist mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

.field private final greylist-max-p mLock:Ljava/lang/Object;

.field private final greylist-max-o mLooper:Landroid/os/Looper;

.field private blacklist mMotionEventType:I

.field private blacklist mTouchMoveNum:I

.field private blacklist mTurboSchedMonitor:Landroid/os/TurboSchedMonitor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFirstVSync(Landroid/view/Choreographer;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/Choreographer;->mFirstVSync:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .registers 1

    iget-object p0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFirstVSync(Landroid/view/Choreographer;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/Choreographer;->mFirstVSync:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFrameScheduled(Landroid/view/Choreographer;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mobtainCallbackLocked(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrecycleCallbackLocked(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetFRAME_CALLBACK_TOKEN()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetVSYNC_CALLBACK_TOKEN()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmMainInstance(Landroid/view/Choreographer;)V
    .registers 1

    sput-object p0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 104
    nop

    .line 105
    const-string/jumbo v0, "persist.sys.enable_inputopts"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->MIUI_OPTS_INPUT:Z

    .line 121
    const-wide/16 v0, 0xa

    sput-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 124
    new-instance v0, Landroid/view/Choreographer$1;

    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    .line 143
    new-instance v0, Landroid/view/Choreographer$2;

    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    .line 157
    const-string v0, "debug.choreographer.vsync"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    .line 161
    const-string v0, "debug.choreographer.frametime"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    .line 166
    const-string v0, "debug.choreographer.skipwarning"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    .line 182
    new-instance v0, Landroid/view/Choreographer$3;

    invoke-direct {v0}, Landroid/view/Choreographer$3;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    .line 185
    new-instance v0, Landroid/view/Choreographer$4;

    invoke-direct {v0}, Landroid/view/Choreographer$4;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    .line 250
    const-string v0, "input"

    const-string v1, "animation"

    const-string v2, "insets_animation"

    const-string/jumbo v3, "traversal"

    const-string v4, "commit"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Looper;I)V
    .registers 8
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "vsyncSource"    # I

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 221
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    .line 222
    new-instance v1, Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {v1}, Landroid/view/DisplayEventReceiver$VsyncEventData;-><init>()V

    iput-object v1, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 224
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    .line 225
    iput v1, p0, Landroid/view/Choreographer;->mMotionEventType:I

    .line 226
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    .line 227
    iput-boolean v1, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    .line 228
    iput-boolean v1, p0, Landroid/view/Choreographer;->mIsVsyncScheduled:Z

    .line 229
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/Choreographer;->mLastTouchOptTimeNanos:J

    .line 230
    iput-boolean v1, p0, Landroid/view/Choreographer;->mIsDoFrameProcessing:Z

    .line 231
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/Choreographer;->mLastStartNanos:J

    .line 244
    new-instance v2, Landroid/graphics/FrameInfo;

    invoke-direct {v2}, Landroid/graphics/FrameInfo;-><init>()V

    iput-object v2, p0, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    .line 291
    iput-boolean v1, p0, Landroid/view/Choreographer;->mFirstVSync:Z

    .line 308
    invoke-static {}, Landroid/os/perfdebug/ChoreographerMonitor;->newChoreographerMonitor()Landroid/os/perfdebug/ChoreographerMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    .line 310
    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/view/Choreographer;->mTurboSchedMonitor:Landroid/os/TurboSchedMonitor;

    .line 314
    iput-object p1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    .line 315
    new-instance v1, Landroid/view/Choreographer$FrameHandler;

    invoke-direct {v1, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 316
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_53

    .line 317
    new-instance v1, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;I)V

    goto :goto_54

    .line 318
    :cond_53
    move-object v1, v2

    :goto_54
    iput-object v1, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    .line 319
    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 321
    const v1, 0x4e6e6b28    # 1.0E9f

    invoke-static {}, Landroid/view/Choreographer;->getRefreshRate()F

    move-result v3

    div-float/2addr v1, v3

    float-to-long v3, v1

    iput-wide v3, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    .line 322
    invoke-static {v3, v4}, Landroid/util/BoostFramework$ScrollOptimizer;->setFrameInterval(J)V

    .line 324
    iget-wide v3, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    invoke-static {v3, v4}, Landroid/util/MiuiScrollOptimizerStub;->setFrameInterval(J)V

    .line 326
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/view/Choreographer$CallbackQueue;

    iput-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    .line 327
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_73
    const/4 v3, 0x4

    if-gt v1, v3, :cond_82

    .line 328
    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    new-instance v4, Landroid/view/Choreographer$CallbackQueue;

    invoke-direct {v4, p0, v2}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackQueue-IA;)V

    aput-object v4, v3, v1

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 331
    .end local v1    # "i":I
    :cond_82
    const-string v1, "debug.hwui.fps_divisor"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->setFPSDivisor(I)V

    .line 334
    iget-object v0, p0, Landroid/view/Choreographer;->mTurboSchedMonitor:Landroid/os/TurboSchedMonitor;

    invoke-interface {v0}, Landroid/os/TurboSchedMonitor;->isCoreAppOptimizerEnabled()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 335
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 336
    .local v0, "tid":I
    iget-object v1, p0, Landroid/view/Choreographer;->mTurboSchedMonitor:Landroid/os/TurboSchedMonitor;

    invoke-interface {v1, v0}, Landroid/os/TurboSchedMonitor;->addTid(I)V

    .line 339
    .end local v0    # "tid":I
    :cond_9c
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Looper;ILandroid/view/Choreographer-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;I)V

    return-void
.end method

.method private greylist-max-o dispose()V
    .registers 2

    .line 404
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->dispose()V

    .line 405
    return-void
.end method

.method public static greylist getFrameDelay()J
    .registers 2

    .line 425
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    return-wide v0
.end method

.method public static whitelist getInstance()Landroid/view/Choreographer;
    .registers 1

    .line 355
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method public static greylist-max-o getMainThreadInstance()Landroid/view/Choreographer;
    .registers 1

    .line 391
    sget-object v0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-object v0
.end method

.method private static greylist-max-o getRefreshRate()F
    .registers 2

    .line 342
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 344
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method public static greylist getSfInstance()Landroid/view/Choreographer;
    .registers 1

    .line 363
    sget-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private greylist-max-o isRunningOnLooperThreadLocked()Z
    .registers 3

    .line 1176
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private greylist-max-o obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .registers 8
    .param p1, "dueTime"    # J
    .param p3, "action"    # Ljava/lang/Object;
    .param p4, "token"    # Ljava/lang/Object;

    .line 1180
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 1181
    .local v0, "callback":Landroid/view/Choreographer$CallbackRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 1182
    new-instance v2, Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v2, v1}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer$CallbackRecord-IA;)V

    move-object v0, v2

    goto :goto_12

    .line 1184
    :cond_c
    iget-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v2, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 1185
    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1187
    :goto_12
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    .line 1188
    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 1189
    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 1190
    return-object v0
.end method

.method private greylist-max-o postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .registers 13
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .line 593
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 594
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 595
    .local v1, "now":J
    add-long v3, v1, p4

    .line 596
    .local v3, "dueTime":J
    iget-object v5, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3, v4, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 598
    invoke-static {}, Landroid/view/animation/ChoreographerInjectorStub;->getInstance()Landroid/view/animation/ChoreographerInjectorStub;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/view/animation/ChoreographerInjectorStub;->disableAnimation(I)Z

    move-result v5

    if-eqz v5, :cond_20

    sget-object v5, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    if-ne v5, p0, :cond_20

    .line 600
    monitor-exit v0

    return-void

    .line 604
    :cond_20
    cmp-long v5, v3, v1

    if-gtz v5, :cond_28

    .line 605
    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    goto :goto_3a

    .line 607
    :cond_28
    iget-object v5, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, p2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 608
    .local v5, "msg":Landroid/os/Message;
    iput p1, v5, Landroid/os/Message;->arg1:I

    .line 609
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 610
    iget-object v6, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v6, v5, v3, v4}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 612
    .end local v1    # "now":J
    .end local v3    # "dueTime":J
    .end local v5    # "msg":Landroid/os/Message;
    :goto_3a
    monitor-exit v0

    .line 613
    return-void

    .line 612
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private greylist-max-o recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .registers 3
    .param p1, "callback"    # Landroid/view/Choreographer$CallbackRecord;

    .line 1194
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 1195
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 1196
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1197
    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 1198
    return-void
.end method

.method public static greylist-max-o releaseInstance()V
    .registers 2

    .line 398
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Choreographer;

    .line 399
    .local v1, "old":Landroid/view/Choreographer;
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 400
    invoke-direct {v1}, Landroid/view/Choreographer;->dispose()V

    .line 401
    return-void
.end method

.method private greylist-max-o removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;

    .line 662
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    :try_start_3
    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 664
    if-eqz p2, :cond_14

    if-nez p3, :cond_14

    .line 665
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(ILjava/lang/Object;)V

    .line 667
    :cond_14
    monitor-exit v0

    .line 668
    return-void

    .line 667
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private greylist-max-o scheduleFrameLocked(J)V
    .registers 8
    .param p1, "now"    # J

    .line 799
    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v0, :cond_4e

    .line 800
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 849
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    invoke-static {v1}, Landroid/util/BoostFramework$ScrollOptimizer;->shouldUseVsync(Z)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 857
    invoke-direct {p0}, Landroid/view/Choreographer;->isRunningOnLooperThreadLocked()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 858
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    goto :goto_4e

    .line 860
    :cond_19
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 861
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 862
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 863
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_4e

    .line 865
    :cond_28
    sget-wide v1, Landroid/view/Choreographer;->sFrameDelay:J

    iget-wide v3, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    invoke-static {v1, v2, v3, v4}, Landroid/util/BoostFramework$ScrollOptimizer;->getFrameDelay(JJ)J

    move-result-wide v1

    sput-wide v1, Landroid/view/Choreographer;->sFrameDelay:J

    .line 867
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    sget-wide v3, Landroid/view/Choreographer;->sFrameDelay:J

    add-long/2addr v1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 872
    .local v1, "nextFrameTime":J
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 873
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 874
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 877
    .end local v1    # "nextFrameTime":J
    .end local v3    # "msg":Landroid/os/Message;
    :cond_4e
    :goto_4e
    return-void
.end method

.method private greylist-max-r scheduleVsyncLocked()V
    .registers 4

    .line 1167
    const-wide/16 v0, 0x8

    :try_start_2
    const-string v2, "Choreographer#scheduleVsyncLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1168
    iget-object v2, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v2}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V

    .line 1169
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/Choreographer;->mIsVsyncScheduled:Z
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_14

    .line 1171
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1172
    nop

    .line 1173
    return-void

    .line 1171
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1172
    throw v2
.end method

.method public static blacklist setFrameDelay(J)V
    .registers 2
    .param p0, "frameDelay"    # J

    .line 445
    sput-wide p0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 446
    return-void
.end method

.method public static greylist-max-o subtractFrameDelay(J)J
    .registers 6
    .param p0, "delayMillis"    # J

    .line 471
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 472
    .local v0, "frameDelay":J
    cmp-long v2, p0, v0

    if-gtz v2, :cond_9

    const-wide/16 v2, 0x0

    goto :goto_b

    :cond_9
    sub-long v2, p0, v0

    :goto_b
    return-wide v2
.end method

.method private blacklist traceMessage(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 909
    const-wide/16 v0, 0x8

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 910
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 911
    return-void
.end method


# virtual methods
.method blacklist doCallbacks(ILandroid/view/Choreographer$FrameData;J)V
    .registers 22
    .param p1, "callbackType"    # I
    .param p2, "frameData"    # Landroid/view/Choreographer$FrameData;
    .param p3, "frameIntervalNanos"    # J

    .line 1074
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {p2 .. p2}, Landroid/view/Choreographer$FrameData;->-$$Nest$fgetmFrameTimeNanos(Landroid/view/Choreographer$FrameData;)J

    move-result-wide v4

    .line 1075
    .local v4, "frameTimeNanos":J
    iget-object v6, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1079
    :try_start_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 1080
    .local v7, "now":J
    iget-object v0, v1, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v0, v0, v2

    const-wide/32 v9, 0xf4240

    div-long v9, v7, v9

    invoke-virtual {v0, v9, v10}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    move-object v9, v0

    .line 1082
    .local v9, "callbacks":Landroid/view/Choreographer$CallbackRecord;
    if-nez v9, :cond_23

    .line 1083
    monitor-exit v6

    return-void

    .line 1085
    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 1095
    const/4 v10, 0x4

    const-wide/16 v11, 0x8

    if-ne v2, v10, :cond_46

    .line 1096
    sub-long v13, v7, v4

    .line 1097
    .local v13, "jitterNanos":J
    const-string v10, "jitterNanos"

    long-to-int v15, v13

    invoke-static {v11, v12, v10, v15}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1098
    const-wide/16 v15, 0x2

    mul-long v15, v15, p3

    cmp-long v10, v13, v15

    if-ltz v10, :cond_46

    .line 1099
    rem-long v15, v13, p3

    add-long v15, v15, p3

    .line 1109
    .local v15, "lastFrameOffset":J
    sub-long v4, v7, v15

    .line 1110
    iput-wide v4, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 1111
    invoke-virtual {v3, v4, v5}, Landroid/view/Choreographer$FrameData;->updateFrameData(J)V

    .line 1114
    .end local v7    # "now":J
    .end local v13    # "jitterNanos":J
    .end local v15    # "lastFrameOffset":J
    :cond_46
    monitor-exit v6
    :try_end_47
    .catchall {:try_start_d .. :try_end_47} :catchall_a5

    .line 1116
    const/4 v6, 0x0

    :try_start_48
    sget-object v7, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v11, v12, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1117
    move-object v7, v9

    .local v7, "c":Landroid/view/Choreographer$CallbackRecord;
    :goto_50
    if-eqz v7, :cond_78

    .line 1124
    iget-object v8, v1, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    iget-object v10, v7, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    iget-wide v13, v7, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    invoke-virtual {v8, v2, v10, v13, v14}, Landroid/os/perfdebug/ChoreographerMonitor;->monitorCallbackExecuteBegin(ILjava/lang/Object;J)V

    .line 1125
    if-ne v2, v0, :cond_6c

    .line 1126
    iget-object v8, v1, Landroid/view/Choreographer;->mTurboSchedMonitor:Landroid/os/TurboSchedMonitor;

    iget-object v10, v7, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Landroid/os/TurboSchedMonitor;->monitorAnimationCallback(Ljava/lang/String;)V

    .line 1128
    :cond_6c
    invoke-virtual {v7, v3}, Landroid/view/Choreographer$CallbackRecord;->run(Landroid/view/Choreographer$FrameData;)V

    .line 1130
    iget-object v8, v1, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    invoke-virtual {v8}, Landroid/os/perfdebug/ChoreographerMonitor;->monitorCallbackExecuteEnd()V

    .line 1117
    iget-object v8, v7, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_76
    .catchall {:try_start_48 .. :try_end_76} :catchall_8e

    move-object v7, v8

    goto :goto_50

    .line 1133
    .end local v7    # "c":Landroid/view/Choreographer$CallbackRecord;
    :cond_78
    iget-object v7, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1134
    :try_start_7b
    iput-boolean v6, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 1136
    :cond_7d
    iget-object v0, v9, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1137
    .local v0, "next":Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {v1, v9}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 1138
    move-object v9, v0

    .line 1139
    .end local v0    # "next":Landroid/view/Choreographer$CallbackRecord;
    if-nez v9, :cond_7d

    .line 1140
    monitor-exit v7
    :try_end_86
    .catchall {:try_start_7b .. :try_end_86} :catchall_8b

    .line 1141
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1142
    nop

    .line 1143
    return-void

    .line 1140
    :catchall_8b
    move-exception v0

    :try_start_8c
    monitor-exit v7
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v0

    .line 1133
    :catchall_8e
    move-exception v0

    iget-object v7, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1134
    :try_start_92
    iput-boolean v6, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 1136
    :goto_94
    iget-object v6, v9, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1137
    .local v6, "next":Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {v1, v9}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 1138
    move-object v9, v6

    .line 1139
    .end local v6    # "next":Landroid/view/Choreographer$CallbackRecord;
    if-eqz v9, :cond_9d

    goto :goto_94

    .line 1140
    :cond_9d
    monitor-exit v7
    :try_end_9e
    .catchall {:try_start_92 .. :try_end_9e} :catchall_a2

    .line 1141
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1142
    throw v0

    .line 1140
    :catchall_a2
    move-exception v0

    :try_start_a3
    monitor-exit v7
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v0

    .line 1114
    .end local v9    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    :catchall_a5
    move-exception v0

    :try_start_a6
    monitor-exit v6
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v0
.end method

.method blacklist doFrame(JILandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .registers 39
    .param p1, "frameTimeNanos"    # J
    .param p3, "frame"    # I
    .param p4, "vsyncEventData"    # Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 916
    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move/from16 v15, p3

    move-object/from16 v13, p4

    iget-wide v11, v13, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    .line 918
    .local v11, "frameIntervalNanos":J
    const/4 v0, 0x1

    const-wide/16 v9, 0x8

    :try_start_d
    iput-boolean v0, v1, Landroid/view/Choreographer;->mIsDoFrameProcessing:Z

    .line 919
    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_327

    if-eqz v2, :cond_3b

    .line 920
    :try_start_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Choreographer#doFrame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 921
    invoke-virtual/range {p4 .. p4}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v3

    iget-wide v3, v3, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 920
    invoke-static {v9, v10, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_32

    goto :goto_3b

    .line 1047
    :catchall_32
    move-exception v0

    move-wide/from16 v29, v9

    move-wide v10, v11

    move v12, v15

    move-wide v8, v5

    move-object v15, v13

    goto/16 :goto_32f

    .line 923
    :cond_3b
    :goto_3b
    :try_start_3b
    new-instance v2, Landroid/view/Choreographer$FrameData;

    invoke-direct {v2, v5, v6, v13}, Landroid/view/Choreographer$FrameData;-><init>(JLandroid/view/DisplayEventReceiver$VsyncEventData;)V

    move-object v14, v2

    .line 924
    .local v14, "frameData":Landroid/view/Choreographer$FrameData;
    iget-object v7, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_327

    .line 925
    const/4 v8, 0x0

    :try_start_45
    iput-boolean v8, v1, Landroid/view/Choreographer;->mIsVsyncScheduled:Z

    .line 926
    iget-boolean v2, v1, Landroid/view/Choreographer;->mFrameScheduled:Z
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_316

    if-nez v2, :cond_75

    .line 927
    :try_start_4b
    const-string v0, "Frame not scheduled"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    .line 928
    monitor-exit v7
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_69

    .line 1047
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1049
    invoke-static {}, Landroid/view/animation/AnimationUtilsStub;->getInstance()Landroid/view/animation/AnimationUtilsStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/animation/AnimationUtilsStub;->unlockAnimationClock()V

    .line 1051
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1053
    iget-object v0, v1, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    invoke-virtual {v0}, Landroid/os/perfdebug/ChoreographerMonitor;->monitorDoFrameEnd()V

    .line 1054
    iget-object v0, v1, Landroid/view/Choreographer;->mTurboSchedMonitor:Landroid/os/TurboSchedMonitor;

    invoke-interface {v0}, Landroid/os/TurboSchedMonitor;->releaseAppToken()V

    .line 928
    return-void

    .line 1006
    :catchall_69
    move-exception v0

    move-object/from16 v23, v7

    move-wide/from16 v29, v9

    move-wide v10, v11

    move-object v2, v14

    move v12, v15

    move-wide v8, v5

    move-object v15, v13

    goto/16 :goto_321

    .line 937
    :cond_75
    move-wide/from16 v3, p1

    .line 938
    .local v3, "intendedFrameTimeNanos":J
    :try_start_77
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_316

    move-wide/from16 v18, v16

    .line 939
    .local v18, "startNanos":J
    move-wide/from16 v9, v18

    .end local v18    # "startNanos":J
    .local v9, "startNanos":J
    sub-long v18, v9, v5

    .line 940
    .local v18, "jitterNanos":J
    cmp-long v2, v18, v11

    const-wide/16 v20, 0x0

    if-ltz v2, :cond_f4

    .line 941
    const-wide/16 v22, 0x0

    .line 942
    .local v22, "lastFrameOffset":J
    cmp-long v2, v11, v20

    if-nez v2, :cond_a1

    .line 943
    :try_start_8d
    const-string v2, "Choreographer"

    const-string v8, "Vsync data empty due to timeout"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_95

    goto :goto_d0

    .line 1006
    .end local v3    # "intendedFrameTimeNanos":J
    .end local v9    # "startNanos":J
    .end local v18    # "jitterNanos":J
    .end local v22    # "lastFrameOffset":J
    :catchall_95
    move-exception v0

    move-wide v8, v5

    move-object/from16 v23, v7

    move-wide v10, v11

    move-object v2, v14

    move v12, v15

    const-wide/16 v29, 0x8

    move-object v15, v13

    goto/16 :goto_321

    .line 945
    .restart local v3    # "intendedFrameTimeNanos":J
    .restart local v9    # "startNanos":J
    .restart local v18    # "jitterNanos":J
    .restart local v22    # "lastFrameOffset":J
    :cond_a1
    :try_start_a1
    rem-long v24, v18, v11

    move-wide/from16 v22, v24

    .line 946
    div-long v24, v18, v11

    move-wide/from16 v26, v24

    .line 947
    .local v26, "skippedFrames":J
    sget v2, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    int-to-long v0, v2

    move-wide/from16 v5, v26

    .end local v26    # "skippedFrames":J
    .local v5, "skippedFrames":J
    cmp-long v0, v5, v0

    if-ltz v0, :cond_d0

    .line 948
    const-string v0, "Choreographer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " frames!  The application may be doing too much work on its main thread."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catchall {:try_start_a1 .. :try_end_d0} :catchall_e5

    .line 961
    .end local v5    # "skippedFrames":J
    :cond_d0
    :goto_d0
    sub-long v1, v9, v22

    .line 962
    .end local p1    # "frameTimeNanos":J
    .local v1, "frameTimeNanos":J
    :try_start_d2
    invoke-virtual {v14, v1, v2}, Landroid/view/Choreographer$FrameData;->updateFrameData(J)V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d7

    move-wide v5, v1

    goto :goto_f6

    .line 1006
    .end local v3    # "intendedFrameTimeNanos":J
    .end local v9    # "startNanos":J
    .end local v18    # "jitterNanos":J
    .end local v22    # "lastFrameOffset":J
    :catchall_d7
    move-exception v0

    move-wide v8, v1

    move-object/from16 v23, v7

    move-wide v10, v11

    move-object v2, v14

    move v12, v15

    const-wide/16 v29, 0x8

    move-object/from16 v1, p0

    move-object v15, v13

    goto/16 :goto_321

    .end local v1    # "frameTimeNanos":J
    .restart local p1    # "frameTimeNanos":J
    :catchall_e5
    move-exception v0

    move-object/from16 v1, p0

    move-wide/from16 v8, p1

    move-object/from16 v23, v7

    move-wide v10, v11

    move-object v2, v14

    move v12, v15

    const-wide/16 v29, 0x8

    move-object v15, v13

    goto/16 :goto_321

    .line 940
    .restart local v3    # "intendedFrameTimeNanos":J
    .restart local v9    # "startNanos":J
    .restart local v18    # "jitterNanos":J
    :cond_f4
    move-wide/from16 v5, p1

    .line 965
    .end local p1    # "frameTimeNanos":J
    .local v5, "frameTimeNanos":J
    :goto_f6
    move-object/from16 v1, p0

    move-object/from16 v22, v14

    .end local v14    # "frameData":Landroid/view/Choreographer$FrameData;
    .local v22, "frameData":Landroid/view/Choreographer$FrameData;
    :try_start_fa
    iget-wide v14, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_fc
    .catchall {:try_start_fa .. :try_end_fc} :catchall_309

    cmp-long v0, v5, v14

    if-gez v0, :cond_131

    .line 970
    :try_start_100
    const-string v0, "Frame time goes backward"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    .line 971
    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 972
    monitor-exit v7
    :try_end_109
    .catchall {:try_start_100 .. :try_end_109} :catchall_123

    .line 1047
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1049
    invoke-static {}, Landroid/view/animation/AnimationUtilsStub;->getInstance()Landroid/view/animation/AnimationUtilsStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/animation/AnimationUtilsStub;->unlockAnimationClock()V

    .line 1051
    const-wide/16 v7, 0x8

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1053
    iget-object v0, v1, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    invoke-virtual {v0}, Landroid/os/perfdebug/ChoreographerMonitor;->monitorDoFrameEnd()V

    .line 1054
    iget-object v0, v1, Landroid/view/Choreographer;->mTurboSchedMonitor:Landroid/os/TurboSchedMonitor;

    invoke-interface {v0}, Landroid/os/TurboSchedMonitor;->releaseAppToken()V

    .line 972
    return-void

    .line 1006
    .end local v3    # "intendedFrameTimeNanos":J
    .end local v9    # "startNanos":J
    .end local v18    # "jitterNanos":J
    :catchall_123
    move-exception v0

    move-wide v8, v5

    move-object/from16 v23, v7

    move-wide v10, v11

    move-object v15, v13

    move-object/from16 v2, v22

    const-wide/16 v29, 0x8

    move/from16 v12, p3

    goto/16 :goto_321

    .line 975
    .restart local v3    # "intendedFrameTimeNanos":J
    .restart local v9    # "startNanos":J
    .restart local v18    # "jitterNanos":J
    :cond_131
    :try_start_131
    iget v0, v1, Landroid/view/Choreographer;->mFPSDivisor:I
    :try_end_133
    .catchall {:try_start_131 .. :try_end_133} :catchall_309

    const/4 v2, 0x1

    if-le v0, v2, :cond_167

    .line 976
    sub-long v14, v5, v14

    .line 977
    .local v14, "timeSinceVsync":J
    move-wide/from16 p1, v5

    .end local v5    # "frameTimeNanos":J
    .restart local p1    # "frameTimeNanos":J
    int-to-long v5, v0

    mul-long/2addr v5, v11

    cmp-long v0, v14, v5

    if-gez v0, :cond_169

    cmp-long v0, v14, v20

    if-lez v0, :cond_169

    .line 978
    :try_start_144
    const-string v0, "Frame skipped due to FPSDivisor"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    .line 979
    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 980
    monitor-exit v7
    :try_end_14d
    .catchall {:try_start_144 .. :try_end_14d} :catchall_1cd

    .line 1047
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1049
    invoke-static {}, Landroid/view/animation/AnimationUtilsStub;->getInstance()Landroid/view/animation/AnimationUtilsStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/animation/AnimationUtilsStub;->unlockAnimationClock()V

    .line 1051
    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1053
    iget-object v0, v1, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    invoke-virtual {v0}, Landroid/os/perfdebug/ChoreographerMonitor;->monitorDoFrameEnd()V

    .line 1054
    iget-object v0, v1, Landroid/view/Choreographer;->mTurboSchedMonitor:Landroid/os/TurboSchedMonitor;

    invoke-interface {v0}, Landroid/os/TurboSchedMonitor;->releaseAppToken()V

    .line 980
    return-void

    .line 975
    .end local v14    # "timeSinceVsync":J
    .end local p1    # "frameTimeNanos":J
    .restart local v5    # "frameTimeNanos":J
    :cond_167
    move-wide/from16 p1, v5

    .line 984
    .end local v5    # "frameTimeNanos":J
    .restart local p1    # "frameTimeNanos":J
    :cond_169
    :try_start_169
    sget-boolean v0, Landroid/view/Choreographer;->MIUI_OPTS_INPUT:Z
    :try_end_16b
    .catchall {:try_start_169 .. :try_end_16b} :catchall_2fb

    const-wide/32 v25, 0xf4240

    if-eqz v0, :cond_1dc

    :try_start_170
    invoke-static {}, Landroid/view/animation/ChoreographerInjectorStub;->getInstance()Landroid/view/animation/ChoreographerInjectorStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/animation/ChoreographerInjectorStub;->isDoFrameOptEnabled()Z

    move-result v0

    if-eqz v0, :cond_1dc

    .line 985
    invoke-virtual/range {p0 .. p0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v5

    const-wide/16 v14, -0x1

    cmp-long v0, v5, v14

    if-nez v0, :cond_1ca

    iget-wide v5, v1, Landroid/view/Choreographer;->mLastStartNanos:J

    cmp-long v0, v5, v14

    if-eqz v0, :cond_1ca

    sub-long v5, v9, v5

    const-wide/16 v14, 0x3

    mul-long/2addr v14, v11

    const-wide/16 v27, 0x4

    div-long v14, v14, v27

    cmp-long v0, v5, v14

    if-gez v0, :cond_1ca

    .line 988
    add-long v5, v9, v11

    div-long v5, v5, v25

    .line 989
    .local v5, "nextFrameTime":J
    iget-object v0, v1, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 990
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 991
    iget-object v2, v1, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v2, v0, v5, v6}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 992
    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 993
    monitor-exit v7
    :try_end_1b0
    .catchall {:try_start_170 .. :try_end_1b0} :catchall_1cd

    .line 1047
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1049
    invoke-static {}, Landroid/view/animation/AnimationUtilsStub;->getInstance()Landroid/view/animation/AnimationUtilsStub;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/animation/AnimationUtilsStub;->unlockAnimationClock()V

    .line 1051
    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 1053
    iget-object v2, v1, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    invoke-virtual {v2}, Landroid/os/perfdebug/ChoreographerMonitor;->monitorDoFrameEnd()V

    .line 1054
    iget-object v2, v1, Landroid/view/Choreographer;->mTurboSchedMonitor:Landroid/os/TurboSchedMonitor;

    invoke-interface {v2}, Landroid/os/TurboSchedMonitor;->releaseAppToken()V

    .line 993
    return-void

    .line 985
    .end local v0    # "msg":Landroid/os/Message;
    .end local v5    # "nextFrameTime":J
    :cond_1ca
    const-wide/16 v14, 0x8

    goto :goto_1de

    .line 1006
    .end local v3    # "intendedFrameTimeNanos":J
    .end local v9    # "startNanos":J
    .end local v18    # "jitterNanos":J
    :catchall_1cd
    move-exception v0

    move-wide/from16 v8, p1

    move-object/from16 v23, v7

    move-wide v10, v11

    move-object v15, v13

    move-object/from16 v2, v22

    const-wide/16 v29, 0x8

    move/from16 v12, p3

    goto/16 :goto_321

    .line 984
    .restart local v3    # "intendedFrameTimeNanos":J
    .restart local v9    # "startNanos":J
    .restart local v18    # "jitterNanos":J
    :cond_1dc
    const-wide/16 v14, 0x8

    .line 995
    :goto_1de
    :try_start_1de
    iput-wide v9, v1, Landroid/view/Choreographer;->mLastStartNanos:J

    .line 998
    iget-object v2, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    .line 999
    invoke-virtual/range {p4 .. p4}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v5, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    .line 1000
    invoke-virtual/range {p4 .. p4}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0
    :try_end_1ec
    .catchall {:try_start_1de .. :try_end_1ec} :catchall_2ed

    :try_start_1ec
    iget-wide v14, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J
    :try_end_1ee
    .catchall {:try_start_1ec .. :try_end_1ee} :catchall_2fb

    :try_start_1ee
    iget-wide v0, v13, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J
    :try_end_1f0
    .catchall {:try_start_1ee .. :try_end_1f0} :catchall_2e9

    .line 998
    move-wide/from16 v27, p1

    move-wide/from16 v29, v5

    .end local p1    # "frameTimeNanos":J
    .local v27, "frameTimeNanos":J
    move-wide/from16 v5, v27

    move-object/from16 v23, v7

    move-wide/from16 v7, v29

    move-wide/from16 v16, v9

    const-wide/16 v29, 0x8

    .end local v9    # "startNanos":J
    .local v16, "startNanos":J
    move-wide v9, v14

    move-wide v14, v11

    .end local v11    # "frameIntervalNanos":J
    .local v14, "frameIntervalNanos":J
    move-wide/from16 v11, v16

    move-wide/from16 v31, v14

    move-object/from16 v33, v22

    move-object v15, v13

    .end local v14    # "frameIntervalNanos":J
    .end local v22    # "frameData":Landroid/view/Choreographer$FrameData;
    .local v31, "frameIntervalNanos":J
    .local v33, "frameData":Landroid/view/Choreographer$FrameData;
    move-wide v13, v0

    :try_start_208
    invoke-virtual/range {v2 .. v14}, Landroid/graphics/FrameInfo;->setVsync(JJJJJJ)V
    :try_end_20b
    .catchall {:try_start_208 .. :try_end_20b} :catchall_2dd

    .line 1002
    const/4 v0, 0x0

    move-object/from16 v1, p0

    :try_start_20e
    iput-boolean v0, v1, Landroid/view/Choreographer;->mFrameScheduled:Z
    :try_end_210
    .catchall {:try_start_20e .. :try_end_210} :catchall_2db

    .line 1003
    move-wide/from16 v8, v27

    .end local v27    # "frameTimeNanos":J
    .local v8, "frameTimeNanos":J
    :try_start_212
    iput-wide v8, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_214
    .catchall {:try_start_212 .. :try_end_214} :catchall_2d2

    .line 1004
    move-wide/from16 v10, v31

    .end local v31    # "frameIntervalNanos":J
    .local v10, "frameIntervalNanos":J
    :try_start_216
    iput-wide v10, v1, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    .line 1005
    iput-object v15, v1, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 1006
    .end local v3    # "intendedFrameTimeNanos":J
    .end local v18    # "jitterNanos":J
    monitor-exit v23
    :try_end_21b
    .catchall {:try_start_216 .. :try_end_21b} :catchall_2cb

    .line 1008
    cmp-long v2, v10, v20

    if-lez v2, :cond_230

    :try_start_21f
    iget-wide v2, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    sub-long v2, v10, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, v25

    if-lez v2, :cond_230

    .line 1010
    iput-wide v10, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    .line 1011
    invoke-static {v10, v11}, Landroid/util/BoostFramework$ScrollOptimizer;->setFrameInterval(J)V

    .line 1013
    :cond_230
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/util/BoostFramework$ScrollOptimizer;->setUITaskStatus(Z)V

    .line 1014
    div-long v5, v8, v25

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->lockAnimationClock(J)V

    .line 1016
    invoke-static {v10, v11}, Landroid/util/MiuiScrollOptimizerStub;->setFrameInterval(J)V

    .line 1017
    invoke-static {}, Landroid/view/animation/AnimationUtilsStub;->getInstance()Landroid/view/animation/AnimationUtilsStub;

    move-result-object v2
    :try_end_240
    .catchall {:try_start_21f .. :try_end_240} :catchall_2c6

    move/from16 v12, p3

    :try_start_242
    invoke-interface {v2, v8, v9, v12}, Landroid/view/animation/AnimationUtilsStub;->lockAnimationClockNanos(JI)V

    .line 1020
    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v2

    if-ne v2, v1, :cond_252

    .line 1021
    invoke-static {}, Landroid/os/perfdebug/VsyncFrame;->get()Landroid/os/perfdebug/VsyncFrame;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/os/perfdebug/VsyncFrame;->updateCurFrame(I)V

    .line 1023
    :cond_252
    iget-object v2, v1, Landroid/view/Choreographer;->mTurboSchedMonitor:Landroid/os/TurboSchedMonitor;

    invoke-interface {v2}, Landroid/os/TurboSchedMonitor;->getAppToken()V

    .line 1024
    iget-object v2, v1, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    invoke-virtual {v2}, Landroid/os/perfdebug/ChoreographerMonitor;->monitorDoFrameBegin()V

    .line 1027
    iget-object v2, v1, Landroid/view/Choreographer;->mTurboSchedMonitor:Landroid/os/TurboSchedMonitor;

    invoke-interface {v2}, Landroid/os/TurboSchedMonitor;->isCoreAppOptimizerEnabled()Z

    move-result v2

    if-eqz v2, :cond_277

    .line 1028
    iget-object v2, v1, Landroid/view/Choreographer;->mTurboSchedMonitor:Landroid/os/TurboSchedMonitor;

    invoke-interface {v2, v10, v11}, Landroid/os/TurboSchedMonitor;->monitorFrameDelay(J)V

    .line 1029
    iget-object v2, v1, Landroid/view/Choreographer;->mTurboSchedMonitor:Landroid/os/TurboSchedMonitor;

    invoke-virtual/range {p4 .. p4}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v3

    iget-wide v6, v3, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    move/from16 v3, p3

    move-wide v4, v8

    invoke-interface/range {v2 .. v7}, Landroid/os/TurboSchedMonitor;->recordFrameStart(IJJ)V

    .line 1033
    :cond_277
    iget-object v2, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v2}, Landroid/graphics/FrameInfo;->markInputHandlingStart()V

    .line 1034
    move-object/from16 v2, v33

    .end local v33    # "frameData":Landroid/view/Choreographer$FrameData;
    .local v2, "frameData":Landroid/view/Choreographer$FrameData;
    invoke-virtual {v1, v0, v2, v10, v11}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    .line 1036
    iget-object v3, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v3}, Landroid/graphics/FrameInfo;->markAnimationsStart()V

    .line 1037
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v10, v11}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    .line 1038
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2, v10, v11}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    .line 1041
    iget-object v3, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v3}, Landroid/graphics/FrameInfo;->markPerformTraversalsStart()V

    .line 1042
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2, v10, v11}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    .line 1044
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2, v10, v11}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    .line 1045
    invoke-static {v0}, Landroid/util/BoostFramework$ScrollOptimizer;->setUITaskStatus(Z)V
    :try_end_29e
    .catchall {:try_start_242 .. :try_end_29e} :catchall_323

    .line 1047
    .end local v2    # "frameData":Landroid/view/Choreographer$FrameData;
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1049
    invoke-static {}, Landroid/view/animation/AnimationUtilsStub;->getInstance()Landroid/view/animation/AnimationUtilsStub;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/animation/AnimationUtilsStub;->unlockAnimationClock()V

    .line 1051
    invoke-static/range {v29 .. v30}, Landroid/os/Trace;->traceEnd(J)V

    .line 1053
    iget-object v2, v1, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    invoke-virtual {v2}, Landroid/os/perfdebug/ChoreographerMonitor;->monitorDoFrameEnd()V

    .line 1054
    iget-object v2, v1, Landroid/view/Choreographer;->mTurboSchedMonitor:Landroid/os/TurboSchedMonitor;

    invoke-interface {v2}, Landroid/os/TurboSchedMonitor;->releaseAppToken()V

    .line 1055
    nop

    .line 1063
    iput-boolean v0, v1, Landroid/view/Choreographer;->mIsDoFrameProcessing:Z

    .line 1066
    iget-object v0, v1, Landroid/view/Choreographer;->mTurboSchedMonitor:Landroid/os/TurboSchedMonitor;

    invoke-interface {v0}, Landroid/os/TurboSchedMonitor;->isCoreAppOptimizerEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c5

    .line 1067
    iget-object v0, v1, Landroid/view/Choreographer;->mTurboSchedMonitor:Landroid/os/TurboSchedMonitor;

    invoke-interface {v0}, Landroid/os/TurboSchedMonitor;->setDrawFrameFinished()V

    .line 1070
    :cond_2c5
    return-void

    .line 1047
    .end local v16    # "startNanos":J
    :catchall_2c6
    move-exception v0

    move/from16 v12, p3

    goto/16 :goto_32f

    .line 1006
    .restart local v33    # "frameData":Landroid/view/Choreographer$FrameData;
    :catchall_2cb
    move-exception v0

    move/from16 v12, p3

    move-object/from16 v2, v33

    .end local v33    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v2    # "frameData":Landroid/view/Choreographer$FrameData;
    goto/16 :goto_321

    .end local v2    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local v10    # "frameIntervalNanos":J
    .restart local v31    # "frameIntervalNanos":J
    .restart local v33    # "frameData":Landroid/view/Choreographer$FrameData;
    :catchall_2d2
    move-exception v0

    move/from16 v12, p3

    move-wide/from16 v10, v31

    move-object/from16 v2, v33

    .end local v31    # "frameIntervalNanos":J
    .end local v33    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v2    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v10    # "frameIntervalNanos":J
    goto/16 :goto_321

    .end local v2    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local v8    # "frameTimeNanos":J
    .end local v10    # "frameIntervalNanos":J
    .restart local v27    # "frameTimeNanos":J
    .restart local v31    # "frameIntervalNanos":J
    .restart local v33    # "frameData":Landroid/view/Choreographer$FrameData;
    :catchall_2db
    move-exception v0

    goto :goto_2e0

    :catchall_2dd
    move-exception v0

    move-object/from16 v1, p0

    :goto_2e0
    move/from16 v12, p3

    move-wide/from16 v8, v27

    move-wide/from16 v10, v31

    move-object/from16 v2, v33

    .end local v27    # "frameTimeNanos":J
    .end local v31    # "frameIntervalNanos":J
    .end local v33    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v2    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v8    # "frameTimeNanos":J
    .restart local v10    # "frameIntervalNanos":J
    goto :goto_321

    .end local v2    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local v8    # "frameTimeNanos":J
    .end local v10    # "frameIntervalNanos":J
    .restart local v11    # "frameIntervalNanos":J
    .restart local v22    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local p1    # "frameTimeNanos":J
    :catchall_2e9
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2fc

    :catchall_2ed
    move-exception v0

    move-wide/from16 v8, p1

    move-object/from16 v23, v7

    move-wide v10, v11

    move-wide/from16 v29, v14

    move-object/from16 v2, v22

    move/from16 v12, p3

    move-object v15, v13

    goto :goto_308

    :catchall_2fb
    move-exception v0

    :goto_2fc
    move-wide/from16 v8, p1

    move-object/from16 v23, v7

    move-wide v10, v11

    move-object v15, v13

    move-object/from16 v2, v22

    const-wide/16 v29, 0x8

    move/from16 v12, p3

    .end local v11    # "frameIntervalNanos":J
    .end local v22    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local p1    # "frameTimeNanos":J
    .restart local v2    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v8    # "frameTimeNanos":J
    .restart local v10    # "frameIntervalNanos":J
    :goto_308
    goto :goto_321

    .end local v2    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local v8    # "frameTimeNanos":J
    .end local v10    # "frameIntervalNanos":J
    .local v5, "frameTimeNanos":J
    .restart local v11    # "frameIntervalNanos":J
    .restart local v22    # "frameData":Landroid/view/Choreographer$FrameData;
    :catchall_309
    move-exception v0

    move-wide v8, v5

    move-object/from16 v23, v7

    move-wide v10, v11

    move-object v15, v13

    move-object/from16 v2, v22

    const-wide/16 v29, 0x8

    move/from16 v12, p3

    .end local v5    # "frameTimeNanos":J
    .end local v11    # "frameIntervalNanos":J
    .end local v22    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v2    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v8    # "frameTimeNanos":J
    .restart local v10    # "frameIntervalNanos":J
    goto :goto_321

    .end local v2    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local v8    # "frameTimeNanos":J
    .end local v10    # "frameIntervalNanos":J
    .restart local v11    # "frameIntervalNanos":J
    .local v14, "frameData":Landroid/view/Choreographer$FrameData;
    .restart local p1    # "frameTimeNanos":J
    :catchall_316
    move-exception v0

    move-object/from16 v23, v7

    move-wide/from16 v29, v9

    move-wide v10, v11

    move-object v2, v14

    move v12, v15

    move-object v15, v13

    move-wide/from16 v8, p1

    .end local v11    # "frameIntervalNanos":J
    .end local v14    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local p1    # "frameTimeNanos":J
    .restart local v2    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v8    # "frameTimeNanos":J
    .restart local v10    # "frameIntervalNanos":J
    :goto_321
    :try_start_321
    monitor-exit v23
    :try_end_322
    .catchall {:try_start_321 .. :try_end_322} :catchall_325

    .end local v8    # "frameTimeNanos":J
    .end local v10    # "frameIntervalNanos":J
    .end local p0    # "this":Landroid/view/Choreographer;
    .end local p3    # "frame":I
    .end local p4    # "vsyncEventData":Landroid/view/DisplayEventReceiver$VsyncEventData;
    :try_start_322
    throw v0
    :try_end_323
    .catchall {:try_start_322 .. :try_end_323} :catchall_323

    .line 1047
    .end local v2    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v8    # "frameTimeNanos":J
    .restart local v10    # "frameIntervalNanos":J
    .restart local p0    # "this":Landroid/view/Choreographer;
    .restart local p3    # "frame":I
    .restart local p4    # "vsyncEventData":Landroid/view/DisplayEventReceiver$VsyncEventData;
    :catchall_323
    move-exception v0

    goto :goto_32f

    .line 1006
    .restart local v2    # "frameData":Landroid/view/Choreographer$FrameData;
    :catchall_325
    move-exception v0

    goto :goto_321

    .line 1047
    .end local v2    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local v8    # "frameTimeNanos":J
    .end local v10    # "frameIntervalNanos":J
    .restart local v11    # "frameIntervalNanos":J
    .restart local p1    # "frameTimeNanos":J
    :catchall_327
    move-exception v0

    move-wide/from16 v29, v9

    move-wide v10, v11

    move v12, v15

    move-object v15, v13

    move-wide/from16 v8, p1

    .end local v11    # "frameIntervalNanos":J
    .end local p1    # "frameTimeNanos":J
    .restart local v8    # "frameTimeNanos":J
    .restart local v10    # "frameIntervalNanos":J
    :goto_32f
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1049
    invoke-static {}, Landroid/view/animation/AnimationUtilsStub;->getInstance()Landroid/view/animation/AnimationUtilsStub;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/animation/AnimationUtilsStub;->unlockAnimationClock()V

    .line 1051
    invoke-static/range {v29 .. v30}, Landroid/os/Trace;->traceEnd(J)V

    .line 1053
    iget-object v2, v1, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    invoke-virtual {v2}, Landroid/os/perfdebug/ChoreographerMonitor;->monitorDoFrameEnd()V

    .line 1054
    iget-object v2, v1, Landroid/view/Choreographer;->mTurboSchedMonitor:Landroid/os/TurboSchedMonitor;

    invoke-interface {v2}, Landroid/os/TurboSchedMonitor;->releaseAppToken()V

    .line 1055
    throw v0
.end method

.method greylist-max-o doScheduleCallback(I)V
    .registers 6
    .param p1, "callbackType"    # I

    .line 1154
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1155
    :try_start_3
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v1, :cond_18

    .line 1156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1157
    .local v1, "now":J
    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1158
    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    .line 1161
    .end local v1    # "now":J
    :cond_18
    monitor-exit v0

    .line 1162
    return-void

    .line 1161
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method greylist-max-o doScheduleVsync()V
    .registers 3

    .line 1146
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1147
    :try_start_3
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-eqz v1, :cond_a

    .line 1148
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 1150
    :cond_a
    monitor-exit v0

    .line 1151
    return-void

    .line 1150
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Choreographer:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mFrameScheduled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 489
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 490
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastFrameTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 491
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public blacklist getFrameDeadline()J
    .registers 3

    .line 899
    iget-object v0, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    return-wide v0
.end method

.method public greylist-max-o getFrameIntervalNanos()J
    .registers 4

    .line 480
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_3
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    monitor-exit v0

    return-wide v1

    .line 482
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public greylist getFrameTime()J
    .registers 5

    .line 764
    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist getFrameTimeNanos()J
    .registers 4

    .line 777
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_3
    iget-boolean v1, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    if-eqz v1, :cond_14

    .line 782
    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v1, :cond_e

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_12

    :cond_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_12
    monitor-exit v0

    return-wide v1

    .line 779
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This method must only be called as part of a callback while a frame is in progress."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/Choreographer;
    throw v1

    .line 783
    .restart local p0    # "this":Landroid/view/Choreographer;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public greylist-max-o getLastFrameTimeNanos()J
    .registers 4

    .line 793
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 794
    :try_start_3
    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v1, :cond_a

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_e

    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_e
    monitor-exit v0

    return-wide v1

    .line 795
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public blacklist getVsyncId()J
    .registers 3

    .line 888
    iget-object v0, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    return-wide v0
.end method

.method public greylist postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .registers 10
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .line 510
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 511
    return-void
.end method

.method public greylist postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .registers 8
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .line 531
    if-eqz p2, :cond_13

    .line 534
    if-ltz p1, :cond_b

    const/4 v0, 0x4

    if-gt p1, v0, :cond_b

    .line 538
    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 539
    return-void

    .line 535
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist postCallbackWithoutVSync(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .registers 11
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .line 557
    if-eqz p2, :cond_3c

    .line 560
    if-ltz p1, :cond_34

    const/4 v0, 0x4

    if-gt p1, v0, :cond_34

    .line 569
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 571
    .local v1, "now":J
    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1, v2, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 572
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/Choreographer;->mFirstVSync:Z

    .line 574
    iget-boolean v4, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v4, :cond_2f

    .line 575
    iput-boolean v3, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 577
    iget-object v4, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 578
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {v4, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 579
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 581
    .end local v1    # "now":J
    .end local v4    # "msg":Landroid/os/Message;
    :cond_2f
    monitor-exit v0

    .line 582
    return-void

    .line 581
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_31

    throw v1

    .line 561
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .line 682
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 683
    return-void
.end method

.method public whitelist postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .registers 10
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;
    .param p2, "delayMillis"    # J

    .line 698
    if-eqz p1, :cond_c

    .line 702
    const/4 v1, 0x1

    sget-object v3, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 704
    return-void

    .line 699
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist postVsyncCallback(Landroid/view/Choreographer$VsyncCallback;)V
    .registers 8
    .param p1, "callback"    # Landroid/view/Choreographer$VsyncCallback;

    .line 626
    if-eqz p1, :cond_d

    .line 630
    const/4 v1, 0x1

    sget-object v3, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 631
    return-void

    .line 627
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .registers 6
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .line 649
    if-ltz p1, :cond_9

    const/4 v0, 0x4

    if-gt p1, v0, :cond_9

    .line 653
    invoke-direct {p0, p1, p2, p3}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 654
    return-void

    .line 650
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .line 715
    if-eqz p1, :cond_9

    .line 719
    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 720
    return-void

    .line 716
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeVsyncCallback(Landroid/view/Choreographer$VsyncCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/Choreographer$VsyncCallback;

    .line 730
    if-eqz p1, :cond_9

    .line 734
    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 735
    return-void

    .line 731
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o setFPSDivisor(I)V
    .registers 2
    .param p1, "divisor"    # I

    .line 903
    if-gtz p1, :cond_3

    const/4 p1, 0x1

    .line 904
    :cond_3
    iput p1, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    .line 905
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->setFPSDivisor(I)V

    .line 906
    return-void
.end method

.method public blacklist setMotionEventInfo(II)V
    .registers 5
    .param p1, "motionEventType"    # I
    .param p2, "touchMoveNum"    # I

    .line 370
    monitor-enter p0

    .line 371
    :try_start_1
    iput p2, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    .line 372
    iput p1, p0, Landroid/view/Choreographer;->mMotionEventType:I

    .line 373
    invoke-static {p1}, Landroid/util/BoostFramework$ScrollOptimizer;->setMotionType(I)V

    .line 375
    sget-boolean v0, Landroid/view/Choreographer;->MIUI_OPTS_INPUT:Z

    if-eqz v0, :cond_2d

    if-nez p1, :cond_2d

    .line 376
    invoke-static {}, Landroid/view/animation/ChoreographerInjectorStub;->getInstance()Landroid/view/animation/ChoreographerInjectorStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/animation/ChoreographerInjectorStub;->isDoFrameOptEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-eqz v0, :cond_2d

    .line 378
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 379
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 380
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 383
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2d
    monitor-exit p0

    .line 384
    return-void

    .line 383
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method
