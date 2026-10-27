.class public Lcom/android/server/wm/WindowAnimationSpec;
.super Ljava/lang/Object;
.source "WindowAnimationSpec.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimationSpec$TmpValues;
    }
.end annotation


# instance fields
.field mActivityThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

.field private mAnimation:Landroid/view/animation/Animation;

.field mAppToken:Lcom/android/server/wm/ActivityRecord;

.field private final mCanSkipFirstFrame:Z

.field private final mIsAppAnimation:Z

.field mMiuiFreeFormTransformation:Lcom/android/server/wm/MiuiFreeFormTransformation;

.field mMiuiTransformation:Lcom/android/server/wm/MiuiTransformation;

.field private final mPosition:Landroid/graphics/Point;

.field mRadiusAnimation:Lcom/android/server/wm/RadiusAnimation;

.field private final mRootTaskBounds:Landroid/graphics/Rect;

.field private mRootTaskClipMode:I

.field mShouldActivityTransitionRoundCorner:Z

.field private final mThreadLocalTmps:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/server/wm/WindowAnimationSpec$TmpValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mWindowCornerRadius:F


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZF)V
    .registers 12
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "rootTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "canSkipFirstFrame"    # Z
    .param p5, "rootTaskClipMode"    # I
    .param p6, "isAppAnimation"    # Z
    .param p7, "windowCornerRadius"    # F

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    .line 56
    new-instance v1, Lcom/android/server/wm/WindowAnimationSpec$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/WindowAnimationSpec$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    .line 59
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskBounds:Landroid/graphics/Rect;

    .line 61
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    .line 65
    new-instance v2, Lcom/android/server/wm/MiuiTransformation;

    invoke-direct {v2}, Lcom/android/server/wm/MiuiTransformation;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mMiuiTransformation:Lcom/android/server/wm/MiuiTransformation;

    .line 67
    new-instance v2, Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-direct {v2}, Lcom/android/server/wm/MiuiFreeFormTransformation;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mMiuiFreeFormTransformation:Lcom/android/server/wm/MiuiFreeFormTransformation;

    .line 82
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 83
    if-eqz p2, :cond_3c

    .line 84
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 86
    :cond_3c
    iput p7, p0, Lcom/android/server/wm/WindowAnimationSpec;->mWindowCornerRadius:F

    .line 87
    iput-boolean p4, p0, Lcom/android/server/wm/WindowAnimationSpec;->mCanSkipFirstFrame:Z

    .line 88
    iput-boolean p6, p0, Lcom/android/server/wm/WindowAnimationSpec;->mIsAppAnimation:Z

    .line 89
    iput p5, p0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskClipMode:I

    .line 90
    if-eqz p3, :cond_49

    .line 91
    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 93
    :cond_49
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V
    .registers 13
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "canSkipFirstFrame"    # Z
    .param p4, "windowCornerRadius"    # F

    .line 75
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZF)V

    .line 77
    return-void
.end method

