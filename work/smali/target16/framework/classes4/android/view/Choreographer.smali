.class public final Landroid/view/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$BufferStuffingState;,
        Landroid/view/Choreographer$FrameData;,
        Landroid/view/Choreographer$FrameHandler;,
        Landroid/view/Choreographer$FrameDisplayEventReceiver;,
        Landroid/view/Choreographer$CallbackQueue;,
        Landroid/view/Choreographer$FrameCallback;,
        Landroid/view/Choreographer$FrameTimeline;,
        Landroid/view/Choreographer$CallbackRecord;,
        Landroid/view/Choreographer$VsyncCallback;
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

.field private static final greylist-max-o DEFAULT_FRAME_DELAY:J

.field private static final greylist-max-o FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static final greylist-max-o MSG_DO_FRAME:I = 0x0

.field private static final greylist-max-o MSG_DO_SCHEDULE_CALLBACK:I = 0x2

.field private static final greylist-max-o MSG_DO_SCHEDULE_VSYNC:I = 0x1

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
.field private final blacklist mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

.field private greylist-max-o mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

.field private final greylist mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

.field private greylist-max-o mCallbacksRunning:Z

.field private greylist-max-o mDebugPrintNextFrameTimeDelta:Z

.field private final greylist mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

.field private greylist-max-o mFPSDivisor:I

.field private final blacklist mFrameData:Landroid/view/Choreographer$FrameData;

.field blacklist mFrameInfo:Landroid/graphics/FrameInfo;

.field private greylist-max-r mFrameIntervalNanos:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist-max-o mFrameScheduled:Z

.field private final greylist-max-o mHandler:Landroid/view/Choreographer$FrameHandler;

.field private volatile blacklist mInDoFrameCallback:Z

.field private blacklist mLastFrameIntervalNanos:J

.field private greylist mLastFrameTimeNanos:J

.field private blacklist mLastNoOffsetFrameTimeNanos:J

.field private final blacklist mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

.field private final greylist-max-p mLock:Ljava/lang/Object;

.field private final greylist-max-o mLooper:Landroid/os/Looper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .registers 1

    iget-object p0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    return-object p0
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

.method static bridge synthetic blacklist -$$Nest$sfgetUSE_VSYNC()Z
    .registers 1

    sget-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    return v0
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

    .line 111
    invoke-static {}, Landroid/view/Choreographer;->getDefaultFrameDelay()J

    move-result-wide v0

    sput-wide v0, Landroid/view/Choreographer;->DEFAULT_FRAME_DELAY:J

    .line 124
    sget-wide v0, Landroid/view/Choreographer;->DEFAULT_FRAME_DELAY:J

    sput-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 127
    new-instance v0, Landroid/view/Choreographer$1;

    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    .line 146
    new-instance v0, Landroid/view/Choreographer$2;

    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    .line 160
    invoke-static {}, Landroid/view/Choreographer;->getUseVsync()Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    .line 173
    const-string v0, "debug.choreographer.frametime"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    .line 178
    const-string v0, "debug.choreographer.skipwarning"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    .line 186
    new-instance v0, Landroid/view/Choreographer$3;

    invoke-direct {v0}, Landroid/view/Choreographer$3;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    .line 189
    new-instance v0, Landroid/view/Choreographer$4;

    invoke-direct {v0}, Landroid/view/Choreographer$4;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    .line 303
    const-string v0, "traversal"

    const-string v1, "commit"

    const-string v2, "input"

    const-string v3, "animation"

    const-string v4, "insets_animation"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Looper;I)V
    .registers 5

    .line 358
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;IJ)V

    .line 359
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Looper;IJ)V
    .registers 15

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 230
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    .line 231
    new-instance v1, Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {v1}, Landroid/view/DisplayEventReceiver$VsyncEventData;-><init>()V

    iput-object v1, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 233
    new-instance v1, Landroid/view/Choreographer$FrameData;

    invoke-direct {v1}, Landroid/view/Choreographer$FrameData;-><init>()V

    iput-object v1, p0, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    .line 272
    new-instance v2, Landroid/view/Choreographer$BufferStuffingState;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/Choreographer$BufferStuffingState;-><init>(Landroid/view/Choreographer-IA;)V

    iput-object v2, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    .line 297
    new-instance v2, Landroid/graphics/FrameInfo;

    invoke-direct {v2}, Landroid/graphics/FrameInfo;-><init>()V

    iput-object v2, p0, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    .line 362
    iput-object p1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    .line 363
    new-instance v2, Landroid/view/Choreographer$FrameHandler;

    invoke-direct {v2, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 364
    sget-boolean v2, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v2, :cond_44

    .line 365
    new-instance v4, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;IJ)V

    goto :goto_46

    .line 366
    :cond_44
    move-object v5, p0

    move-object v4, v3

    :goto_46
    iput-object v4, v5, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    .line 367
    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, v5, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 369
    const p1, 0x4e6e6b28    # 1.0E9f

    invoke-static {}, Landroid/view/Choreographer;->getRefreshRate()F

    move-result p2

    div-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, v5, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    .line 371
    const/4 p1, 0x5

    new-array p1, p1, [Landroid/view/Choreographer$CallbackQueue;

    iput-object p1, v5, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    .line 372
    nop

    :goto_5d
    const/4 p1, 0x4

    if-gt v1, p1, :cond_6c

    .line 373
    iget-object p1, v5, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    new-instance p2, Landroid/view/Choreographer$CallbackQueue;

    invoke-direct {p2, p0, v3}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer-IA;)V

    aput-object p2, p1, v1

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 376
    :cond_6c
    const-string p1, "debug.hwui.fps_divisor"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/Choreographer;->setFPSDivisor(I)V

    .line 377
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Looper;ILandroid/view/Choreographer-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;I)V

    return-void
