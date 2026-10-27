.class public Landroid/graphics/drawable/VectorDrawableParams;
.super Ljava/lang/Object;
.source "VectorDrawableParams.java"


# static fields
.field private static final blacklist INVALID_COLOR_VALUE:I = 0x0

.field private static final blacklist INVALID_FLOAT_VALUE:F = -1.0f


# instance fields
.field blacklist fillAlphaFraction:F

.field blacklist fillColorFraction:F

.field blacklist fraction:F

.field blacklist mColorDataEvaluator:Landroid/animation/ArgbEvaluator;

.field blacklist mDelay:J

.field blacklist mDuration:J

.field blacklist mEndFillAlpha:F

.field blacklist mEndFillColor:I

.field blacklist mEndPathData:Landroid/util/PathParser$PathData;

.field blacklist mEndPivotX:F

.field blacklist mEndPivotY:F

.field blacklist mEndRotation:F

.field blacklist mEndScaleX:F

.field blacklist mEndScaleY:F

.field blacklist mEndStrokeAlpha:F

.field blacklist mEndStrokeColor:I

.field blacklist mEndStrokeWidth:F

.field blacklist mEndTranslateX:F

.field blacklist mEndTranslateY:F

.field blacklist mFloatEvaluator:Landroid/animation/FloatEvaluator;

.field blacklist mPathDataEvaluator:Landroid/animation/AnimatorInflater$PathDataEvaluator;

.field blacklist mStartFillAlpha:F

.field blacklist mStartFillColor:I

.field blacklist mStartPathData:Landroid/util/PathParser$PathData;

.field blacklist mStartPivotX:F

.field blacklist mStartPivotY:F

.field blacklist mStartRotation:F

.field blacklist mStartScaleX:F

.field blacklist mStartScaleY:F

.field blacklist mStartStrokeAlpha:F

.field blacklist mStartStrokeColor:I

.field blacklist mStartStrokeWidth:F

.field blacklist mStartTranslateX:F

.field blacklist mStartTranslateY:F

.field private blacklist mTarget:Ljava/lang/Object;

.field blacklist mTranslateXPath:Landroid/animation/Keyframes$FloatKeyframes;

.field blacklist mTranslateYPath:Landroid/animation/Keyframes$FloatKeyframes;

.field private blacklist mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

.field blacklist pathDataFraction:F

.field blacklist pivotXFraction:F

.field blacklist pivotYFraction:F

.field blacklist rotationFraction:F

.field blacklist scaleXFraction:F

.field blacklist scaleYFraction:F

.field blacklist strokeAlphaFraction:F

.field blacklist strokeColorFraction:F

.field blacklist strokeWidthFraction:F

.field blacklist translateXFraction:F

.field blacklist translateYFraction:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-direct {v0}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mPathDataEvaluator:Landroid/animation/AnimatorInflater$PathDataEvaluator;

    .line 16
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mColorDataEvaluator:Landroid/animation/ArgbEvaluator;

    .line 17
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    .line 30
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartStrokeWidth:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeWidth:F

    .line 31
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartStrokeColor:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeColor:I

    .line 32
    iput v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartStrokeAlpha:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeAlpha:F

    .line 33
    iput v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartFillColor:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndFillColor:I

    .line 34
    iput v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartFillAlpha:F

    iput v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndFillAlpha:F

    return-void
.end method

.method public static blacklist getTargetName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "target"    # Ljava/lang/Object;

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "targetName":Ljava/lang/String;
    instance-of v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v1, :cond_d

    .line 573
    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 574
    :cond_d
    instance-of v1, p0, Landroid/graphics/drawable/VectorDrawable$VPath;

    if-eqz v1, :cond_18

    .line 575
    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VPath;

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VPath;->getPathName()Ljava/lang/String;

    move-result-object v0

    .line 577
    :cond_18
    :goto_18
    const-string v1, "time_group"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 578
    const/4 v0, 0x0

    .line 580
    :cond_21
    return-object v0
.end method


# virtual methods
.method public blacklist getDelay()J
    .registers 3

    .line 555
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mDelay:J

    return-wide v0
.end method

.method public blacklist getDuration()J
    .registers 3

    .line 563
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mDuration:J

    return-wide v0
