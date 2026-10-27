.class final Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTouchNavigationHandler"
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_HEIGHT_MILLIMETERS:F = 48.0f

.field private static final greylist-max-o DEFAULT_WIDTH_MILLIMETERS:F = 48.0f

.field private static final greylist-max-o FLING_TICK_DECAY:F = 0.8f

.field private static final greylist-max-o LOCAL_DEBUG:Z = false

.field private static final greylist-max-o LOCAL_TAG:Ljava/lang/String; = "SyntheticTouchNavigationHandler"

.field private static final greylist-max-o MAX_FLING_VELOCITY_TICKS_PER_SECOND:F = 20.0f

.field private static final greylist-max-o MIN_FLING_VELOCITY_TICKS_PER_SECOND:F = 6.0f

.field private static final greylist-max-o TICK_DISTANCE_MILLIMETERS:I = 0xc


# instance fields
.field private greylist-max-o mAccumulatedX:F

.field private greylist-max-o mAccumulatedY:F

.field private greylist-max-o mActivePointerId:I

.field private greylist-max-o mConfigMaxFlingVelocity:F

.field private greylist-max-o mConfigMinFlingVelocity:F

.field private greylist-max-o mConfigTickDistance:F

.field private greylist-max-o mConsumedMovement:Z

.field private greylist-max-o mCurrentDeviceId:I

.field private greylist-max-o mCurrentDeviceSupported:Z

.field private greylist-max-o mCurrentSource:I

.field private final greylist-max-o mFlingRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mFlingVelocity:F

.field private greylist-max-o mFlinging:Z

.field private greylist-max-o mLastX:F

.field private greylist-max-o mLastY:F

.field private greylist-max-o mPendingKeyCode:I

.field private greylist-max-o mPendingKeyDownTime:J

.field private greylist-max-o mPendingKeyMetaState:I

.field private greylist-max-o mPendingKeyRepeatCount:I

.field private greylist-max-o mStartX:F

.field private greylist-max-o mStartY:F