.end method

.method private greylist-max-o dispose()V
    .registers 2

    .line 451
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->dispose()V

    .line 452
    return-void
.end method

.method private static blacklist getDefaultFrameDelay()J
    .registers 2

    .line 115
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method private static blacklist getDefaultFrameDelay$ravenwood()J
    .registers 2

    .line 120
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public static greylist getFrameDelay()J
    .registers 2

    .line 496
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    return-wide v0
.end method

.method public static whitelist getInstance()Landroid/view/Choreographer;
    .registers 1

    .line 400
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method static blacklist getInstanceForSurfaceControl(JLandroid/os/Looper;)Landroid/view/Choreographer;
    .registers 5

    .line 427
    if-eqz p2, :cond_9

    .line 430
    new-instance v0, Landroid/view/Choreographer;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p0, p1}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;IJ)V

    return-object v0

    .line 428
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The current thread must have a looper!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o getMainThreadInstance()Landroid/view/Choreographer;
    .registers 1

    .line 438
    sget-object v0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-object v0
.end method

.method private static greylist-max-o getRefreshRate()F
    .registers 2

    .line 382
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v0

    return v0
.end method

.method private static blacklist getRefreshRate$ravenwood()F
    .registers 1

    .line 389
    const/high16 v0, 0x42f00000    # 120.0f

    return v0
.end method

.method public static greylist getSfInstance()Landroid/view/Choreographer;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 410
    sget-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private static blacklist getUseVsync()Z
    .registers 2

    .line 164
    const-string v0, "debug.choreographer.vsync"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist getUseVsync$ravenwood()Z
    .registers 1

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o isRunningOnLooperThreadLocked()Z
    .registers 3

    .line 1280
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

    .line 1284
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 1285
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1286
    new-instance v0, Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v0, v1}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer-IA;)V

    goto :goto_11

    .line 1288
    :cond_b
    iget-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v2, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 1289
    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1291
    :goto_11
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    .line 1292
    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 1293
    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 1294
    return-object v0
.end method

