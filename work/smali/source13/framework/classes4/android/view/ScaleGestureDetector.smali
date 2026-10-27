.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o ANCHORED_SCALE_MODE_DOUBLE_TAP:I = 0x1

.field private static final greylist-max-o ANCHORED_SCALE_MODE_NONE:I = 0x0

.field private static final greylist-max-o ANCHORED_SCALE_MODE_STYLUS:I = 0x2

.field private static final greylist-max-o SCALE_FACTOR:F = 0.5f

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ScaleGestureDetector"

.field private static final greylist-max-o TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private greylist-max-o mAnchoredScaleMode:I

.field private greylist-max-o mAnchoredScaleStartX:F

.field private greylist-max-o mAnchoredScaleStartY:F

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mCurrSpan:F

.field private greylist-max-o mCurrSpanX:F

.field private greylist-max-o mCurrSpanY:F

.field private greylist-max-o mCurrTime:J

.field private greylist-max-o mEventBeforeOrAboveStartingGestureEvent:Z

.field private greylist-max-o mFocusX:F

.field private greylist-max-o mFocusY:F

.field private greylist-max-o mGestureDetector:Landroid/view/GestureDetector;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mInProgress:Z

.field private greylist-max-o mInitialSpan:F

.field private final greylist-max-o mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private final greylist mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private greylist-max-p mMinSpan:I

.field private greylist-max-o mPrevSpan:F

.field private greylist-max-o mPrevSpanX:F

.field private greylist-max-o mPrevSpanY:F

.field private greylist-max-o mPrevTime:J

.field private greylist-max-o mQuickScaleEnabled:Z

.field private greylist-max-p mSpanSlop:I