.end method

.method public blacklist getEndFillAlpha()F
    .registers 2

    .line 419
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndFillAlpha:F

    return v0
.end method

.method public blacklist getEndFillColor()I
    .registers 2

    .line 403
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndFillColor:I

    return v0
.end method

.method public blacklist getEndPivotX()F
    .registers 2

    .line 515
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndPivotX:F

    return v0
.end method

.method public blacklist getEndPivotY()F
    .registers 2

    .line 531
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndPivotY:F

    return v0
.end method

.method public blacklist getEndRotation()F
    .registers 2

    .line 547
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndRotation:F

    return v0
.end method

.method public blacklist getEndScaleX()F
    .registers 2

    .line 483
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndScaleX:F

    return v0
.end method

.method public blacklist getEndScaleY()F
    .registers 2

    .line 499
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndScaleY:F

    return v0
.end method

.method public blacklist getEndStrokeAlpha()F
    .registers 2

    .line 387
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeAlpha:F

    return v0
.end method

.method public blacklist getEndStrokeColor()I
    .registers 2

    .line 371
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeColor:I

    return v0
.end method

.method public blacklist getEndStrokeWidth()F
    .registers 2

    .line 355
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeWidth:F

    return v0
.end method

.method public blacklist getEndTranslateX()F
    .registers 2

    .line 435
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndTranslateX:F

    return v0
.end method

.method public blacklist getEndTranslateY()F
    .registers 2

    .line 451
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndTranslateY:F

    return v0
.end method

.method public blacklist getFillAlphaFraction()F
    .registers 2

    .line 139
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->fillAlphaFraction:F

    return v0
.end method

.method public blacklist getFillColorFraction()F
    .registers 2

    .line 126
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->fillColorFraction:F

    return v0
.end method

.method public blacklist getFraction()F
    .registers 2

    .line 256
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->fraction:F

    return v0
.end method

.method public blacklist getPathDataFraction()F
    .registers 2

    .line 75
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->pathDataFraction:F

    return v0
.end method

.method public blacklist getPivotXFraction()F
    .registers 2

    .line 214
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->pivotXFraction:F

    return v0
.end method

.method public blacklist getPivotYFraction()F
    .registers 2

    .line 228
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->pivotYFraction:F

    return v0
.end method

.method public blacklist getRotationFraction()F
    .registers 2

    .line 242
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->rotationFraction:F

    return v0
.end method

.method public blacklist getScaleXFraction()F
    .registers 2

    .line 186
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->scaleXFraction:F

    return v0
.end method

.method public blacklist getScaleYFraction()F
    .registers 2

    .line 200
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->scaleYFraction:F

    return v0
.end method

.method public blacklist getStartFillAlpha()F
    .registers 2

    .line 411
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartFillAlpha:F

    return v0
.end method

.method public blacklist getStartFillColor()I
    .registers 2

    .line 395
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartFillColor:I

    return v0
.end method

.method public blacklist getStartPivotX()F
    .registers 2

    .line 507
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartPivotX:F

    return v0
.end method

.method public blacklist getStartPivotY()F
    .registers 2

    .line 523
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartPivotY:F

    return v0
.end method

.method public blacklist getStartRotation()F
    .registers 2

    .line 539
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartRotation:F

    return v0
.end method

.method public blacklist getStartScaleX()F
    .registers 2

    .line 475
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartScaleX:F

    return v0
.end method

.method public blacklist getStartScaleY()F
    .registers 2

    .line 491
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartScaleY:F

    return v0
.end method

.method public blacklist getStartStrokeAlpha()F
    .registers 2

    .line 379
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartStrokeAlpha:F

    return v0
.end method

.method public blacklist getStartStrokeColor()I
    .registers 2

    .line 363
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartStrokeColor:I

    return v0
.end method

.method public blacklist getStartStrokeWidth()F
    .registers 2

    .line 347
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartStrokeWidth:F

    return v0
.end method

.method public blacklist getStartTranslateX()F
    .registers 2

    .line 427
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartTranslateX:F

    return v0
.end method

.method public blacklist getStartTranslateY()F
    .registers 2

    .line 443
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartTranslateY:F

    return v0
.end method

