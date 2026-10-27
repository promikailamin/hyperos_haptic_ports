.class public Lcom/android/server/wm/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public final mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

.field public final mContext:Landroid/content/Context;

.field public mDebugFireable:Z

.field public mDisplayCutoutTouchableRegionSize:I

.field public final mDownPointerId:[I

.field public mDownPointers:I

.field public final mDownTime:[J

.field public final mDownX:[F

.field public final mDownY:[F

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public final mHandler:Landroid/os/Handler;

.field public mLastFlingTime:J

.field public mMouseHoveringAtBottom:Z

.field public mMouseHoveringAtLeft:Z

.field public mMouseHoveringAtRight:Z

.field public mMouseHoveringAtTop:Z

.field public mSwipeDistanceThreshold:I

.field public mSwipeFireable:Z

.field public final mSwipeStartThreshold:Landroid/graphics/Rect;

.field public screenHeight:I

.field public screenWidth:I


# direct methods
.method public static synthetic $r8$lambda$ny76CjJQ3d_Eeus7bZqFDsxdevk(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->lambda$systemReady$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastFlingTime(Lcom/android/server/wm/SystemGesturesPointerEventListener;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fputmLastFlingTime(Lcom/android/server/wm/SystemGesturesPointerEventListener;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;)V
    .registers 6

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    const/16 v0, 0x20

    .line 77
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 78
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    .line 79
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    .line 80
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 96
    const-string v0, "context"

    invoke-static {v0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    .line 98
    const-string p1, "callbacks"

    invoke-static {p1, p3}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    .line 99
    invoke-virtual {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    return-void
.end method

.method public static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_3

    return-object p1

    .line 150
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must not be null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isTrackpadThreeFingerSwipe(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 352
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    const/16 v0, 0x35

    .line 353
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final captureDown(Landroid/view/MotionEvent;I)V
    .registers 6

    .line 301
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 306
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    aput v2, v1, v0

    .line 307
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    aput p2, v1, v0

    .line 308
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    aput-wide p1, p0, v0

    :cond_23
    return-void
.end method

.method public currentGestureStartedInRegion(Landroid/graphics/Region;)Z
    .registers 4

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    aget p0, p0, v1

    float-to-int p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    return p0
.end method

.method public final detectSwipe(IJFF)I
    .registers 12

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    aget v0, v0, p1

    .line 383
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    aget v1, v1, p1

    .line 384
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    aget-wide v2, v2, p1

    sub-long/2addr p2, v2

    .line 387
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    const-wide/16 v3, 0x1f4

    if-gtz v2, :cond_26

    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    cmpl-float v2, p5, v2

    if-lez v2, :cond_26

    cmp-long v2, p2, v3

    if-gez v2, :cond_26

    const/4 p0, 0x1

    return p0

    .line 392
    :cond_26
    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_3e

    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpg-float p5, p5, v1

    if-gez p5, :cond_3e

    cmp-long p5, p2, v3

    if-gez p5, :cond_3e

    const/4 p0, 0x2

    return p0

    .line 397
    :cond_3e
    iget p5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, v1

    int-to-float p5, p5

    cmpl-float p5, v0, p5

    if-ltz p5, :cond_57

    iget p5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p5, p5

    sub-float p5, v0, p5

    cmpg-float p5, p4, p5

    if-gez p5, :cond_57

    cmp-long p5, p2, v3

    if-gez p5, :cond_57

    const/4 p0, 0x3

    return p0

    .line 402
    :cond_57
    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_6c

    iget p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    cmpl-float p0, p4, v0

    if-lez p0, :cond_6c

    cmp-long p0, p2, v3

    if-gez p0, :cond_6c

    const/4 p0, 0x4

    return p0

    :cond_6c
    const/4 p0, 0x0

    return p0
.end method

.method public final detectSwipe(Landroid/view/MotionEvent;)I
    .registers 13

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_4b

    .line 360
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 361
    invoke-virtual {p0, v4}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v6

    const/4 v4, -0x1

    if-eq v6, v4, :cond_46

    move v4, v2

    :goto_18
    if-ge v4, v0, :cond_32

    .line 364
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    .line 365
    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v9

    .line 366
    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v10

    move-object v5, p0

    .line 367
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result p0

    if-eqz p0, :cond_2e

    return p0

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    move-object p0, v5

    goto :goto_18

    :cond_32
    move-object v5, p0

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result p0

    if-eqz p0, :cond_47

    return p0

    :cond_46
    move-object v5, p0

    :cond_47
    add-int/lit8 v3, v3, 0x1

    move-object p0, v5

    goto :goto_a

    :cond_4b
    return v2
.end method

.method public final detectTrackpadThreeFingerSwipe(Landroid/view/MotionEvent;)I
    .registers 6

    .line 332
    invoke-static {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->isTrackpadThreeFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 336
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    aget v2, v2, v1

    sub-float/2addr v0, v2

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    aget v2, v2, v1

    sub-float/2addr p1, v2

    .line 338
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x0

    if-gez v2, :cond_3a

    .line 339
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_4d

    cmpl-float p0, p1, v3

    if-lez p0, :cond_38

    const/4 p0, 0x1

    return p0

    :cond_38
    const/4 p0, 0x2

    return p0

    .line 343
    :cond_3a
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_4d

    cmpl-float p0, v0, v3

    if-lez p0, :cond_4b

    const/4 p0, 0x4

    return p0

    :cond_4b
    const/4 p0, 0x3

    return p0

    :cond_4d
    return v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SystemGestures"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mDisplayCutoutTouchableRegionSize="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    iget p2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 415
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSwipeStartThreshold="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 416
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSwipeDistanceThreshold="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public final findIndex(I)I
    .registers 5

    const/4 v0, 0x0

    .line 319
    :goto_1
    iget v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v1, :cond_f

    .line 320
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/16 v0, 0x20

    const/4 v2, -0x1

    if-eq v1, v0, :cond_20

    if-ne p1, v2, :cond_17

    goto :goto_20

    .line 327
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v0, v1

    return v1

    :cond_20
    :goto_20
    return v2
.end method

.method public final synthetic lambda$systemReady$0()V
    .registers 5

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 167
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    if-nez v1, :cond_27

    .line 170
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create GestureDetector, display removed:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SystemGestures"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 173
    :cond_27
    new-instance v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$1;

    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;

    invoke-direct {v2, p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V

    iget-object v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/wm/SystemGesturesPointerEventListener$1;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public onConfigurationChanged()V
    .registers 6

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105038e

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 112
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    const v1, 0x105038d

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 117
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    const/4 v2, 0x0

    .line 118
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 119
    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    if-eqz v1, :cond_92

    const v3, 0x105018f

    .line 123
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    .line 125
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v0

    .line 126
    aget-object v1, v0, v2

    if-eqz v1, :cond_50

    .line 127
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 128
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v1, v4

    .line 127
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    :cond_50
    const/4 v1, 0x1

    .line 130
    aget-object v1, v0, v1

    if-eqz v1, :cond_66

    .line 131
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 132
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v1, v4

    .line 131
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->top:I

    :cond_66
    const/4 v1, 0x2

    .line 134
    aget-object v1, v0, v1

    if-eqz v1, :cond_7c

    .line 135
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 136
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v1, v4

    .line 135
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->right:I

    :cond_7c
    const/4 v1, 0x3

    .line 138
    aget-object v0, v0, v1

    if-eqz v0, :cond_92

    .line 139
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 140
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v0, p0

    .line 139
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_92
    return-void
.end method

.method public onDisplayInfoChanged(Landroid/view/DisplayInfo;)V
    .registers 3

    .line 103
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    .line 104
    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    .line 105
    invoke-virtual {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 9

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 183
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13e

    if-eq v0, v2, :cond_134

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_d9

    if-eq v0, v3, :cond_134

    const/4 v3, 0x5

    if-eq v0, v3, :cond_bd

    const/4 v3, 0x7

    if-eq v0, v3, :cond_27

    goto/16 :goto_133

    :cond_27
    const/16 v0, 0x2002

    .line 256
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 259
    iget-boolean v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    const/4 v4, 0x0

    if-nez v3, :cond_48

    cmpl-float v5, v0, v4

    if-nez v5, :cond_48

    .line 260
    iget-object v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v3}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtLeft()V

    .line 261
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    goto :goto_55

    :cond_48
    if-eqz v3, :cond_55

    cmpl-float v3, v0, v4

    if-lez v3, :cond_55

    .line 263
    iget-object v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v3}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromLeft()V

    .line 264
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    .line 266
    :cond_55
    :goto_55
    iget-boolean v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    if-nez v3, :cond_65

    cmpl-float v5, p1, v4

    if-nez v5, :cond_65

    .line 267
    iget-object v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v3}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtTop()V

    .line 268
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    goto :goto_72

    :cond_65
    if-eqz v3, :cond_72

    cmpl-float v3, p1, v4

    if-lez v3, :cond_72

    .line 270
    iget-object v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v3}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromTop()V

    .line 271
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    .line 273
    :cond_72
    :goto_72
    iget-boolean v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    if-nez v3, :cond_86

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v4, v2

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_86

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtRight()V

    .line 275
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    goto :goto_97

    :cond_86
    if-eqz v3, :cond_97

    .line 276
    iget v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_97

    .line 277
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromRight()V

    .line 278
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    .line 280
    :cond_97
    :goto_97
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    if-nez v0, :cond_ab

    iget v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_ab

    .line 281
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtBottom()V

    .line 282
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    return-void

    :cond_ab
    if-eqz v0, :cond_133

    .line 283
    iget v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_133

    .line 284
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromBottom()V

    .line 285
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    return-void

    .line 208
    :cond_bd
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 209
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v0, :cond_133

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ge p1, v3, :cond_cf

    move v1, v2

    :cond_cf
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez v1, :cond_133

    .line 213
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    return-void

    .line 218
    :cond_d9
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v0, :cond_133

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectTrackpadThreeFingerSwipe(Landroid/view/MotionEvent;)I

    move-result v0

    if-nez v0, :cond_e5

    move v5, v2

    goto :goto_e6

    :cond_e5
    move v5, v1

    .line 220
    :goto_e6
    iput-boolean v5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    const/4 v6, 0x4

    if-nez v5, :cond_10b

    if-ne v0, v2, :cond_f3

    .line 224
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    return-void

    :cond_f3
    if-ne v0, v4, :cond_fb

    .line 227
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    return-void

    :cond_fb
    if-ne v0, v3, :cond_103

    .line 230
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    return-void

    :cond_103
    if-ne v0, v6, :cond_133

    .line 233
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromLeft()V

    return-void

    .line 238
    :cond_10b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result p1

    if-nez p1, :cond_112

    move v1, v2

    .line 239
    :cond_112
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-ne p1, v2, :cond_11c

    .line 242
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    return-void

    :cond_11c
    if-ne p1, v4, :cond_124

    .line 245
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    return-void

    :cond_124
    if-ne p1, v3, :cond_12c

    .line 248
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    return-void

    :cond_12c
    if-ne p1, v6, :cond_133

    .line 251
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromLeft()V

    :cond_133
    :goto_133
    return-void

    .line 291
    :cond_134
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 292
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 293
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onUpOrCancel()V

    return-void

    .line 185
    :cond_13e
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 186
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 187
    iput v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 188
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 189
    iget-boolean p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    if-eqz p1, :cond_152

    .line 190
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    .line 191
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromLeft()V

    .line 193
    :cond_152
    iget-boolean p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    if-eqz p1, :cond_15d

    .line 194
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    .line 195
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromTop()V

    .line 197
    :cond_15d
    iget-boolean p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    if-eqz p1, :cond_168

    .line 198
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    .line 199
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromRight()V

    .line 201
    :cond_168
    iget-boolean p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    if-eqz p1, :cond_173

    .line 202
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    .line 203
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromBottom()V

    .line 205
    :cond_173
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onDown()V

    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/SystemGesturesPointerEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