.method private greylist-max-o postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .registers 10

    .line 620
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 621
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 622
    add-long/2addr p4, v1

    .line 623
    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v3, v3, p1

    invoke-virtual {v3, p4, p5, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 625
    cmp-long p3, p4, v1

    if-gtz p3, :cond_17

    .line 626
    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    goto :goto_29

    .line 628
    :cond_17
    iget-object p3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v1, 0x2

    invoke-virtual {p3, v1, p2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 629
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 630
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 631
    iget-object p1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {p1, p2, p4, p5}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 633
    :goto_29
    monitor-exit v0

    .line 634
    return-void

    .line 633
    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method private greylist-max-o recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .registers 3

    .line 1298
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 1299
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 1300
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1301
    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 1302
    return-void
.end method

.method public static greylist-max-o releaseInstance()V
    .registers 2

    .line 445
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    .line 446
    sget-object v1, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 447
    invoke-direct {v0}, Landroid/view/Choreographer;->dispose()V

    .line 448
    return-void
.end method

.method private greylist-max-o removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 683
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    :try_start_3
    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object p1, v1, p1

    invoke-virtual {p1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 685
    if-eqz p2, :cond_14

    if-nez p3, :cond_14

    .line 686
    iget-object p1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(ILjava/lang/Object;)V

    .line 688
    :cond_14
    monitor-exit v0

    .line 689
    return-void

    .line 688
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method private greylist-max-o scheduleFrameLocked(J)V
    .registers 8

    .line 873
    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v0, :cond_40

    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 875
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v1, :cond_24

    .line 883
    invoke-direct {p0}, Landroid/view/Choreographer;->isRunningOnLooperThreadLocked()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 884
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    goto :goto_40

    .line 886
    :cond_15
    iget-object p1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 887
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 888
    iget-object p2, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {p2, p1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 889
    goto :goto_40

    .line 891
    :cond_24
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    sget-wide v3, Landroid/view/Choreographer;->sFrameDelay:J

    add-long/2addr v1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 896
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 897
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 898
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 901
    :cond_40
    :goto_40
    return-void
.end method

.method private greylist-max-r scheduleVsyncLocked()V
    .registers 4

    .line 1272
    const-wide/16 v0, 0x8

    :try_start_2
    const-string v2, "Choreographer#scheduleVsyncLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1273
    iget-object v2, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v2}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_11

    .line 1275
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1276
    nop

    .line 1277
    return-void

    .line 1275
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1276
    throw v2
.end method

.method public static blacklist setFrameDelay(J)V
    .registers 2

    .line 516
    sput-wide p0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 517
    return-void
.end method

.method public static greylist-max-o subtractFrameDelay(J)J
    .registers 5

    .line 542
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 543
    cmp-long v2, p0, v0

    if-gtz v2, :cond_9

    const-wide/16 p0, 0x0

    goto :goto_a

    :cond_9
    sub-long/2addr p0, v0

    :goto_a
    return-wide p0
.end method

.method private blacklist traceMessage(Ljava/lang/String;)V
    .registers 4

    .line 938
    const-wide/16 v0, 0x8

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 939
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 940
    return-void
.end method


# virtual methods
.method greylist-max-o doCallbacks(IJ)V
    .registers 21

    .line 1186
    move-object/from16 v1, p0

    move/from16 v0, p1

    iget-object v2, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    invoke-static {v2}, Landroid/view/Choreographer$FrameData;->-$$Nest$fgetmFrameTimeNanos(Landroid/view/Choreographer$FrameData;)J

    move-result-wide v2

    .line 1187
    iget-object v4, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1191
    :try_start_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 1192
    iget-object v7, v1, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v7, v7, v0

    const-wide/32 v8, 0xf4240

    div-long v8, v5, v8

    invoke-virtual {v7, v8, v9}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v7

    .line 1194
    if-nez v7, :cond_22

    .line 1195
    monitor-exit v4

    return-void

    .line 1197
    :cond_22
    const/4 v8, 0x1

    iput-boolean v8, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 1207
    const/4 v8, 0x4

    const-wide/16 v9, 0x8

    if-ne v0, v8, :cond_50

    .line 1208
    sub-long v2, v5, v2

    .line 1209
    const-string v8, "jitterNanos"

    long-to-int v11, v2

    invoke-static {v9, v10, v8, v11}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1210
    const-wide/16 v11, 0x0

    cmp-long v8, p2, v11

    if-lez v8, :cond_50

    const-wide/16 v11, 0x2

    mul-long v11, v11, p2

    cmp-long v8, v2, v11

    if-ltz v8, :cond_50

    .line 1211
    rem-long v11, v2, p2

    add-long v11, v11, p2

    .line 1221
    sub-long v12, v5, v11

    .line 1222
    iput-wide v12, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 1223
    iget-object v11, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    iget-object v14, v1, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    move-wide v15, v2

    invoke-virtual/range {v11 .. v16}, Landroid/view/Choreographer$FrameData;->update(JLandroid/view/DisplayEventReceiver;J)Landroid/view/Choreographer$FrameTimeline;

    .line 1226
    :cond_50
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_d .. :try_end_51} :catchall_94

    .line 1228
    const/4 v2, 0x0

    :try_start_52
    sget-object v3, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1229
    move-object v0, v7

    :goto_5a
    if-eqz v0, :cond_64

    .line 1235
    iget-object v3, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    invoke-virtual {v0, v3}, Landroid/view/Choreographer$CallbackRecord;->run(Landroid/view/Choreographer$FrameData;)V

    .line 1229
    iget-object v0, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_63
    .catchall {:try_start_52 .. :try_end_63} :catchall_7c

    goto :goto_5a

    .line 1238
    :cond_64
    iget-object v3, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1239
    :try_start_67
    iput-boolean v2, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 1241
    :goto_69
    iget-object v0, v7, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1242
    invoke-direct {v1, v7}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 1243
    nop

    .line 1244
    if-nez v0, :cond_77

    .line 1245
    monitor-exit v3
    :try_end_72
    .catchall {:try_start_67 .. :try_end_72} :catchall_79

    .line 1246
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1247
    nop

    .line 1248
    return-void

    .line 1244
    :cond_77
    move-object v7, v0

    goto :goto_69

    .line 1245
    :catchall_79
    move-exception v0

    :try_start_7a
    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v0

    .line 1238
    :catchall_7c
    move-exception v0

    iget-object v3, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1239
    :try_start_80
    iput-boolean v2, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 1241
    :goto_82
    iget-object v2, v7, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1242
    invoke-direct {v1, v7}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 1243
    nop

    .line 1244
    if-eqz v2, :cond_8c

    move-object v7, v2

    goto :goto_82

    .line 1245
    :cond_8c
    monitor-exit v3
    :try_end_8d
    .catchall {:try_start_80 .. :try_end_8d} :catchall_91

    .line 1246
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1247
    throw v0

    .line 1245
    :catchall_91
    move-exception v0

    :try_start_92
    monitor-exit v3
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v0

    .line 1226
    :catchall_94
    move-exception v0

    :try_start_95
    monitor-exit v4
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v0
.end method

.method blacklist doFrame(JILandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .registers 33

    .line 1024
    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-object/from16 v0, p4

    iget-wide v5, v0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    .line 1027
    nop

    .line 1028
    nop

    .line 1029
    nop

    .line 1033
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->bufferStuffingRecovery()Z

    move-result v2

    const/4 v15, 0x1

    if-eqz v2, :cond_2d

    .line 1034
    invoke-virtual {v1, v3, v4, v0}, Landroid/view/Choreographer;->updateBufferStuffingState(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_23e

    goto :goto_2d

    .line 1046
    :pswitch_1e
    iget-object v0, v1, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget v2, v0, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I

    add-int/2addr v2, v15

    iput v2, v0, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I

    .line 1047
    invoke-direct {v1}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 1048
    return-void

    .line 1042
    :pswitch_29
    sub-long v7, v3, v5

    .line 1043
    goto :goto_2e

    .line 1038
    :pswitch_2c
    nop

    .line 1055
    :cond_2d
    :goto_2d
    move-wide v7, v3

    :goto_2e
    const-wide/16 v9, 0x8

    const/4 v2, 0x0

    :try_start_31
    iget-object v11, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    invoke-virtual {v11, v7, v8, v0}, Landroid/view/Choreographer$FrameData;->update(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$FrameTimeline;

    move-result-object v7

    .line 1056
    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 1057
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Choreographer#doFrame "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmVsyncId(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v10, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1059
    iput-boolean v15, v1, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    .line 1061
    :cond_59
    iget-object v8, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_5c
    .catchall {:try_start_31 .. :try_end_5c} :catchall_22c

    .line 1062
    :try_start_5c
    iget-boolean v11, v1, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v11, :cond_70

    .line 1063
    const-string v0, "Frame not scheduled"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    .line 1064
    monitor-exit v8
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_221

    .line 1168
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1169
    iput-boolean v2, v1, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    .line 1170
    nop

    .line 1173
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1064
    return-void

    .line 1066
    :cond_70
    :try_start_70
    iput-wide v3, v1, Landroid/view/Choreographer;->mLastNoOffsetFrameTimeNanos:J

    .line 1074
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 1077
    sub-long v20, v11, v3

    .line 1078
    cmp-long v13, v20, v5

    const-wide/16 v22, 0x0

    if-ltz v13, :cond_e5

    .line 1079
    nop

    .line 1080
    cmp-long v7, v5, v22

    if-nez v7, :cond_8e

    .line 1081
    const-string v7, "Choreographer"

    const-string v13, "Vsync data empty due to timeout"

    invoke-static {v7, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_70 .. :try_end_8a} :catchall_221

    move-wide/from16 v24, v9

    move-wide v13, v11

    goto :goto_bb

    .line 1083
    :cond_8e
    :try_start_8e
    rem-long v13, v20, v5
    :try_end_90
    .catchall {:try_start_8e .. :try_end_90} :catchall_da

    .line 1084
    sub-long v13, v11, v13

    .line 1085
    move-wide/from16 v24, v9

    :try_start_94
    div-long v9, v20, v5

    .line 1086
    sget v7, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    int-to-long v2, v7

    cmp-long v2, v9, v2

    if-ltz v2, :cond_bb

    .line 1087
    const-string v2, "Choreographer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " frames!  The application may be doing too much work on its main thread."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_bb
    :goto_bb
    iget-object v2, v1, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-boolean v2, v2, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z

    if-eqz v2, :cond_c5

    .line 1101
    sub-long/2addr v13, v5

    move-wide/from16 v17, v13

    goto :goto_c7

    .line 1100
    :cond_c5
    move-wide/from16 v17, v13

    .line 1107
    :goto_c7
    iget-object v2, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    iget-object v3, v1, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    move-object/from16 v16, v2

    move-object/from16 v19, v3

    invoke-virtual/range {v16 .. v21}, Landroid/view/Choreographer$FrameData;->update(JLandroid/view/DisplayEventReceiver;J)Landroid/view/Choreographer$FrameTimeline;

    move-result-object v7
    :try_end_d3
    .catchall {:try_start_94 .. :try_end_d3} :catchall_d8

    .line 1109
    move/from16 v19, v15

    move-object/from16 v16, v7

    goto :goto_ed

    .line 1145
    :catchall_d8
    move-exception v0

    goto :goto_dd

    :catchall_da
    move-exception v0

    move-wide/from16 v24, v9

    :goto_dd
    move-object/from16 v17, v8

    move-wide/from16 v7, v24

    const/4 v2, 0x0

    :goto_e2
    const/4 v15, 0x0

    goto/16 :goto_226

    .line 1078
    :cond_e5
    move-wide/from16 v24, v9

    move-wide/from16 v17, p1

    const/16 v19, 0x0

    move-object/from16 v16, v7

    .line 1112
    :goto_ed
    :try_start_ed
    iget-wide v2, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_ef
    .catchall {:try_start_ed .. :try_end_ef} :catchall_218

    cmp-long v2, v17, v2

    if-gez v2, :cond_120

    .line 1117
    :try_start_f3
    const-string v0, "Frame time goes backward"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    .line 1118
    iget-object v0, v1, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-boolean v0, v0, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z

    if-eqz v0, :cond_105

    .line 1119
    iget-object v0, v1, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget v2, v0, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I

    add-int/2addr v2, v15

    iput v2, v0, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I

    .line 1121
    :cond_105
    invoke-direct {v1}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 1122
    monitor-exit v8
    :try_end_109
    .catchall {:try_start_f3 .. :try_end_109} :catchall_118

    .line 1168
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1169
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    .line 1170
    if-eqz v19, :cond_114

    .line 1171
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 1173
    :cond_114
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 1122
    return-void

    .line 1145
    :catchall_118
    move-exception v0

    move-object/from16 v17, v8

    move/from16 v2, v19

    move-wide/from16 v7, v24

    goto :goto_e2

    .line 1125
    :cond_120
    :try_start_120
    iget v2, v1, Landroid/view/Choreographer;->mFPSDivisor:I
    :try_end_122
    .catchall {:try_start_120 .. :try_end_122} :catchall_218

    if-le v2, v15, :cond_166

    .line 1126
    :try_start_124
    iget-wide v2, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    sub-long v2, v17, v2

    .line 1127
    iget v4, v1, Landroid/view/Choreographer;->mFPSDivisor:I

    int-to-long v9, v4

    mul-long/2addr v9, v5

    cmp-long v4, v2, v9

    if-gez v4, :cond_159

    cmp-long v2, v2, v22

    if-lez v2, :cond_159

    .line 1128
    const-string v0, "Frame skipped due to FPSDivisor"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    .line 1129
    iget-object v0, v1, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-boolean v0, v0, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z
    :try_end_13d
    .catchall {:try_start_124 .. :try_end_13d} :catchall_15b

    if-eqz v0, :cond_146

    .line 1130
    :try_start_13f
    iget-object v0, v1, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget v2, v0, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I

    add-int/2addr v2, v15

    iput v2, v0, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I
    :try_end_146
    .catchall {:try_start_13f .. :try_end_146} :catchall_118

    .line 1132
    :cond_146
    :try_start_146
    invoke-direct {v1}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 1133
    monitor-exit v8
    :try_end_14a
    .catchall {:try_start_146 .. :try_end_14a} :catchall_15b

    .line 1168
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1169
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    .line 1170
    if-eqz v19, :cond_155

    .line 1171
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 1173
    :cond_155
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 1133
    return-void

    .line 1127
    :cond_159
    const/4 v2, 0x0

    goto :goto_167

    .line 1145
    :catchall_15b
    move-exception v0

    const/4 v2, 0x0

    move v15, v2

    move-object/from16 v17, v8

    move/from16 v2, v19

    move-wide/from16 v7, v24

    goto/16 :goto_226

    .line 1125
    :cond_166
    const/4 v2, 0x0

    .line 1137
    :goto_167
    move v3, v2

    :try_start_168
    iget-object v2, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    .line 1138
    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v4

    iget-wide v9, v4, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    .line 1139
    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v4

    iget-wide v13, v4, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J
    :try_end_176
    .catchall {:try_start_168 .. :try_end_176} :catchall_211

    move-object v4, v8

    move-wide v7, v9

    move-wide v9, v13

    :try_start_179
    iget-wide v13, v0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J
    :try_end_17b
    .catchall {:try_start_179 .. :try_end_17b} :catchall_20c

    .line 1137
    move v15, v3

    move-wide/from16 v26, v5

    move-wide/from16 v5, v17

    move-object/from16 v17, v4

    move-wide/from16 v3, p1

    :try_start_184
    invoke-virtual/range {v2 .. v14}, Landroid/graphics/FrameInfo;->setVsync(JJJJJJ)V

    .line 1141
    iput-boolean v15, v1, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 1142
    iput-wide v5, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 1143
    move-wide/from16 v2, v26

    iput-wide v2, v1, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    .line 1144
    iget-object v4, v1, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {v4, v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->copyFrom(Landroid/view/DisplayEventReceiver$VsyncEventData;)V

    .line 1145
    monitor-exit v17
    :try_end_195
    .catchall {:try_start_184 .. :try_end_195} :catchall_20a

    .line 1147
    if-eqz v19, :cond_1c7

    :try_start_197
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1c7

    .line 1148
    const-string v0, "Choreographer#doFrame - resynced to %d in %.1fms"

    invoke-static/range {v16 .. v16}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmVsyncId(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v7

    .line 1149
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v7

    sub-long/2addr v7, v11

    long-to-float v7, v7

    const v8, 0x358637bd    # 1.0E-6f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/Object;

    move-result-object v4

    .line 1148
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1bd
    .catchall {:try_start_197 .. :try_end_1bd} :catchall_1c3

    .line 1150
    move-wide/from16 v7, v24

    :try_start_1bf
    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_1c9

    .line 1168
    :catchall_1c3
    move-exception v0

    move-wide/from16 v7, v24

    goto :goto_207

    .line 1147
    :cond_1c7
    move-wide/from16 v7, v24

    .line 1153
    :goto_1c9
    const-wide/32 v9, 0xf4240

    div-long v4, v5, v9

    invoke-static/range {v16 .. v16}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmExpectedPresentationTimeNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Landroid/view/animation/AnimationUtils;->lockAnimationClock(JJ)V

    .line 1156
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v0}, Landroid/graphics/FrameInfo;->markInputHandlingStart()V

    .line 1157
    invoke-virtual {v1, v15, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 1159
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v0}, Landroid/graphics/FrameInfo;->markAnimationsStart()V

    .line 1160
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 1161
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 1163
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v0}, Landroid/graphics/FrameInfo;->markPerformTraversalsStart()V

    .line 1164
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 1166
    const/4 v0, 0x4

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V
    :try_end_1f7
    .catchall {:try_start_1bf .. :try_end_1f7} :catchall_206

    .line 1168
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1169
    iput-boolean v15, v1, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    .line 1170
    if-eqz v19, :cond_201

    .line 1171
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1173
    :cond_201
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1174
    nop

    .line 1182
    return-void

    .line 1168
    :catchall_206
    move-exception v0

    :goto_207
    move/from16 v2, v19

    goto :goto_22f

    .line 1145
    :catchall_20a
    move-exception v0

    goto :goto_215

    :catchall_20c
    move-exception v0

    move v15, v3

    move-object/from16 v17, v4

    goto :goto_215

    :catchall_211
    move-exception v0

    move v15, v3

    move-object/from16 v17, v8

    :goto_215
    move-wide/from16 v7, v24

    goto :goto_21e

    :catchall_218
    move-exception v0

    move-object/from16 v17, v8

    move-wide/from16 v7, v24

    const/4 v15, 0x0

    :goto_21e
    move/from16 v2, v19

    goto :goto_226

    :catchall_221
    move-exception v0

    move v15, v2

    move-object/from16 v17, v8

    move-wide v7, v9

    :goto_226
    :try_start_226
    monitor-exit v17
    :try_end_227
    .catchall {:try_start_226 .. :try_end_227} :catchall_22a

    :try_start_227
    throw v0
    :try_end_228
    .catchall {:try_start_227 .. :try_end_228} :catchall_228

    .line 1168
    :catchall_228
    move-exception v0

    goto :goto_22f

    .line 1145
    :catchall_22a
    move-exception v0

    goto :goto_226

    .line 1168
    :catchall_22c
    move-exception v0

    move v15, v2

    move-wide v7, v9

    :goto_22f
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1169
    iput-boolean v15, v1, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    .line 1170
    if-eqz v2, :cond_239

    .line 1171
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1173
    :cond_239
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1174
    throw v0

    nop

    :pswitch_data_23e
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method

.method greylist-max-o doScheduleCallback(I)V
    .registers 6

    .line 1259
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1260
    :try_start_3
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v1, :cond_18

    .line 1261
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1262
    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object p1, v3, p1

    invoke-virtual {p1, v1, v2}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1263
    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    .line 1266
    :cond_18
    monitor-exit v0

    .line 1267
    return-void

    .line 1266
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method greylist-max-o doScheduleVsync()V
    .registers 3

    .line 1251
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1252
    :try_start_3
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-eqz v1, :cond_a

    .line 1253
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 1255
    :cond_a
    monitor-exit v0

    .line 1256
    return-void

    .line 1255
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "Choreographer:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mFrameScheduled="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 560
    iget-boolean p1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 561
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mLastFrameTime="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 562
    iget-wide v0, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public blacklist getExpectedPresentationTimeMillis()J
    .registers 5

    .line 850
    invoke-virtual {p0}, Landroid/view/Choreographer;->getExpectedPresentationTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getExpectedPresentationTimeNanos()J
    .registers 3

    .line 837
    iget-object v0, p0, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameData;->getPreferredFrameTimeline()Landroid/view/Choreographer$FrameTimeline;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameTimeline;->getExpectedPresentationTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getFrameDeadline()J
    .registers 3

    .line 928
    iget-object v0, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    return-wide v0
.end method

.method public greylist-max-o getFrameIntervalNanos()J
    .registers 4

    .line 551
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_3
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    monitor-exit v0

    return-wide v1

    .line 553
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public greylist getFrameTime()J
    .registers 5

    .line 785
    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist getFrameTimeNanos()J
    .registers 4

    .line 800
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 801
    :try_start_3
    iget-boolean v1, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    if-eqz v1, :cond_14

    .line 805
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

    .line 802
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This method must only be called as part of a callback while a frame is in progress."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 806
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public greylist-max-o getLastFrameTimeNanos()J
    .registers 4

    .line 816
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
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

    .line 818
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public blacklist getLatestExpectedPresentTimeNanos()J
    .registers 3

    .line 864
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    if-nez v0, :cond_9

    .line 865
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    .line 868
    :cond_9
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->getLatestVsyncEventData()Landroid/view/DisplayEventReceiver$VsyncEventData;

    move-result-object v0

    .line 869
    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    .line 868
    return-wide v0
.end method

.method public blacklist getLooper()Landroid/os/Looper;
    .registers 2

    .line 475
    iget-object v0, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public blacklist getVsyncId()J
    .registers 6

    .line 912
    iget-boolean v0, p0, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    if-nez v0, :cond_36

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 913
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 914
    invoke-virtual {v3}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v3

    iget-wide v3, v3, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v4

    if-ne p0, v4, :cond_24

    const/4 v4, 0x1

    goto :goto_25

    :cond_24
    const/4 v4, 0x0

    :goto_25
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 913
    const-string v4, "unsync-vsync-id=%d isSfChoreo=%s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 915
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 917
    :cond_36
    iget-object v0, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    return-wide v0
.end method

.method greylist invalidate()V
    .registers 1

    .line 460
    invoke-direct {p0}, Landroid/view/Choreographer;->dispose()V

    .line 461
    return-void
.end method

.method blacklist isTheLooperSame(Landroid/os/Looper;)Z
    .registers 3

    .line 468
    iget-object v0, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public blacklist onWaitForBufferRelease(J)V
    .registers 7

    .line 281
    iget-wide v0, p0, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-lez p1, :cond_11

    .line 282
    iget-object p1, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-object p1, p1, Landroid/view/Choreographer$BufferStuffingState;->isStuffed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 284
    :cond_11
    return-void
.end method

.method public greylist postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .registers 10

    .line 581
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 582
    return-void
.end method

.method public greylist postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .registers 7

    .line 602
    if-eqz p2, :cond_13

    .line 605
    if-ltz p1, :cond_b

    const/4 v0, 0x4

    if-gt p1, v0, :cond_b

    .line 609
    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 610
    return-void

    .line 606
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callbackType is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 603
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "action must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 4

    .line 703
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 704
    return-void
.end method

.method public whitelist postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .registers 10

    .line 719
    if-eqz p1, :cond_c

    .line 723
    const/4 v1, 0x1

    sget-object v3, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 725
    return-void

    .line 720
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist postVsyncCallback(Landroid/view/Choreographer$VsyncCallback;)V
    .registers 8

    .line 647
    if-eqz p1, :cond_d

    .line 651
    sget-object v3, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 652
    return-void

    .line 648
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .registers 5

    .line 670
    if-ltz p1, :cond_9

    const/4 v0, 0x4

    if-gt p1, v0, :cond_9

    .line 674
    invoke-direct {p0, p1, p2, p3}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 675
    return-void

    .line 671
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callbackType is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 4

    .line 736
    if-eqz p1, :cond_9

    .line 740
    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 741
    return-void

    .line 737
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist removeVsyncCallback(Landroid/view/Choreographer$VsyncCallback;)V
    .registers 4

    .line 751
    if-eqz p1, :cond_9

    .line 755
    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 756
    return-void

    .line 752
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method greylist-max-o setFPSDivisor(I)V
    .registers 2

    .line 932
    if-gtz p1, :cond_3

    const/4 p1, 0x1

    .line 933
    :cond_3
    iput p1, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    .line 934
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->setFPSDivisor(I)V

    .line 935
    return-void
.end method

.method blacklist updateBufferStuffingState(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;
    .registers 14

    .line 949
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->bufferStuffingMultiRecovery()Z

    move-result v0

    const-string v1, ", recover frame"

    const-string v2, "Thread "

    const/4 v3, 0x1

    const-string v4, "Buffer stuffing recovery"

    const/4 v5, 0x0

    const-wide/16 v6, 0x8

    if-eqz v0, :cond_57

    .line 952
    iget-object v0, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-object v0, v0, Landroid/view/Choreographer$BufferStuffingState;->isStuffed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 954
    iget-object p1, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-boolean p1, p1, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z

    if-nez p1, :cond_46

    .line 955
    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 956
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 958
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 956
    invoke-static {v6, v7, v4, p1, v5}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 960
    :cond_42
    iget-object p1, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iput-boolean v3, p1, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z

    .line 962
    :cond_46
    const-string p1, "buffer stuffed"

    invoke-static {v6, v7, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 963
    sget-object p1, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->DELAY_FRAME:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    return-object p1

    .line 967
    :cond_4e
    iget-object v0, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-boolean v0, v0, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z

    if-nez v0, :cond_93

    .line 968
    sget-object p1, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->NONE:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    return-object p1

    .line 971
    :cond_57
    iget-object v0, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-boolean v0, v0, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z

    if-nez v0, :cond_93

    .line 972
    iget-object p1, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-object p1, p1, Landroid/view/Choreographer$BufferStuffingState;->isStuffed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_6a

    .line 973
    sget-object p1, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->NONE:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    return-object p1

    .line 976
    :cond_6a
    iget-object p1, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iput-boolean v3, p1, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z

    .line 977
    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_90

    .line 978
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 980
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 978
    invoke-static {v6, v7, v4, p1, v5}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 982
    :cond_90
    sget-object p1, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->DELAY_FRAME:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    return-object p1

    .line 990
    :cond_93
    iget-object v0, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget v0, v0, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I

    add-int/2addr v0, v3

    .line 991
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    const-wide/16 v8, 0x0

    cmp-long v1, v1, v8

    if-lez v1, :cond_a8

    .line 992
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastNoOffsetFrameTimeNanos:J

    sub-long/2addr p1, v1

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    div-long v8, p1, v1

    goto :goto_a9

    :cond_a8
    nop

    .line 998
    :goto_a9
    int-to-long p1, v0

    cmp-long p1, v8, p1

    if-lez p1, :cond_bf

    .line 1002
    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_b7

    .line 1003
    invoke-static {v6, v7, v4, v5}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 1006
    :cond_b7
    iget-object p1, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    invoke-virtual {p1}, Landroid/view/Choreographer$BufferStuffingState;->reset()V

    .line 1007
    sget-object p1, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->NONE:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    return-object p1

    .line 1013
    :cond_bf
    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_e3

    .line 1014
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Negative offset of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide p2, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ns added to animation"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, v7, v4, p1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_e3
    sget-object p1, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->OFFSET:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    return-object p1
.end method