.method public blacklist getStrokeAlphaFraction()F
    .registers 2

    .line 113
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->strokeAlphaFraction:F

    return v0
.end method

.method public blacklist getStrokeColorFraction()F
    .registers 2

    .line 100
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->strokeColorFraction:F

    return v0
.end method

.method public blacklist getStrokeWidthFraction()F
    .registers 2

    .line 87
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->strokeWidthFraction:F

    return v0
.end method

.method public blacklist getTranslateXFraction()F
    .registers 2

    .line 152
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->translateXFraction:F

    return v0
.end method

.method public blacklist getTranslateXPath()Landroid/animation/Keyframes$FloatKeyframes;
    .registers 2

    .line 459
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTranslateXPath:Landroid/animation/Keyframes$FloatKeyframes;

    return-object v0
.end method

.method public blacklist getTranslateYFraction()F
    .registers 2

    .line 169
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->translateYFraction:F

    return v0
.end method

.method public blacklist getTranslateYPath()Landroid/animation/Keyframes$FloatKeyframes;
    .registers 2

    .line 467
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTranslateYPath:Landroid/animation/Keyframes$FloatKeyframes;

    return-object v0
.end method

.method public blacklist setDelay(J)V
    .registers 3
    .param p1, "delay"    # J

    .line 559
    iput-wide p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mDelay:J

    .line 560
    return-void
.end method

.method public blacklist setDuration(J)V
    .registers 3
    .param p1, "duration"    # J

    .line 567
    iput-wide p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mDuration:J

    .line 568
    return-void
.end method

.method public blacklist setEndFillAlpha(F)V
    .registers 2
    .param p1, "endFillAlpha"    # F

    .line 423
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndFillAlpha:F

    .line 424
    return-void
.end method

.method public blacklist setEndFillColor(I)V
    .registers 2
    .param p1, "endFillColor"    # I

    .line 407
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndFillColor:I

    .line 408
    return-void
.end method

.method public blacklist setEndPathData(Landroid/util/PathParser$PathData;)V
    .registers 2
    .param p1, "endPathData"    # Landroid/util/PathParser$PathData;

    .line 343
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndPathData:Landroid/util/PathParser$PathData;

    .line 344
    return-void
.end method

.method public blacklist setEndPivotX(F)V
    .registers 2
    .param p1, "endPivotX"    # F

    .line 519
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndPivotX:F

    .line 520
    return-void
.end method

.method public blacklist setEndPivotY(F)V
    .registers 2
    .param p1, "endPivotY"    # F

    .line 535
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndPivotY:F

    .line 536
    return-void
.end method

.method public blacklist setEndRotation(F)V
    .registers 2
    .param p1, "endRotation"    # F

    .line 551
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndRotation:F

    .line 552
    return-void
.end method

.method public blacklist setEndScaleX(F)V
    .registers 2
    .param p1, "endScaleX"    # F

    .line 487
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndScaleX:F

    .line 488
    return-void
.end method

.method public blacklist setEndScaleY(F)V
    .registers 2
    .param p1, "endScaleY"    # F

    .line 503
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndScaleY:F

    .line 504
    return-void
.end method

.method public blacklist setEndStrokeAlpha(F)V
    .registers 2
    .param p1, "endStrokeAlpha"    # F

    .line 391
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeAlpha:F

    .line 392
    return-void
.end method

.method public blacklist setEndStrokeColor(I)V
    .registers 2
    .param p1, "endStrokeColor"    # I

    .line 375
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeColor:I

    .line 376
    return-void
.end method

.method public blacklist setEndStrokeWidth(F)V
    .registers 2
    .param p1, "endStrokeWidth"    # F

    .line 359
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeWidth:F

    .line 360
    return-void
.end method

.method public blacklist setEndTranslateX(F)V
    .registers 2
    .param p1, "endTranslateX"    # F

    .line 439
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndTranslateX:F

    .line 440
    return-void
.end method

.method public blacklist setEndTranslateY(F)V
    .registers 2
    .param p1, "endTranslateY"    # F

    .line 455
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndTranslateY:F

    .line 456
    return-void
.end method