.method private accountForExtension(Landroid/view/animation/Transformation;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "transformation"    # Landroid/view/animation/Transformation;
    .param p2, "clipRect"    # Landroid/graphics/Rect;

    .line 238
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-static {v0, v1}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 239
    .local v0, "extensionInsets":Landroid/graphics/Insets;
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 241
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 243
    :cond_15
    return-void
.end method

.method private static findAlmostThereFraction(Landroid/view/animation/Interpolator;)F
    .registers 3
    .param p0, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 324
    const v0, 0x3f7d70a4    # 0.99f

    const v1, 0x3c23d70a    # 0.01f

    invoke-static {p0, v0, v1}, Lcom/android/server/wm/WindowAnimationSpec;->findInterpolationAdjustedTargetFraction(Landroid/view/animation/Interpolator;FF)F

    move-result v0

    return v0
.end method

.method private static findInterpolationAdjustedTargetFraction(Landroid/view/animation/Interpolator;FF)F
    .registers 6
    .param p0, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p1, "target"    # F
    .param p2, "epsilon"    # F

    .line 341
    const/high16 v0, 0x3f000000    # 0.5f

    .line 342
    .local v0, "val":F
    const/high16 v1, 0x3e800000    # 0.25f

    .line 344
    .local v1, "adj":F
    :goto_4
    cmpl-float v2, v1, p2

    if-ltz v2, :cond_17

    .line 345
    invoke-interface {p0, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_12

    .line 346
    add-float/2addr v0, v1

    goto :goto_13

    .line 348
    :cond_12
    sub-float/2addr v0, v1

    .line 350
    :goto_13
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    goto :goto_4

    .line 353
    :cond_17
    return v0
.end method

.method private findMiddleOfTranslationFraction(Landroid/view/animation/Interpolator;)F
    .registers 4
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 332
    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3c23d70a    # 0.01f

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/WindowAnimationSpec;->findInterpolationAdjustedTargetFraction(Landroid/view/animation/Interpolator;FF)F

    move-result v0

    return v0
.end method

.method private static findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;
    .registers 5
    .param p0, "animation"    # Landroid/view/animation/Animation;

    .line 305
    instance-of v0, p0, Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_8

    .line 306
    move-object v0, p0

    check-cast v0, Landroid/view/animation/TranslateAnimation;

    return-object v0

    .line 307
    :cond_8
    instance-of v0, p0, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_2f

    .line 308
    move-object v0, p0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 309
    .local v0, "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 310
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    .line 311
    .local v2, "a":Landroid/view/animation/Animation;
    instance-of v3, v2, Landroid/view/animation/TranslateAnimation;

    if-eqz v3, :cond_2c

    .line 312
    move-object v3, v2

    check-cast v3, Landroid/view/animation/TranslateAnimation;

    return-object v3

    .line 309
    .end local v2    # "a":Landroid/view/animation/Animation;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 316
    .end local v0    # "set":Landroid/view/animation/AnimationSet;
    .end local v1    # "i":I
    :cond_2f
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$new$0()Lcom/android/server/wm/WindowAnimationSpec$TmpValues;
    .registers 2

    .line 56
    new-instance v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;-><init>(Lcom/android/server/wm/WindowAnimationSpec$TmpValues-IA;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .registers 22
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "currentPlayTime"    # J

    .line 138
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;

    .line 139
    .local v12, "tmp":Lcom/android/server/wm/WindowAnimationSpec$TmpValues;
    iget-object v1, v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 140
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v10, v11, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 141
    iget-object v1, v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 142
    iget-object v1, v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->floats:[F

    invoke-virtual {v8, v9, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 143
    iget-object v1, v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {v8, v9, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, "cropSet":Z
    iget v2, v0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskClipMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_62

    .line 147
    iget-object v2, v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 148
    iget-object v2, v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 149
    .local v2, "clipRect":Landroid/graphics/Rect;
    iget-object v3, v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-direct {v0, v3, v2}, Lcom/android/server/wm/WindowAnimationSpec;->accountForExtension(Landroid/view/animation/Transformation;Landroid/graphics/Rect;)V

    .line 150
    invoke-virtual {v8, v9, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 151
    const/4 v1, 0x1

    .line 152
    .end local v2    # "clipRect":Landroid/graphics/Rect;
    goto :goto_89

    .line 154
    :cond_62
    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 155
    iget-object v2, v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 156
    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 158
    :cond_7c
    iget-object v2, v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    iget-object v3, v0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowAnimationSpec;->accountForExtension(Landroid/view/animation/Transformation;Landroid/graphics/Rect;)V

    .line 159
    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 160
    const/4 v1, 0x1

    .line 163
    :cond_89
    :goto_89
    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec;->mMiuiTransformation:Lcom/android/server/wm/MiuiTransformation;

    invoke-virtual {v2}, Lcom/android/server/wm/MiuiTransformation;->clear()V

    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "hasScaleWithClipAnimation":Z
    iget-object v3, v0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    instance-of v4, v3, Landroid/view/animation/AnimationSet;

    if-eqz v4, :cond_f9

    .line 166
    check-cast v3, Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    .line 167
    .local v3, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 168
    .local v4, "count":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_a1
    if-ltz v5, :cond_f6

    .line 169
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/animation/Animation;

    .line 170
    .local v6, "a":Landroid/view/animation/Animation;
    instance-of v7, v6, Lcom/android/server/wm/RadiusAnimation;

    if-eqz v7, :cond_b8

    .line 171
    move-object v7, v6

    check-cast v7, Lcom/android/server/wm/RadiusAnimation;

    iput-object v7, v0, Lcom/android/server/wm/WindowAnimationSpec;->mRadiusAnimation:Lcom/android/server/wm/RadiusAnimation;

    .line 172
    iget-object v13, v0, Lcom/android/server/wm/WindowAnimationSpec;->mMiuiTransformation:Lcom/android/server/wm/MiuiTransformation;

    invoke-virtual {v7, v10, v11, v13}, Lcom/android/server/wm/RadiusAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    goto :goto_f3

    .line 173
    :cond_b8
    instance-of v7, v6, Lcom/android/server/wm/ScaleWithClipAnimation;

    if-eqz v7, :cond_d0

    iget-object v7, v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v7}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result v7

    if-eqz v7, :cond_d0

    .line 174
    iget-object v7, v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v7}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 175
    const/4 v1, 0x1

    .line 176
    const/4 v2, 0x1

    goto :goto_f3

    .line 178
    :cond_d0
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v7

    invoke-interface {v7, v6, v8}, Lcom/android/server/wm/AppTransitionStub;->stepSplitDimmerIfNeeded(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)Z

    .line 179
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v7

    invoke-interface {v7, v6, v8}, Lcom/android/server/wm/AppTransitionStub;->stepAnimationDimmerIfNeeded(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)Z

    .line 180
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v7

    invoke-interface {v7, v6, v8, v9}, Lcom/android/server/wm/AppTransitionStub;->setFloatingCornerRadius(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Z

    .line 181
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v7

    invoke-interface {v7, v6, v8, v9}, Lcom/android/server/wm/AppTransitionStub;->setMiuiClipCornerRadius(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Z

    .line 182
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v7

    invoke-interface {v7, v6, v8, v9}, Lcom/android/server/wm/AppTransitionStub;->setMiuiRoundCornerRadius(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Z

    .line 168
    .end local v6    # "a":Landroid/view/animation/Animation;
    :goto_f3
    add-int/lit8 v5, v5, -0x1

    goto :goto_a1

    .line 185
    .end local v3    # "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .end local v4    # "count":I
    .end local v5    # "i":I
    :cond_f6
    move v13, v1

    move v14, v2

    goto :goto_128

    .line 186
    :cond_f9
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-interface {v3, v4, v8}, Lcom/android/server/wm/AppTransitionStub;->stepSplitDimmerIfNeeded(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)Z

    .line 187
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-interface {v3, v4, v8}, Lcom/android/server/wm/AppTransitionStub;->stepAnimationDimmerIfNeeded(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)Z

    .line 188
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-interface {v3, v4, v8, v9}, Lcom/android/server/wm/AppTransitionStub;->setFloatingCornerRadius(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Z

    .line 189
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-interface {v3, v4, v8, v9}, Lcom/android/server/wm/AppTransitionStub;->setMiuiClipCornerRadius(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Z

    .line 190
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-interface {v3, v4, v8, v9}, Lcom/android/server/wm/AppTransitionStub;->setMiuiRoundCornerRadius(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Z

    move v13, v1

    move v14, v2

    .line 192
    .end local v1    # "cropSet":Z
    .end local v2    # "hasScaleWithClipAnimation":Z
    .local v13, "cropSet":Z
    .local v14, "hasScaleWithClipAnimation":Z
    :goto_128
    iget v1, v0, Lcom/android/server/wm/WindowAnimationSpec;->mWindowCornerRadius:F

    .line 193
    .local v1, "cornerRadius":F
    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec;->mActivityThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    const/4 v3, 0x0

    if-eqz v2, :cond_184

    .line 194
    iget-object v2, v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->floats:[F

    const/4 v4, 0x0

    aget v2, v2, v4

    .line 195
    .local v2, "curScaleX":F
    iget-object v4, v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->floats:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    .line 196
    .local v4, "curScaleY":F
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 197
    .local v5, "scale":F
    iget-object v6, v0, Lcom/android/server/wm/WindowAnimationSpec;->mMiuiTransformation:Lcom/android/server/wm/MiuiTransformation;

    invoke-virtual {v6}, Lcom/android/server/wm/MiuiTransformation;->getRadius()F

    move-result v1

    .line 198
    move v6, v1

    .line 199
    .local v6, "thumbLeashCornerRadius":F
    iget-object v7, v0, Lcom/android/server/wm/WindowAnimationSpec;->mActivityThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowAnimatorHelper;->isMiuiActivityScaledThumbnail()Z

    move-result v7

    .line 200
    .local v7, "isScaledThumbnail":Z
    cmpl-float v15, v5, v3

    if-eqz v15, :cond_14f

    .line 201
    div-float/2addr v1, v5

    .line 203
    :cond_14f
    cmpl-float v15, v5, v3

    if-eqz v15, :cond_156

    if-eqz v7, :cond_156

    .line 204
    div-float/2addr v6, v5

    .line 206
    :cond_156
    if-eqz v14, :cond_162

    .line 207
    iget-object v15, v0, Lcom/android/server/wm/WindowAnimationSpec;->mActivityThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    iget-object v3, v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v15, v8, v3, v7}, Lcom/android/server/wm/AppWindowAnimatorHelper;->stepScaleUpDownAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Transformation;Z)V

    move/from16 v16, v1

    goto :goto_171

    .line 210
    :cond_162
    iget-object v3, v0, Lcom/android/server/wm/WindowAnimationSpec;->mActivityThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    iget-object v15, v12, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    move/from16 v16, v1

    .end local v1    # "cornerRadius":F
    .local v16, "cornerRadius":F
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec;->mMiuiTransformation:Lcom/android/server/wm/MiuiTransformation;

    .line 211
    invoke-virtual {v1}, Lcom/android/server/wm/MiuiTransformation;->getRadius()F

    move-result v1

    .line 210
    invoke-virtual {v3, v8, v15, v1}, Lcom/android/server/wm/AppWindowAnimatorHelper;->stepMiuiActivityThumbnailAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Transformation;F)V

    .line 213
    :goto_171
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec;->mActivityThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimatorHelper;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 214
    .local v1, "tempLeash":Landroid/view/SurfaceControl;
    if-eqz v1, :cond_181

    const/4 v3, 0x0

    cmpl-float v15, v6, v3

    if-lez v15, :cond_181

    .line 215
    invoke-virtual {v8, v1, v6}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 226
    .end local v1    # "tempLeash":Landroid/view/SurfaceControl;
    .end local v2    # "curScaleX":F
    .end local v4    # "curScaleY":F
    .end local v5    # "scale":F
    .end local v6    # "thumbLeashCornerRadius":F
    .end local v7    # "isScaledThumbnail":Z
    :cond_181
    move/from16 v15, v16

    goto :goto_185

    .line 193
    .end local v16    # "cornerRadius":F
    .local v1, "cornerRadius":F
    :cond_184
    move v15, v1

    .line 226
    .end local v1    # "cornerRadius":F
    .local v15, "cornerRadius":F
    :goto_185
    iget-boolean v1, v0, Lcom/android/server/wm/WindowAnimationSpec;->mShouldActivityTransitionRoundCorner:Z

    if-eqz v1, :cond_193

    .line 227
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec;->mMiuiTransformation:Lcom/android/server/wm/MiuiTransformation;

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiTransformation;->getRadius()F

    move-result v1

    invoke-virtual {v8, v9, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1a5

    .line 228
    :cond_193
    if-eqz v13, :cond_1a5

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    move-result v1

    if-eqz v1, :cond_1a5

    const/4 v1, 0x0

    cmpl-float v1, v15, v1

    if-lez v1, :cond_1a5

    .line 229
    invoke-virtual {v8, v9, v15}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 232
    :cond_1a5
    :goto_1a5
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec;->mMiuiFreeFormTransformation:Lcom/android/server/wm/MiuiFreeFormTransformation;

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiFreeFormTransformation;->clear()V

    .line 233
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v7, v0, Lcom/android/server/wm/WindowAnimationSpec;->mMiuiFreeFormTransformation:Lcom/android/server/wm/MiuiFreeFormTransformation;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/server/wm/AppTransitionStub;->setFreeformSurfaceRotation(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;JLcom/android/server/wm/MiuiFreeFormTransformation;)V

    .line 235
    return-void
.end method

.method public asWindowAnimationSpec()Lcom/android/server/wm/WindowAnimationSpec;
    .registers 1

    .line 97
    return-object p0
.end method

.method public calculateStatusBarTransitionStartTime()J
    .registers 7

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-static {v0}, Lcom/android/server/wm/WindowAnimationSpec;->findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 249
    .local v0, "openTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    if-eqz v0, :cond_4e

    .line 250
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->isXAxisTransition()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 251
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->isFullWidthTranslate()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 255
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowAnimationSpec;->findMiddleOfTranslationFraction(Landroid/view/animation/Interpolator;)F

    move-result v1

    .line 257
    .local v1, "t":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 258
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getStartOffset()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 259
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    sub-long/2addr v2, v4

    .line 257
    return-wide v2

    .line 265
    .end local v1    # "t":F
    :cond_31
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowAnimationSpec;->findAlmostThereFraction(Landroid/view/animation/Interpolator;)F

    move-result v1

    .line 267
    .restart local v1    # "t":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 268
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getStartOffset()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 269
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x78

    sub-long/2addr v2, v4

    .line 267
    return-wide v2

    .line 273
    .end local v1    # "t":F
    :cond_4e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public canSkipFirstFrame()Z
    .registers 2

    .line 279
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mCanSkipFirstFrame:Z

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 289
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 290
    return-void
.end method

.method public dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 294
    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 295
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 296
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 297
    return-void
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getBackdropColor()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRootTaskBounds()Landroid/graphics/Rect;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mRootTaskBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getShowBackground()Z
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getShowBackdrop()Z

    move-result v0

    return v0
.end method

.method public getShowWallpaper()Z
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getShowWallpaper()Z

    move-result v0

    return v0
.end method

.method public hasExtension()Z
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasExtension()Z

    move-result v0

    return v0
.end method

.method public needsEarlyWakeup()Z
    .registers 2

    .line 284
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mIsAppAnimation:Z

    return v0
.end method
