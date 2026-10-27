.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;
.super Ljava/lang/Object;
.source "AnimateMeasure.java"


# instance fields
.field private final blacklist mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

.field private blacklist mDuration:F

.field private blacklist mDurationVisibilityChange:F

.field private blacklist mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

.field private blacklist mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

.field private blacklist mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

.field private blacklist mMotionEasingType:I

.field private final blacklist mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

.field private blacklist mP:F

.field private blacklist mParticleAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;

.field private final blacklist mStartTime:J

.field private final blacklist mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

.field private blacklist mVisibilityEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

.field private blacklist mVisibilityEasingType:I

.field private blacklist mVp:F

.field public blacklist paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;


# direct methods
.method public constructor blacklist <init>(JLcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;FFLcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;II)V
    .registers 28

    .line 72
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mDuration:F

    iput v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mDurationVisibilityChange:F

    .line 43
    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_IN:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    iput-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 44
    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_OUT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    iput-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 45
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mMotionEasingType:I

    .line 46
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVisibilityEasingType:I

    .line 48
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    .line 49
    iput v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    .line 51
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mMotionEasingType:I

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mDuration:F

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float v5, v2, v9

    const/4 v7, 0x0

    const/high16 v8, 0x7fc00000    # Float.NaN

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    iput-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    .line 55
    new-instance v10, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v11, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVisibilityEasingType:I

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mDurationVisibilityChange:F

    div-float v12, v2, v9

    const/4 v14, 0x0

    const/high16 v15, 0x7fc00000    # Float.NaN

    const/4 v13, 0x0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    iput-object v10, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVisibilityEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    .line 110
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 73
    move-wide/from16 v2, p1

    iput-wide v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mStartTime:J

    .line 74
    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 75
    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    .line 76
    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    .line 77
    move/from16 v3, p6

    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mDuration:F

    .line 78
    move/from16 v3, p7

    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mDurationVisibilityChange:F

    .line 79
    move-object/from16 v3, p8

    iput-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 80
    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 81
    move/from16 v3, p10

    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mMotionEasingType:I

    .line 82
    move/from16 v3, p11

    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVisibilityEasingType:I

    .line 84
    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mDuration:F

    div-float/2addr v3, v9

    .line 85
    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mDurationVisibilityChange:F

    div-float/2addr v4, v9

    .line 87
    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mMotionEasingType:I

    const/4 v9, 0x0

    move/from16 p8, v3

    move-object/from16 p6, v5

    move/from16 p7, v6

    move/from16 p10, v7

    move/from16 p11, v8

    move-object/from16 p9, v9

    invoke-direct/range {p6 .. p11}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    .line 88
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVisibilityEasingType:I

    const/4 v6, 0x0

    const/high16 v7, 0x7fc00000    # Float.NaN

    const/4 v8, 0x0

    move-object/from16 p6, v3

    move/from16 p8, v4

    move/from16 p7, v5

    move/from16 p10, v6

    move/from16 p11, v7

    move-object/from16 p9, v8

    invoke-direct/range {p6 .. p11}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    iput-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVisibilityEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    .line 91
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    .line 92
    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVisibilityEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    .line 94
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v0

    iput v0, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    .line 95
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 9

    .line 118
    iget-wide v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->currentTime:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->update(J)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setX(F)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setY(F)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setWidth(F)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setHeight(F)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v1

    .line 127
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 128
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v4, :cond_69

    .line 129
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    .line 130
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v5

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getRight()F

    move-result v6

    add-float/2addr v5, v6

    sub-float/2addr v0, v5

    .line 131
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v5

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getBottom()F

    move-result v4

    add-float/2addr v5, v4

    sub-float/2addr v1, v5

    .line 133
    :cond_69
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;

    if-eqz v4, :cond_74

    .line 134
    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-interface {v3, p1, v4, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    .line 136
    :cond_74
    goto :goto_42

    .line 137
    :cond_75
    return-void
.end method

.method public blacklist getHeight()F
    .registers 4

    .line 351
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public blacklist getVisibility()F
    .registers 4

    .line 360
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_11

    .line 361
    return v2

    .line 362
    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 363
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    return v0

    .line 365
    :cond_1c
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    sub-float/2addr v2, v0

    return v2
.end method

.method public blacklist getWidth()F
    .registers 4

    .line 347
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public blacklist getX()F
    .registers 4

    .line 339
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public blacklist getY()F
    .registers 4

    .line 343
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public blacklist isDone()Z
    .registers 3

    .line 335
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_10

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 10

    .line 145
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v3

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq v1, v3, :cond_371

    .line 146
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1a5

    .line 147
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure$1;->$SwitchMap$com$android$internal$widget$remotecompose$core$operations$layout$animation$AnimationSpec$ANIMATION:[I

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_396

    .line 226
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mParticleAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;

    if-nez v1, :cond_195

    .line 227
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mParticleAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;

    goto/16 :goto_195

    .line 213
    :pswitch_33
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 214
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 215
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 216
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 217
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 218
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 219
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    .line 215
    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    .line 220
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 221
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 222
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 223
    goto/16 :goto_37e

    .line 201
    :pswitch_6e
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 202
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    neg-float v1, v1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 203
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 204
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 205
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 206
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 207
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    .line 203
    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    .line 208
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 209
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 210
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 211
    goto/16 :goto_37e

    .line 184
    :pswitch_aa
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 185
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 186
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 187
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1, v3, v3, v3, v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(FFFF)V

    .line 188
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 189
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 190
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 191
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 192
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 193
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 194
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    .line 190
    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    .line 195
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 196
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 197
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 198
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 199
    goto/16 :goto_37e

    .line 172
    :pswitch_fa
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 173
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    neg-float v1, v1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 174
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 175
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 176
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 177
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 178
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    .line 174
    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    .line 179
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 180
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 181
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 182
    goto/16 :goto_37e

    .line 156
    :pswitch_136
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 157
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 158
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 159
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    sub-float v4, v7, v4

    invoke-virtual {v1, v3, v3, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(FFFF)V

    .line 160
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 161
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 162
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 163
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 164
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 165
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    .line 161
    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    .line 166
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 167
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 168
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 169
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 170
    goto/16 :goto_37e

    .line 150
    :pswitch_17a
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mParticleAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;

    if-nez v1, :cond_185

    .line 151
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mParticleAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;

    .line 153
    :cond_185
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mParticleAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;->animate(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;F)V

    .line 154
    goto/16 :goto_37e

    .line 229
    :cond_195
    :goto_195
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mParticleAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;->animate(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;F)V

    .line 230
    goto/16 :goto_37e

    .line 232
    :cond_1a5
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v1

    if-eqz v1, :cond_36b

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_36b

    .line 233
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure$1;->$SwitchMap$com$android$internal$widget$remotecompose$core$operations$layout$animation$AnimationSpec$ANIMATION:[I

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_3a6

    .line 320
    goto/16 :goto_37e

    .line 256
    :pswitch_1c4
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 257
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 258
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 259
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    invoke-virtual {v1, v3, v3, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(FFFF)V

    .line 260
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 261
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 262
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 263
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 264
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 265
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    .line 261
    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    .line 266
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 267
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 268
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 269
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 270
    goto/16 :goto_37e

    .line 235
    :pswitch_206
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result v1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 236
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result v4

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v6

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    .line 238
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 239
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 240
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    const/high16 v6, 0x43b40000    # 360.0f

    mul-float/2addr v5, v6

    invoke-virtual {p1, v5, v1, v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixRotate(FFF)V

    .line 241
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    mul-float/2addr v5, v7

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6, v1, v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixScale(FFFF)V

    .line 242
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 243
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    invoke-virtual {v1, v3, v3, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(FFFF)V

    .line 244
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 245
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 246
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 247
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 248
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 249
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    .line 245
    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    .line 250
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 251
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 252
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 253
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 254
    goto/16 :goto_37e

    .line 308
    :pswitch_277
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 309
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    sub-float v1, v7, v1

    neg-float v1, v1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 310
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 311
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 312
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 313
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 314
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    .line 310
    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    .line 315
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 316
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 317
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 318
    goto/16 :goto_37e

    .line 296
    :pswitch_2b5
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 297
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    sub-float v1, v7, v1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 298
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 299
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 300
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 301
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 302
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    .line 298
    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    .line 303
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 304
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 305
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 306
    goto/16 :goto_37e

    .line 284
    :pswitch_2f2
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 285
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    sub-float v1, v7, v1

    neg-float v1, v1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 286
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 287
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 288
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 289
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 290
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    .line 286
    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    .line 291
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 292
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 293
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 294
    goto :goto_37e

    .line 272
    :pswitch_32f
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 273
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    sub-float v1, v7, v1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 274
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 275
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 276
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 277
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 278
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    .line 274
    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    .line 279
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 280
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 281
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 282
    goto :goto_37e

    .line 323
    :cond_36b
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    goto :goto_37e

    .line 325
    :cond_371
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_37e

    .line 326
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 329
    :cond_37e
    :goto_37e
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_394

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_394

    .line 330
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v0

    iput v0, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    .line 332
    :cond_394
    return-void

    nop

    :pswitch_data_396
    .packed-switch 0x1
        :pswitch_17a
        :pswitch_136
        :pswitch_fa
        :pswitch_aa
        :pswitch_6e
        :pswitch_33
    .end packed-switch

    :pswitch_data_3a6
    .packed-switch 0x3
        :pswitch_32f
        :pswitch_2f2
        :pswitch_2b5
        :pswitch_277
        :pswitch_206
        :pswitch_1c4
    .end packed-switch
.end method

.method public blacklist update(J)V
    .registers 5

    .line 103
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mStartTime:J

    sub-long/2addr p1, v0

    .line 104
    long-to-float p1, p1

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mDuration:F

    div-float p2, p1, p2

    .line 105
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mDurationVisibilityChange:F

    div-float/2addr p1, v0

    .line 106
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    .line 107
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVisibilityEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    .line 108
    return-void
.end method

.method public blacklist updateTarget(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;J)V
    .registers 8

    .line 376
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->getX()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    .line 377
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->getY()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    .line 378
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->getWidth()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 379
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->getHeight()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 380
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result p2

    .line 381
    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result p3

    .line 382
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v0

    .line 383
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v1

    .line 384
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v2

    .line 385
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result v3

    cmpl-float p2, p2, v3

    if-nez p2, :cond_68

    .line 386
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result p2

    cmpl-float p2, p3, p2

    if-nez p2, :cond_68

    .line 387
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result p2

    cmpl-float p2, v0, p2

    if-nez p2, :cond_68

    .line 388
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result p2

    cmpl-float p2, v1, p2

    if-nez p2, :cond_68

    .line 389
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result p2

    if-eq v2, p2, :cond_95

    .line 390
    :cond_68
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    .line 391
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    .line 392
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 393
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 394
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    .line 403
    :cond_95
    return-void
.end method