.method public blacklist setFillAlphaFraction(F)V
    .registers 5
    .param p1, "fillAlphaFraction"    # F

    .line 143
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    if-eqz v0, :cond_2f

    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartFillAlpha:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2f

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndFillAlpha:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_2f

    .line 145
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndFillAlpha:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 146
    .local v0, "fillAlpha":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->setFillAlpha(F)V

    .line 148
    .end local v0    # "fillAlpha":F
    :cond_2f
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->fillAlphaFraction:F

    .line 149
    return-void
.end method

.method public blacklist setFillColorFraction(F)V
    .registers 5
    .param p1, "fillColorFraction"    # F

    .line 130
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    if-eqz v0, :cond_2b

    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartFillColor:I

    if-eqz v0, :cond_2b

    iget v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndFillColor:I

    if-eqz v1, :cond_2b

    .line 132
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mColorDataEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndFillColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 133
    .local v0, "fillColor":I
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->setFillColor(I)V

    .line 135
    .end local v0    # "fillColor":I
    :cond_2b
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->fillColorFraction:F

    .line 136
    return-void
.end method

.method public blacklist setFraction(F)V
    .registers 6
    .param p1, "fraction"    # F

    .line 260
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    instance-of v1, v0, Landroid/graphics/drawable/VectorDrawable$VPath;

    if-eqz v1, :cond_de

    .line 261
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartPathData:Landroid/util/PathParser$PathData;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndPathData:Landroid/util/PathParser$PathData;

    if-eqz v1, :cond_1b

    .line 262
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mPathDataEvaluator:Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-virtual {v2, p1, v0, v1}, Landroid/animation/AnimatorInflater$PathDataEvaluator;->evaluate(FLandroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Landroid/util/PathParser$PathData;

    move-result-object v0

    .line 263
    .local v0, "pathData":Landroid/util/PathParser$PathData;
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VPath;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VPath;->setPathData(Landroid/util/PathParser$PathData;)V

    .line 265
    .end local v0    # "pathData":Landroid/util/PathParser$PathData;
    :cond_1b
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartStrokeWidth:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_44

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeWidth:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_44

    .line 266
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v3, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeWidth:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, p1, v0, v3}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 267
    .local v0, "strokeWidth":F
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->setStrokeWidth(F)V

    .line 270
    .end local v0    # "strokeWidth":F
    :cond_44
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartStrokeColor:I

    if-eqz v0, :cond_69

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeColor:I

    if-eqz v2, :cond_69

    .line 271
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mColorDataEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v0, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 272
    .local v0, "strokeColor":I
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->setStrokeColor(I)V

    .line 274
    .end local v0    # "strokeColor":I
    :cond_69
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartStrokeAlpha:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_90

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeAlpha:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_90

    .line 275
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v3, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, p1, v0, v3}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 276
    .local v0, "strokeAlpha":F
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->setStrokeAlpha(F)V

    .line 279
    .end local v0    # "strokeAlpha":F
    :cond_90
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartFillColor:I

    if-eqz v0, :cond_b5

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndFillColor:I

    if-eqz v2, :cond_b5

    .line 280
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mColorDataEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndFillColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v0, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 281
    .local v0, "fillColor":I
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->setFillColor(I)V

    .line 284
    .end local v0    # "fillColor":I
    :cond_b5
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartFillAlpha:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_201

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndFillAlpha:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_201

    .line 285
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndFillAlpha:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 286
    .local v0, "fillAlpha":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->setFillAlpha(F)V

    .line 287
    .end local v0    # "fillAlpha":F
    goto/16 :goto_201

    .line 288
    :cond_de
    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_201

    .line 289
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartTranslateX:F

    iget v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndTranslateX:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_105

    .line 290
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndTranslateX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 291
    .local v0, "translateX":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTranslateX(F)V

    .line 294
    .end local v0    # "translateX":F
    :cond_105
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTranslateXPath:Landroid/animation/Keyframes$FloatKeyframes;

    if-eqz v0, :cond_11a

    .line 295
    invoke-interface {v0, p1}, Landroid/animation/Keyframes$FloatKeyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 296
    .restart local v0    # "translateX":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTranslateX(F)V

    .line 299
    .end local v0    # "translateX":F
    :cond_11a
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartTranslateY:F

    iget v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndTranslateY:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_13d

    .line 300
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndTranslateY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 301
    .local v0, "translateY":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTranslateY(F)V

    .line 304
    .end local v0    # "translateY":F
    :cond_13d
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTranslateYPath:Landroid/animation/Keyframes$FloatKeyframes;

    if-eqz v0, :cond_152

    .line 305
    invoke-interface {v0, p1}, Landroid/animation/Keyframes$FloatKeyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 306
    .restart local v0    # "translateY":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTranslateY(F)V

    .line 309
    .end local v0    # "translateY":F
    :cond_152
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartScaleX:F

    iget v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndScaleX:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_175

    .line 310
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndScaleX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 311
    .local v0, "scaleX":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setScaleX(F)V

    .line 314
    .end local v0    # "scaleX":F
    :cond_175
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartScaleY:F

    iget v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndScaleY:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_198

    .line 315
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndScaleY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 316
    .local v0, "scaleY":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setScaleY(F)V

    .line 319
    .end local v0    # "scaleY":F
    :cond_198
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartPivotX:F

    iget v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndPivotX:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1bb

    .line 320
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndPivotX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 321
    .local v0, "pivotX":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setPivotX(F)V

    .line 324
    .end local v0    # "pivotX":F
    :cond_1bb
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartPivotY:F

    iget v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndPivotY:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1de

    .line 325
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndPivotY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 326
    .local v0, "pivotY":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setPivotY(F)V

    .line 329
    .end local v0    # "pivotY":F
    :cond_1de
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartRotation:F

    iget v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndRotation:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_201

    .line 330
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndRotation:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 331
    .local v0, "rotation":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setRotation(F)V

    .line 335
    .end local v0    # "rotation":F
    :cond_201
    :goto_201
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->fraction:F

    .line 336
    return-void
