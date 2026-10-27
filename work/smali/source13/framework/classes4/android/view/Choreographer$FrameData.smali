.class public Landroid/view/Choreographer$FrameData;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameData"
.end annotation


# static fields
.field static final blacklist INVALID_FRAME_TIMELINES:[Landroid/view/Choreographer$FrameTimeline;


# instance fields
.field private blacklist mFrameTimeNanos:J

.field private blacklist mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

.field private blacklist mPreferredFrameTimeline:Landroid/view/Choreographer$FrameTimeline;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFrameTimeNanos(Landroid/view/Choreographer$FrameData;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1281
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/Choreographer$FrameTimeline;

    sput-object v0, Landroid/view/Choreographer$FrameData;->INVALID_FRAME_TIMELINES:[Landroid/view/Choreographer$FrameTimeline;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 1282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1283
    sget-object v0, Landroid/view/Choreographer$FrameData;->INVALID_FRAME_TIMELINES:[Landroid/view/Choreographer$FrameTimeline;

    iput-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    .line 1284
    sget-object v0, Landroid/view/Choreographer$FrameTimeline;->INVALID_FRAME_TIMELINE:Landroid/view/Choreographer$FrameTimeline;

    iput-object v0, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimeline:Landroid/view/Choreographer$FrameTimeline;

    .line 1285
    return-void
.end method

.method constructor blacklist <init>(JLandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .registers 15
    .param p1, "frameTimeNanos"    # J
    .param p3, "vsyncEventData"    # Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 1287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1288
    iget-object v0, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    array-length v0, v0

    new-array v0, v0, [Landroid/view/Choreographer$FrameTimeline;

    .line 1290
    .local v0, "frameTimelines":[Landroid/view/Choreographer$FrameTimeline;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    array-length v2, v2

    if-ge v1, v2, :cond_23

    .line 1291
    iget-object v2, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    aget-object v2, v2, v1

    .line 1293
    .local v2, "frameTimeline":Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    new-instance v10, Landroid/view/Choreographer$FrameTimeline;

    iget-wide v4, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    iget-wide v6, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentTime:J

    iget-wide v8, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/view/Choreographer$FrameTimeline;-><init>(JJJ)V

    aput-object v10, v0, v1

    .line 1290
    .end local v2    # "frameTimeline":Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1296
    .end local v1    # "i":I
    :cond_23
    iput-wide p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    .line 1297
    iput-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    .line 1298
    iget v1, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimeline:Landroid/view/Choreographer$FrameTimeline;

    .line 1300
    return-void
.end method

.method private blacklist convertFrameTimelines(Landroid/view/DisplayEventReceiver$VsyncEventData;)[Landroid/view/Choreographer$FrameTimeline;
    .registers 13
    .param p1, "vsyncEventData"    # Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 1336
    iget-object v0, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    array-length v0, v0

    new-array v0, v0, [Landroid/view/Choreographer$FrameTimeline;

    .line 1338
    .local v0, "frameTimelines":[Landroid/view/Choreographer$FrameTimeline;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    array-length v2, v2

    if-ge v1, v2, :cond_20

    .line 1339
    iget-object v2, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    aget-object v2, v2, v1

    .line 1341
    .local v2, "frameTimeline":Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    new-instance v10, Landroid/view/Choreographer$FrameTimeline;

    iget-wide v4, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    iget-wide v6, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentTime:J

    iget-wide v8, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/view/Choreographer$FrameTimeline;-><init>(JJJ)V

    aput-object v10, v0, v1

    .line 1338
    .end local v2    # "frameTimeline":Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1344
    .end local v1    # "i":I
    :cond_20
    return-object v0
.end method


# virtual methods
.method public whitelist getFrameTimeNanos()J
    .registers 3

    .line 1318
    iget-wide v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    return-wide v0
.end method

.method public whitelist getFrameTimelines()[Landroid/view/Choreographer$FrameTimeline;
    .registers 2

    .line 1325
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    return-object v0
.end method

.method public whitelist getPreferredFrameTimeline()Landroid/view/Choreographer$FrameTimeline;
    .registers 2

    .line 1331
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimeline:Landroid/view/Choreographer$FrameTimeline;

    return-object v0
.end method

.method blacklist updateFrameData(J)V
    .registers 7
    .param p1, "frameTimeNanos"    # J

    .line 1307
    iput-wide p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    .line 1308
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 1312
    .local v3, "ft":Landroid/view/Choreographer$FrameTimeline;
    invoke-virtual {v3}, Landroid/view/Choreographer$FrameTimeline;->resetVsyncId()V

    .line 1308
    .end local v3    # "ft":Landroid/view/Choreographer$FrameTimeline;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1314
    :cond_10
    return-void
.end method