.field private greylist-max-o mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlingVelocity(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)F
    .registers 1

    iget p0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingKeyCode(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I
    .registers 1

    iget p0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingKeyMetaState(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I
    .registers 1

    iget p0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlingVelocity(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;F)V
    .registers 2

    iput p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlinging(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinishKeys(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostFling(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postFling(J)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendKeyDownOrRepeat(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;JII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 8135
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 8136
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    .line 8085
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    .line 8105
    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    .line 8127
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    .line 8425
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;-><init>(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingRunnable:Ljava/lang/Runnable;

    .line 8137
    return-void
.end method

.method private greylist-max-o cancelFling()V
    .registers 2

    .line 8419
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    if-eqz v0, :cond_c

    .line 8420
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8421
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    .line 8423
    :cond_c
    return-void
.end method

.method private greylist-max-o consumeAccumulatedMovement(JIFII)F
    .registers 8
    .param p1, "time"    # J
    .param p3, "metaState"    # I
    .param p4, "accumulator"    # F
    .param p5, "negativeKeyCode"    # I
    .param p6, "positiveKeyCode"    # I

    .line 8306
    :goto_0
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    neg-float v0, v0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_e

    .line 8307
    invoke-direct {p0, p1, p2, p5, p3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V

    .line 8308
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    add-float/2addr p4, v0

    goto :goto_0

    .line 8310
    :cond_e
    :goto_e
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_1b

    .line 8311
    invoke-direct {p0, p1, p2, p6, p3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V

    .line 8312
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    sub-float/2addr p4, v0

    goto :goto_e

    .line 8314
    :cond_1b
    return p4
.end method

.method private greylist-max-o consumeAccumulatedMovement(JI)V
    .registers 16
    .param p1, "time"    # J
    .param p3, "metaState"    # I

    .line 8285
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 8286
    .local v0, "absX":F
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 8287
    .local v1, "absY":F
    cmpl-float v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_2c

    .line 8288
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_45

    .line 8289
    iget v9, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    const/16 v10, 0x15

    const/16 v11, 0x16

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v5 .. v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->consumeAccumulatedMovement(JIFII)F

    move-result v2

    iput v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    .line 8291
    iput v4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    .line 8292
    iput-boolean v3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    goto :goto_45

    .line 8295
    :cond_2c
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_45

    .line 8296
    iget v9, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    const/16 v10, 0x13

    const/16 v11, 0x14

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v5 .. v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->consumeAccumulatedMovement(JIFII)F

    move-result v2

    iput v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    .line 8298
    iput v4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    .line 8299
    iput-boolean v3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    .line 8302
    :cond_45
    :goto_45
    return-void
.end method

.method private greylist-max-o finishKeys(J)V
    .registers 3
    .param p1, "time"    # J

    .line 8272
    invoke-direct {p0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->cancelFling()V

    .line 8273
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyUp(J)V

    .line 8274
    return-void
.end method

.method private greylist-max-o finishTracking(J)V
    .registers 4
    .param p1, "time"    # J

    .line 8277
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    if-ltz v0, :cond_f

    .line 8278
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    .line 8279
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 8280
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 8282
    :cond_f
    return-void
.end method

.method private greylist-max-o postFling(J)Z
    .registers 8
    .param p1, "time"    # J

    .line 8405
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_18

    .line 8406
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    div-float/2addr v1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v0

    float-to-long v0, v1

    .line 8407
    .local v0, "delay":J
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingRunnable:Ljava/lang/Runnable;

    add-long v3, p1, v0

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 8413
    const/4 v2, 0x1

    return v2

    .line 8415
    .end local v0    # "delay":J
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o sendKeyDownOrRepeat(JII)V
    .registers 26
    .param p1, "time"    # J
    .param p3, "keyCode"    # I
    .param p4, "metaState"    # I

    .line 8318
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget v2, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    if-eq v2, v1, :cond_15

    .line 8319
    invoke-direct/range {p0 .. p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyUp(J)V

    .line 8320
    move-wide/from16 v14, p1

    iput-wide v14, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyDownTime:J

    .line 8321
    iput v1, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    .line 8322
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    goto :goto_1d

    .line 8324
    :cond_15
    move-wide/from16 v14, p1

    iget v2, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    .line 8326
    :goto_1d
    move/from16 v2, p4

    iput v2, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    .line 8335
    iget-object v13, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v12, Landroid/view/KeyEvent;

    iget-wide v4, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyDownTime:J

    const/4 v8, 0x0

    iget v9, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    iget v10, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    iget v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    iget v6, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    const/16 v16, 0x400

    iget v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    move-object v3, v12

    move/from16 v17, v6

    move/from16 v18, v7

    move-wide/from16 v6, p1

    move-object/from16 v19, v12

    move/from16 v12, v17

    move-object/from16 v20, v13

    move/from16 v13, v16

    move/from16 v14, v18

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v4, v19

    move-object/from16 v3, v20

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 8339
    return-void
.end method

.method private greylist-max-o sendKeyUp(J)V
    .registers 19
    .param p1, "time"    # J

    .line 8342
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    if-eqz v1, :cond_25

    .line 8347
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v15, Landroid/view/KeyEvent;

    iget-wide v3, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyDownTime:J

    const/4 v7, 0x1

    iget v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    const/4 v9, 0x0

    iget v10, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    iget v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    const/4 v12, 0x0

    const/16 v13, 0x400

    iget v14, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    move-object v2, v15

    move-wide/from16 v5, p1

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 8351
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    .line 8353
    :cond_25
    return-void
.end method

.method private greylist-max-o startFling(JFF)Z
    .registers 8
    .param p1, "time"    # J
    .param p3, "vx"    # F
    .param p4, "vy"    # F

    .line 8362
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_62

    goto :goto_5b

    .line 8372
    :pswitch_7
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_1a

    .line 8373
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1a

    .line 8374
    iput p3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    .line 8375
    goto :goto_5b

    .line 8377
    :cond_1a
    return v1

    .line 8364
    :pswitch_1b
    neg-float v0, p3

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_30

    .line 8365
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_30

    .line 8366
    neg-float v0, p3

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    .line 8367
    goto :goto_5b

    .line 8369
    :cond_30
    return v1

    .line 8388
    :pswitch_31
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_44

    .line 8389
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_44

    .line 8390
    iput p4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    .line 8391
    goto :goto_5b

    .line 8393
    :cond_44
    return v1

    .line 8380
    :pswitch_45
    neg-float v0, p4

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_5a

    .line 8381
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5a

    .line 8382
    neg-float v0, p4

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    .line 8383
    goto :goto_5b

    .line 8385
    :cond_5a
    return v1

    .line 8397
    :goto_5b
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postFling(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    .line 8398
    return v0

    :pswitch_data_62
    .packed-switch 0x13
        :pswitch_45
        :pswitch_31
        :pswitch_1b
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o cancel(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8263
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    if-ne v0, v1, :cond_1a

    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    .line 8264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 8265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 8266
    .local v0, "time":J
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 8267
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    .line 8269
    .end local v0    # "time":J
    :cond_1a
    return-void
.end method

.method public greylist-max-o process(Landroid/view/MotionEvent;)V
    .registers 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8141
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 8142
    .local v2, "time":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    .line 8143
    .local v4, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    .line 8144
    .local v5, "source":I
    iget v6, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-ne v6, v4, :cond_1b

    iget v6, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    if-eq v6, v5, :cond_6e

    .line 8145
    :cond_1b
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 8146
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    .line 8147
    iput v4, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    .line 8148
    iput v5, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    .line 8149
    iput-boolean v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceSupported:Z

    .line 8150
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    .line 8151
    .local v6, "device":Landroid/view/InputDevice;
    if-eqz v6, :cond_6e

    .line 8154
    invoke-virtual {v6, v8}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v10

    .line 8155
    .local v10, "xRange":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v6, v7}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v11

    .line 8156
    .local v11, "yRange":Landroid/view/InputDevice$MotionRange;
    if-eqz v10, :cond_6e

    if-eqz v11, :cond_6e

    .line 8157
    iput-boolean v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceSupported:Z

    .line 8160
    invoke-virtual {v10}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v12

    .line 8161
    .local v12, "xRes":F
    cmpg-float v13, v12, v9

    const/high16 v14, 0x42400000    # 48.0f

    if-gtz v13, :cond_4b

    .line 8162
    invoke-virtual {v10}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v13

    div-float v12, v13, v14

    .line 8164
    :cond_4b
    invoke-virtual {v11}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v13

    .line 8165
    .local v13, "yRes":F
    cmpg-float v15, v13, v9

    if-gtz v15, :cond_59

    .line 8166
    invoke-virtual {v11}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v15

    div-float v13, v15, v14

    .line 8168
    :cond_59
    add-float v14, v12, v13

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    .line 8171
    .local v14, "nominalRes":F
    const/high16 v15, 0x41400000    # 12.0f

    mul-float/2addr v15, v14

    iput v15, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    .line 8172
    const/high16 v16, 0x40c00000    # 6.0f

    mul-float v9, v15, v16

    iput v9, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    .line 8174
    const/high16 v9, 0x41a00000    # 20.0f

    mul-float/2addr v15, v9

    iput v15, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMaxFlingVelocity:F

    .line 8187
    .end local v6    # "device":Landroid/view/InputDevice;
    .end local v10    # "xRange":Landroid/view/InputDevice$MotionRange;
    .end local v11    # "yRange":Landroid/view/InputDevice$MotionRange;
    .end local v12    # "xRes":F
    .end local v13    # "yRes":F
    .end local v14    # "nominalRes":F
    :cond_6e
    iget-boolean v6, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceSupported:Z

    if-nez v6, :cond_73

    .line 8188
    return-void

    .line 8192
    :cond_73
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 8193
    .local v6, "action":I
    packed-switch v6, :pswitch_data_124

    goto/16 :goto_123

    .line 8255
    :pswitch_7c
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 8256
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    goto/16 :goto_123

    .line 8216
    :pswitch_84
    iget v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    if-gez v8, :cond_8a

    .line 8217
    goto/16 :goto_123

    .line 8219
    :cond_8a
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    .line 8220
    .local v8, "index":I
    if-gez v8, :cond_98

    .line 8221
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 8222
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    .line 8223
    goto/16 :goto_123

    .line 8226
    :cond_98
    iget-object v9, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 8227
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 8228
    .local v9, "x":F
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 8229
    .local v10, "y":F
    iget v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    iget v12, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastX:F

    sub-float v12, v9, v12

    add-float/2addr v11, v12

    iput v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    .line 8230
    iget v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    iget v12, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastY:F

    sub-float v12, v10, v12

    add-float/2addr v11, v12

    iput v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    .line 8231
    iput v9, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastX:F

    .line 8232
    iput v10, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastY:F

    .line 8235
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    .line 8236
    .local v11, "metaState":I
    invoke-direct {v0, v2, v3, v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->consumeAccumulatedMovement(JI)V

    .line 8239
    if-ne v6, v7, :cond_123

    .line 8240
    iget-boolean v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    if-eqz v7, :cond_ee

    iget v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    if-eqz v7, :cond_ee

    .line 8242
    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v12, 0x3e8

    iget v13, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMaxFlingVelocity:F

    invoke-virtual {v7, v12, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 8243
    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v12, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    invoke-virtual {v7, v12}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v7

    .line 8244
    .local v7, "vx":F
    iget-object v12, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v13, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v12

    .line 8245
    .local v12, "vy":F
    invoke-direct {v0, v2, v3, v7, v12}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->startFling(JFF)Z

    move-result v13

    if-nez v13, :cond_ee

    .line 8246
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 8249
    .end local v7    # "vx":F
    .end local v12    # "vy":F
    :cond_ee
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    goto :goto_123

    .line 8195
    .end local v8    # "index":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v11    # "metaState":I
    :pswitch_f2
    iget-boolean v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    .line 8196
    .local v7, "caughtFling":Z
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 8197
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    .line 8198
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    .line 8199
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 8200
    invoke-virtual {v8, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 8201
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartX:F

    .line 8202
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartY:F

    .line 8203
    iget v9, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartX:F

    iput v9, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastX:F

    .line 8204
    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastY:F

    .line 8205
    const/4 v8, 0x0

    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    .line 8206
    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    .line 8210
    iput-boolean v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    .line 8211
    nop

    .line 8260
    .end local v7    # "caughtFling":Z
    :cond_123
    :goto_123
    return-void

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_f2
        :pswitch_84
        :pswitch_84
        :pswitch_7c
    .end packed-switch
.end method