.end method

.method public blacklist setPathDataFraction(F)V
    .registers 5
    .param p1, "pathDataFraction"    # F

    .line 79
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable$VPath;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartPathData:Landroid/util/PathParser$PathData;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndPathData:Landroid/util/PathParser$PathData;

    if-eq v0, v1, :cond_19

    .line 80
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mPathDataEvaluator:Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-virtual {v2, p1, v0, v1}, Landroid/animation/AnimatorInflater$PathDataEvaluator;->evaluate(FLandroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Landroid/util/PathParser$PathData;

    move-result-object v0

    .line 81
    .local v0, "pathData":Landroid/util/PathParser$PathData;
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VPath;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VPath;->setPathData(Landroid/util/PathParser$PathData;)V

    .line 83
    .end local v0    # "pathData":Landroid/util/PathParser$PathData;
    :cond_19
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->pathDataFraction:F

    .line 84
    return-void
.end method

.method public blacklist setPivotXFraction(F)V
    .registers 5
    .param p1, "pivotXFraction"    # F

    .line 218
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_29

    .line 219
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartPivotX:F

    iget v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndPivotX:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_29

    .line 220
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndPivotX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 221
    .local v0, "pivotX":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setPivotX(F)V

    .line 224
    .end local v0    # "pivotX":F
    :cond_29
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->pivotXFraction:F

    .line 225
    return-void
.end method

.method public blacklist setPivotYFraction(F)V
    .registers 5
    .param p1, "pivotYFraction"    # F

    .line 232
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_29

    .line 233
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartPivotY:F

    iget v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndPivotY:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_29

    .line 234
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndPivotY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 235
    .local v0, "pivotY":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setPivotY(F)V

    .line 238
    .end local v0    # "pivotY":F
    :cond_29
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->pivotYFraction:F

    .line 239
    return-void
.end method

.method public blacklist setRotationFraction(F)V
    .registers 5
    .param p1, "rotationFraction"    # F

    .line 246
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_29

    .line 247
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartRotation:F

    iget v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndRotation:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_29

    .line 248
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndRotation:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 249
    .local v0, "rotation":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setRotation(F)V

    .line 252
    .end local v0    # "rotation":F
    :cond_29
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->rotationFraction:F

    .line 253
    return-void
.end method

.method public blacklist setScaleXFraction(F)V
    .registers 5
    .param p1, "scaleXFraction"    # F

    .line 190
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_29

    .line 191
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartScaleX:F

    iget v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndScaleX:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_29

    .line 192
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndScaleX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 193
    .local v0, "scaleX":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setScaleX(F)V

    .line 196
    .end local v0    # "scaleX":F
    :cond_29
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->scaleXFraction:F

    .line 197
    return-void
.end method

.method public blacklist setScaleYFraction(F)V
    .registers 5
    .param p1, "scaleYFraction"    # F

    .line 204
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_29

    .line 205
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartScaleY:F

    iget v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndScaleY:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_29

    .line 206
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndScaleY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 207
    .local v0, "scaleY":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setScaleY(F)V

    .line 210
    .end local v0    # "scaleY":F
    :cond_29
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->scaleYFraction:F

    .line 211
    return-void
.end method

.method public blacklist setStartFillAlpha(F)V
    .registers 2
    .param p1, "startFillAlpha"    # F

    .line 415
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartFillAlpha:F

    .line 416
    return-void
.end method

.method public blacklist setStartFillColor(I)V
    .registers 2
    .param p1, "startFillColor"    # I

    .line 399
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartFillColor:I

    .line 400
    return-void
.end method

.method public blacklist setStartPathData(Landroid/util/PathParser$PathData;)V
    .registers 2
    .param p1, "startPathData"    # Landroid/util/PathParser$PathData;

    .line 339
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartPathData:Landroid/util/PathParser$PathData;

    .line 340
    return-void
.end method

.method public blacklist setStartPivotX(F)V
    .registers 2
    .param p1, "startPivotX"    # F

    .line 511
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartPivotX:F

    .line 512
    return-void
.end method

.method public blacklist setStartPivotY(F)V
    .registers 2
    .param p1, "startPivotY"    # F

    .line 527
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartPivotY:F

    .line 528
    return-void
.end method

.method public blacklist setStartRotation(F)V
    .registers 2
    .param p1, "startRotation"    # F

    .line 543
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartRotation:F

    .line 544
    return-void
.end method

.method public blacklist setStartScaleX(F)V
    .registers 2
    .param p1, "startScaleX"    # F

    .line 479
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartScaleX:F

    .line 480
    return-void
.end method

.method public blacklist setStartScaleY(F)V
    .registers 2
    .param p1, "startScaleY"    # F

    .line 495
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartScaleY:F

    .line 496
    return-void
.end method

.method public blacklist setStartStrokeAlpha(F)V
    .registers 2
    .param p1, "startStrokeAlpha"    # F

    .line 383
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartStrokeAlpha:F

    .line 384
    return-void
.end method

.method public blacklist setStartStrokeColor(I)V
    .registers 2
    .param p1, "startStrokeColor"    # I

    .line 367
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartStrokeColor:I

    .line 368
    return-void
.end method

.method public blacklist setStartStrokeWidth(F)V
    .registers 2
    .param p1, "startStrokeWidth"    # F

    .line 351
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartStrokeWidth:F

    .line 352
    return-void
.end method

.method public blacklist setStartTranslateX(F)V
    .registers 2
    .param p1, "startTranslateX"    # F

    .line 431
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartTranslateX:F

    .line 432
    return-void
.end method

.method public blacklist setStartTranslateY(F)V
    .registers 2
    .param p1, "startTranslateY"    # F

    .line 447
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartTranslateY:F

    .line 448
    return-void
.end method

.method public blacklist setStrokeAlphaFraction(F)V
    .registers 5
    .param p1, "strokeAlphaFraction"    # F

    .line 117
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    if-eqz v0, :cond_2f

    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartStrokeAlpha:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2f

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeAlpha:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_2f

    .line 119
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeAlpha:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 120
    .local v0, "strokeAlpha":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->setStrokeAlpha(F)V

    .line 122
    .end local v0    # "strokeAlpha":F
    :cond_2f
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->strokeAlphaFraction:F

    .line 123
    return-void
.end method

.method public blacklist setStrokeColorFraction(F)V
    .registers 5
    .param p1, "strokeColorFraction"    # F

    .line 104
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    if-eqz v0, :cond_2b

    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartStrokeColor:I

    if-eqz v0, :cond_2b

    iget v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeColor:I

    if-eqz v1, :cond_2b

    .line 106
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mColorDataEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 107
    .local v0, "strokeColor":I
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->setStrokeColor(I)V

    .line 109
    .end local v0    # "strokeColor":I
    :cond_2b
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->strokeColorFraction:F

    .line 110
    return-void
.end method

.method public blacklist setStrokeWidthFraction(F)V
    .registers 5
    .param p1, "strokeWidthFraction"    # F

    .line 91
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    if-eqz v0, :cond_2f

    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartStrokeWidth:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2f

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeWidth:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_2f

    .line 93
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndStrokeWidth:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 94
    .local v0, "strokeWidth":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->setStrokeWidth(F)V

    .line 96
    .end local v0    # "strokeWidth":F
    :cond_2f
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->strokeWidthFraction:F

    .line 97
    return-void
.end method

.method public blacklist setTarget(Ljava/lang/Object;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public blacklist setTargetName(Ljava/lang/String;)V
    .registers 3
    .param p1, "targetName"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_a

    .line 66
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    .line 68
    :cond_a
    return-void
.end method

.method public blacklist setTranslateXFraction(F)V
    .registers 5
    .param p1, "translateXFraction"    # F

    .line 156
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_40

    .line 157
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartTranslateX:F

    iget v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndTranslateX:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2a

    .line 158
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndTranslateX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 159
    .local v0, "translateX":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTranslateX(F)V

    .end local v0    # "translateX":F
    goto :goto_40

    .line 160
    :cond_2a
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTranslateXPath:Landroid/animation/Keyframes$FloatKeyframes;

    if-eqz v0, :cond_40

    .line 161
    invoke-interface {v0, p1}, Landroid/animation/Keyframes$FloatKeyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 162
    .restart local v0    # "translateX":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTranslateX(F)V

    nop

    .line 165
    .end local v0    # "translateX":F
    :cond_40
    :goto_40
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->translateXFraction:F

    .line 166
    return-void
.end method

.method public blacklist setTranslateXPath(Landroid/animation/Keyframes$FloatKeyframes;)V
    .registers 2
    .param p1, "translateXPath"    # Landroid/animation/Keyframes$FloatKeyframes;

    .line 463
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTranslateXPath:Landroid/animation/Keyframes$FloatKeyframes;

    .line 464
    return-void
.end method

.method public blacklist setTranslateYFraction(F)V
    .registers 5
    .param p1, "translateYFraction"    # F

    .line 173
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_40

    .line 174
    iget v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mStartTranslateY:F

    iget v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndTranslateY:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2a

    .line 175
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mEndTranslateY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 176
    .local v0, "translateY":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTranslateY(F)V

    .end local v0    # "translateY":F
    goto :goto_40

    .line 177
    :cond_2a
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTranslateYPath:Landroid/animation/Keyframes$FloatKeyframes;

    if-eqz v0, :cond_40

    .line 178
    invoke-interface {v0, p1}, Landroid/animation/Keyframes$FloatKeyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 179
    .restart local v0    # "translateY":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTranslateY(F)V

    nop

    .line 182
    .end local v0    # "translateY":F
    :cond_40
    :goto_40
    iput p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->translateYFraction:F

    .line 183
    return-void
.end method

.method public blacklist setTranslateYPath(Landroid/animation/Keyframes$FloatKeyframes;)V
    .registers 2
    .param p1, "translateYPath"    # Landroid/animation/Keyframes$FloatKeyframes;

    .line 471
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTranslateYPath:Landroid/animation/Keyframes$FloatKeyframes;

    .line 472
    return-void
.end method

.method public blacklist setVectorDrawable(Landroid/graphics/drawable/VectorDrawable;)V
    .registers 2
    .param p1, "vectorDrawable"    # Landroid/graphics/drawable/VectorDrawable;

    .line 61
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 62
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 586
    .local v0, "targetName":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    instance-of v2, v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    const-string v3, "_"

    if-eqz v2, :cond_27

    .line 587
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 588
    :cond_27
    instance-of v1, v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v1, :cond_3a

    .line 589
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawableParams;->mTarget:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_3a
    :goto_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VectorDrawableParams{mTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