.field private greylist-max-o mStylusScaleEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmAnchoredScaleMode(Landroid/view/ScaleGestureDetector;I)V
    .registers 2

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnchoredScaleStartX(Landroid/view/ScaleGestureDetector;F)V
    .registers 2

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnchoredScaleStartY(Landroid/view/ScaleGestureDetector;F)V
    .registers 2

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    .line 188
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 168
    nop

    .line 169
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 170
    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v1, p0, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 203
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 204
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 205
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 206
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    .line 207
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumScalingSpan()I

    move-result v1

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    .line 208
    iput-object p3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 211
    .local v1, "targetSdkVersion":I
    const/16 v2, 0x12

    const/4 v3, 0x1

    if-le v1, v2, :cond_3c

    .line 212
    invoke-virtual {p0, v3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 215
    :cond_3c
    const/16 v2, 0x16

    if-le v1, v2, :cond_43

    .line 216
    invoke-virtual {p0, v3}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    .line 218
    :cond_43
    return-void
.end method

.method private greylist-max-o inAnchoredScaleMode()Z
    .registers 2

    .line 392
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public whitelist getCurrentSpan()F
    .registers 2

    .line 488
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    return v0
.end method

.method public whitelist getCurrentSpanX()F
    .registers 2

    .line 498
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    return v0
.end method

.method public whitelist getCurrentSpanY()F
    .registers 2

    .line 508
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    return v0
.end method

.method public whitelist getEventTime()J
    .registers 3

    .line 578
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public whitelist getFocusX()F
    .registers 2

    .line 464
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public whitelist getFocusY()F
    .registers 2

    .line 478
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public whitelist getPreviousSpan()F
    .registers 2

    .line 518
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    return v0
.end method

.method public whitelist getPreviousSpanX()F
    .registers 2

    .line 528
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    return v0
.end method

.method public whitelist getPreviousSpanY()F
    .registers 2

    .line 538
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    return v0
.end method

.method public whitelist getScaleFactor()F
    .registers 6

    .line 549
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3f

    .line 553
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v0, :cond_14

    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1e

    :cond_14
    if-nez v0, :cond_20

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v2, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 556
    .local v0, "scaleUp":Z
    :goto_21
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    .line 557
    .local v2, "spanDiff":F
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_39

    goto :goto_3e

    :cond_39
    if-eqz v0, :cond_3d

    add-float/2addr v1, v2

    goto :goto_3e

    :cond_3d
    sub-float/2addr v1, v2

    :goto_3e
    return v1

    .line 559
    .end local v0    # "scaleUp":Z
    .end local v2    # "spanDiff":F
    :cond_3f
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_49

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    div-float/2addr v1, v0

    :cond_49
    return v1
.end method

.method public whitelist getTimeDelta()J
    .registers 5

    .line 569
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist isInProgress()Z
    .registers 2

    .line 450
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public whitelist isQuickScaleEnabled()Z
    .registers 2

    .line 424
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    return v0
.end method

.method public whitelist isStylusScaleEnabled()Z
    .registers 2

    .line 443
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return v0
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 30
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 233
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    .line 234
    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 237
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 242
    .local v2, "action":I
    iget-boolean v4, v0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v4, :cond_1f

    .line 243
    iget-object v4, v0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 246
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 247
    .local v4, "count":I
    nop

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    const/4 v6, 0x1

    if-eqz v5, :cond_2f

    move v5, v6

    goto :goto_30

    :cond_2f
    move v5, v3

    .line 250
    .local v5, "isStylusButtonDown":Z
    :goto_30
    iget v7, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_39

    if-nez v5, :cond_39

    move v7, v6

    goto :goto_3a

    :cond_39
    move v7, v3

    .line 252
    .local v7, "anchoredScaleCancelled":Z
    :goto_3a
    if-eq v2, v6, :cond_44

    const/4 v9, 0x3

    if-eq v2, v9, :cond_44

    if-eqz v7, :cond_42

    goto :goto_44

    :cond_42
    move v9, v3

    goto :goto_45

    :cond_44
    :goto_44
    move v9, v6

    .line 255
    .local v9, "streamComplete":Z
    :goto_45
    const/4 v10, 0x0

    if-eqz v2, :cond_4a

    if-eqz v9, :cond_6b

    .line 259
    :cond_4a
    iget-boolean v11, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v11, :cond_5a

    .line 260
    iget-object v11, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v11, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 261
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 262
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 263
    iput v3, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    goto :goto_68

    .line 264
    :cond_5a
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-eqz v11, :cond_68

    if-eqz v9, :cond_68

    .line 265
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 266
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 267
    iput v3, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 270
    :cond_68
    :goto_68
    if-eqz v9, :cond_6b

    .line 271
    return v6

    .line 275
    :cond_6b
    iget-boolean v11, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-nez v11, :cond_8d

    iget-boolean v11, v0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    if-eqz v11, :cond_8d

    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-nez v11, :cond_8d

    if-nez v9, :cond_8d

    if-eqz v5, :cond_8d

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iput v11, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 279
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iput v11, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 280
    iput v8, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 281
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 284
    :cond_8d
    const/4 v10, 0x6

    if-eqz v2, :cond_9a

    if-eq v2, v10, :cond_9a

    const/4 v11, 0x5

    if-eq v2, v11, :cond_9a

    if-eqz v7, :cond_98

    goto :goto_9a

    :cond_98
    move v11, v3

    goto :goto_9b

    :cond_9a
    :goto_9a
    move v11, v6

    .line 288
    .local v11, "configChanged":Z
    :goto_9b
    if-ne v2, v10, :cond_9f

    move v10, v6

    goto :goto_a0

    :cond_9f
    move v10, v3

    .line 289
    .local v10, "pointerUp":Z
    :goto_a0
    if-eqz v10, :cond_a7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    goto :goto_a8

    :cond_a7
    const/4 v12, -0x1

    .line 292
    .local v12, "skipIndex":I
    :goto_a8
    const/4 v13, 0x0

    .local v13, "sumX":F
    const/4 v14, 0x0

    .line 293
    .local v14, "sumY":F
    if-eqz v10, :cond_af

    add-int/lit8 v15, v4, -0x1

    goto :goto_b0

    :cond_af
    move v15, v4

    .line 296
    .local v15, "div":I
    :goto_b0
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v16

    if-eqz v16, :cond_c9

    .line 299
    iget v8, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 300
    .local v8, "focusX":F
    iget v3, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 301
    .local v3, "focusY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    cmpg-float v18, v18, v3

    if-gez v18, :cond_c5

    .line 302
    iput-boolean v6, v0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_e2

    .line 304
    :cond_c5
    const/4 v6, 0x0

    iput-boolean v6, v0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_e2

    .line 307
    .end local v3    # "focusY":F
    .end local v8    # "focusX":F
    :cond_c9
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_ca
    if-ge v3, v4, :cond_dc

    .line 308
    if-ne v12, v3, :cond_cf

    goto :goto_d9

    .line 309
    :cond_cf
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v13, v6

    .line 310
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v14, v6

    .line 307
    :goto_d9
    add-int/lit8 v3, v3, 0x1

    goto :goto_ca

    .line 313
    .end local v3    # "i":I
    :cond_dc
    int-to-float v3, v15

    div-float v8, v13, v3

    .line 314
    .restart local v8    # "focusX":F
    int-to-float v3, v15

    div-float v3, v14, v3

    .line 318
    .local v3, "focusY":F
    :goto_e2
    const/4 v6, 0x0

    .local v6, "devSumX":F
    const/16 v19, 0x0

    .line 319
    .local v19, "devSumY":F
    const/16 v20, 0x0

    move/from16 v27, v20

    move/from16 v20, v5

    move/from16 v5, v27

    .local v5, "i":I
    .local v20, "isStylusButtonDown":Z
    :goto_ed
    if-ge v5, v4, :cond_10d

    .line 320
    if-ne v12, v5, :cond_f2

    goto :goto_10a

    .line 323
    :cond_f2
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    sub-float v21, v21, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    add-float v6, v6, v21

    .line 324
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v21

    sub-float v21, v21, v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    add-float v19, v19, v21

    .line 319
    :goto_10a
    add-int/lit8 v5, v5, 0x1

    goto :goto_ed

    .line 326
    .end local v5    # "i":I
    :cond_10d
    int-to-float v5, v15

    div-float v5, v6, v5

    .line 327
    .local v5, "devX":F
    int-to-float v1, v15

    div-float v1, v19, v1

    .line 332
    .local v1, "devY":F
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v22, v4

    .end local v4    # "count":I
    .local v22, "count":I
    mul-float v4, v5, v21

    .line 333
    .local v4, "spanX":F
    move/from16 v23, v5

    .end local v5    # "devX":F
    .local v23, "devX":F
    mul-float v5, v1, v21

    .line 335
    .local v5, "spanY":F
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v21

    if-eqz v21, :cond_130

    .line 336
    move/from16 v21, v5

    move/from16 v24, v6

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v6, v21

    move/from16 v21, v7

    .local v21, "span":F
    goto :goto_13f

    .line 338
    .end local v21    # "span":F
    :cond_130
    move/from16 v24, v6

    move/from16 v21, v7

    .end local v6    # "devSumX":F
    .end local v7    # "anchoredScaleCancelled":Z
    .local v21, "anchoredScaleCancelled":Z
    .local v24, "devSumX":F
    float-to-double v6, v4

    move/from16 v25, v9

    move/from16 v26, v10

    .end local v9    # "streamComplete":Z
    .end local v10    # "pointerUp":Z
    .local v25, "streamComplete":Z
    .local v26, "pointerUp":Z
    float-to-double v9, v5

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 344
    .local v6, "span":F
    :goto_13f
    iget-boolean v7, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 345
    .local v7, "wasInProgress":Z
    iput v8, v0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 346
    iput v3, v0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 347
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v9

    if-nez v9, :cond_162

    iget-boolean v9, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v9, :cond_162

    iget v9, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    int-to-float v9, v9

    cmpg-float v9, v6, v9

    if-ltz v9, :cond_158

    if-eqz v11, :cond_162

    .line 348
    :cond_158
    iget-object v9, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v9, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 349
    const/4 v9, 0x0

    iput-boolean v9, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 350
    iput v6, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 352
    :cond_162
    if-eqz v11, :cond_172

    .line 353
    iput v4, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v4, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 354
    iput v5, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 355
    iput v6, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 358
    :cond_172
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v9

    if-eqz v9, :cond_17b

    iget v9, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    goto :goto_17d

    :cond_17b
    iget v9, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    .line 359
    .local v9, "minSpan":I
    :goto_17d
    iget-boolean v10, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-nez v10, :cond_1ba

    int-to-float v10, v9

    cmpl-float v10, v6, v10

    if-ltz v10, :cond_1ba

    if-nez v7, :cond_19d

    iget v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    sub-float v10, v6, v10

    .line 360
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move/from16 v17, v1

    .end local v1    # "devY":F
    .local v17, "devY":F
    iget v1, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    int-to-float v1, v1

    cmpl-float v1, v10, v1

    if-lez v1, :cond_19a

    goto :goto_19f

    :cond_19a
    move v10, v7

    move v1, v8

    goto :goto_1be

    .line 359
    .end local v17    # "devY":F
    .restart local v1    # "devY":F
    :cond_19d
    move/from16 v17, v1

    .line 361
    .end local v1    # "devY":F
    .restart local v17    # "devY":F
    :goto_19f
    iput v4, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v4, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 362
    iput v5, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 363
    iput v6, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 364
    move v10, v7

    move v1, v8

    .end local v7    # "wasInProgress":Z
    .end local v8    # "focusX":F
    .local v1, "focusX":F
    .local v10, "wasInProgress":Z
    iget-wide v7, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v7, v0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    .line 365
    iget-object v7, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v7, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v7

    iput-boolean v7, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    goto :goto_1be

    .line 359
    .end local v10    # "wasInProgress":Z
    .end local v17    # "devY":F
    .local v1, "devY":F
    .restart local v7    # "wasInProgress":Z
    .restart local v8    # "focusX":F
    :cond_1ba
    move/from16 v17, v1

    move v10, v7

    move v1, v8

    .line 369
    .end local v7    # "wasInProgress":Z
    .end local v8    # "focusX":F
    .local v1, "focusX":F
    .restart local v10    # "wasInProgress":Z
    .restart local v17    # "devY":F
    :goto_1be
    const/4 v7, 0x2

    if-ne v2, v7, :cond_1ec

    .line 370
    iput v4, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    .line 371
    iput v5, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    .line 372
    iput v6, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    .line 374
    const/4 v7, 0x1

    .line 376
    .local v7, "updatePrev":Z
    iget-boolean v8, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v8, :cond_1d2

    .line 377
    iget-object v8, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v8, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v7

    .line 380
    :cond_1d2
    if-eqz v7, :cond_1e8

    .line 381
    iget v8, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v8, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 382
    iget v8, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v8, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 383
    iget v8, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iput v8, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 384
    move/from16 v16, v1

    move v8, v2

    .end local v1    # "focusX":F
    .end local v2    # "action":I
    .local v8, "action":I
    .local v16, "focusX":F
    iget-wide v1, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v1, v0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    goto :goto_1ef

    .line 380
    .end local v8    # "action":I
    .end local v16    # "focusX":F
    .restart local v1    # "focusX":F
    .restart local v2    # "action":I
    :cond_1e8
    move/from16 v16, v1

    move v8, v2

    .end local v1    # "focusX":F
    .end local v2    # "action":I
    .restart local v8    # "action":I
    .restart local v16    # "focusX":F
    goto :goto_1ef

    .line 369
    .end local v7    # "updatePrev":Z
    .end local v8    # "action":I
    .end local v16    # "focusX":F
    .restart local v1    # "focusX":F
    .restart local v2    # "action":I
    :cond_1ec
    move/from16 v16, v1

    move v8, v2

    .line 388
    .end local v1    # "focusX":F
    .end local v2    # "action":I
    .restart local v8    # "action":I
    .restart local v16    # "focusX":F
    :goto_1ef
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist setQuickScaleEnabled(Z)V
    .registers 6
    .param p1, "scales"    # Z

    .line 402
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    .line 403
    if-eqz p1, :cond_18

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_18

    .line 404
    new-instance v0, Landroid/view/ScaleGestureDetector$1;

    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    .line 415
    .local v0, "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 417
    .end local v0    # "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    :cond_18
    return-void
.end method

.method public whitelist setStylusScaleEnabled(Z)V
    .registers 2
    .param p1, "scales"    # Z

    .line 435
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    .line 436
    return-void
.end method
