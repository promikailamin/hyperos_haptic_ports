.class public abstract Landroid/view/DisplayEventReceiver;
.super Ljava/lang/Object;
.source "DisplayEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayEventReceiver$VsyncEventData;,
        Landroid/view/DisplayEventReceiver$FrameRateOverride;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_REGISTRATION_FRAME_RATE_OVERRIDE_FLAG:I = 0x2

.field public static final blacklist EVENT_REGISTRATION_MODE_CHANGED_FLAG:I = 0x1

.field public static final blacklist EVENT_REGISTRATION_MODE_REJECTED_FLAG:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DisplayEventReceiver"

.field public static final greylist-max-o VSYNC_SOURCE_APP:I = 0x0

.field public static final greylist-max-o VSYNC_SOURCE_SURFACE_FLINGER:I = 0x1

.field private static final blacklist sNativeAllocationRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private blacklist mFreeNativeResources:Ljava/lang/Runnable;

.field private greylist-max-o mMessageQueue:Landroid/os/MessageQueue;

.field private greylist mReceiverPtr:J

.field private final blacklist mVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 106
    nop

    .line 108
    const-class v0, Landroid/view/DisplayEventReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 109
    invoke-static {}, Landroid/view/DisplayEventReceiver;->nativeGetDisplayEventReceiverFinalizer()J

    move-result-wide v1

    .line 107
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/view/DisplayEventReceiver;->sNativeAllocationRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 106
    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Looper;)V
    .registers 8

    .line 119
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;IIJ)V

    .line 120
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;II)V
    .registers 10

    .line 123
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;IIJ)V

    .line 124
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;IIJ)V
    .registers 13

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;-><init>()V

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 137
    if-eqz p1, :cond_34

    .line 141
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    iput-object p1, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 142
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Landroid/view/DisplayEventReceiver;->mVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Landroid/view/DisplayEventReceiver;->nativeInit(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;IIJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    .line 146
    sget-object p1, Landroid/view/DisplayEventReceiver;->sNativeAllocationRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide p2, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    invoke-virtual {p1, p0, p2, p3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Landroid/view/DisplayEventReceiver;->mFreeNativeResources:Ljava/lang/Runnable;

    .line 148
    return-void

    .line 138
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "looper must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist dispatchHdcpLevelsChanged(JII)V
    .registers 5

    .line 418
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/DisplayEventReceiver;->onHdcpLevelsChanged(JII)V

    .line 419
    return-void
.end method

.method private greylist-max-r dispatchHotplug(JJZ)V
    .registers 6

    .line 389
    invoke-virtual/range {p0 .. p5}, Landroid/view/DisplayEventReceiver;->onHotplug(JJZ)V

    .line 390
    return-void
.end method

.method private blacklist dispatchHotplugConnectionError(JI)V
    .registers 4

    .line 394
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/DisplayEventReceiver;->onHotplugConnectionError(JI)V

    .line 395
    return-void
.end method

.method private blacklist dispatchModeChangedWithFrameRateOverrides(JJIJJJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;[F)V
    .registers 14

    .line 403
    invoke-virtual/range {p0 .. p13}, Landroid/view/DisplayEventReceiver;->onModeAndFrameRateOverridesChanged(JJIJJJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;[F)V

    .line 406
    return-void
.end method

.method private blacklist dispatchModeRejected(JI)V
    .registers 4

    .line 411
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/DisplayEventReceiver;->onModeRejected(JI)V

    .line 412
    return-void
.end method

.method private blacklist dispatchVsync(JJI)V
    .registers 13

    .line 382
    iget-object v6, p0, Landroid/view/DisplayEventReceiver;->mVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/view/DisplayEventReceiver;->onVsync(JJILandroid/view/DisplayEventReceiver$VsyncEventData;)V

    .line 383
    return-void
.end method

.method private static native blacklist nativeGetDisplayEventReceiverFinalizer()J
.end method

.method private static native blacklist nativeGetLatestVsyncEventData(J)Landroid/view/DisplayEventReceiver$VsyncEventData;
.end method

.method private static native blacklist nativeInit(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;IIJ)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/DisplayEventReceiver;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/DisplayEventReceiver$VsyncEventData;",
            ">;",
            "Landroid/os/MessageQueue;",
            "IIJ)J"
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeScheduleVsync(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public greylist-max-o dispose()V
    .registers 5

    .line 154
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 155
    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mFreeNativeResources:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 156
    iput-wide v2, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    .line 158
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 159
    return-void
.end method

.method blacklist getLatestVsyncEventData()Landroid/view/DisplayEventReceiver$VsyncEventData;
    .registers 3

    .line 376
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    invoke-static {v0, v1}, Landroid/view/DisplayEventReceiver;->nativeGetLatestVsyncEventData(J)Landroid/view/DisplayEventReceiver$VsyncEventData;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onHdcpLevelsChanged(JII)V
    .registers 5

    .line 333
    return-void
.end method

.method public greylist onHotplug(JJZ)V
    .registers 6

    .line 282
    return-void
.end method

.method public blacklist onHotplugConnectionError(JI)V
    .registers 4

    .line 292
    return-void
.end method

.method public blacklist onModeAndFrameRateOverridesChanged(JJIJJJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;[F)V
    .registers 14

    .line 314
    return-void
.end method

.method public blacklist onModeRejected(JI)V
    .registers 4

    .line 323
    return-void
.end method

.method public blacklist onVsync(JJILandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .registers 7

    .line 270
    return-void
.end method

.method public greylist scheduleVsync()V
    .registers 5

    .line 364
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 365
    const-string v0, "DisplayEventReceiver"

    const-string v1, "Attempted to schedule a vertical sync pulse but the display event receiver has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 368
    :cond_10
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    invoke-static {v0, v1}, Landroid/view/DisplayEventReceiver;->nativeScheduleVsync(J)V

    .line 370
    :goto_15
    return-void
.end method
