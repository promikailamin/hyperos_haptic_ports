.class Landroid/widget/DynamicOverScroller$DynamicScroller;
.super Landroid/widget/OverScroller$SplineOverScroller;
.source "DynamicOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DynamicOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DynamicScroller"
.end annotation


# static fields
.field private static final blacklist STATE_BALLISTIC:I = 0x2

.field private static final blacklist STATE_CUBIC:I = 0x1

.field private static final blacklist STATE_SPLINE:I


# instance fields
.field private blacklist mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

.field private blacklist mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

.field private blacklist mSpringAnimation:Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;

.field private blacklist mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

.field private blacklist mValue:Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlingAnimation(Landroid/widget/DynamicOverScroller$DynamicScroller;)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;
    .registers 1

    iget-object p0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/widget/DynamicOverScroller$DynamicScroller;)Landroid/widget/DynamicOverScroller$OverScrollHandler;
    .registers 1

    iget-object p0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuper(Landroid/widget/DynamicOverScroller$DynamicScroller;)Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;
    .registers 1

    iget-object p0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoSpring(Landroid/widget/DynamicOverScroller$DynamicScroller;IIFII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/widget/DynamicOverScroller$DynamicScroller;->doSpring(IIFII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetHandler(Landroid/widget/DynamicOverScroller$DynamicScroller;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->resetHandler()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-static {p0}, Lcom/miui/internal/os/MiuiHooks;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    iput-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    .line 68
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0}, Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;-><init>()V

    iput-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mValue:Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;

    .line 69
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mValue:Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;-><init>(Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSpringAnimation:Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;

    .line 72
    new-instance v1, Lcom/miui/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Lcom/miui/internal/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/miui/internal/dynamicanimation/animation/SpringForce;)Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;

    .line 73
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSpringAnimation:Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    .line 74
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSpringAnimation:Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;->getSpring()Lcom/miui/internal/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v2, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v2}, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/miui/internal/dynamicanimation/animation/SpringForce;

    .line 75
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSpringAnimation:Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;->getSpring()Lcom/miui/internal/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v0, v2}, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/miui/internal/dynamicanimation/animation/SpringForce;

    .line 78
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v2, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mValue:Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0, v2}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;-><init>(Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    .line 81
    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setMinimumVisibleChange(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    .line 82
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    const v1, 0x3ef3cf3e

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setFriction(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    .line 89
    return-void
.end method

.method private blacklist doFling(IIIII)V
    .registers 15
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .line 194
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setStartValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    .line 195
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    .line 196
    int-to-long v0, p1

    iget-object v2, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v2}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->predictNaturalDest()F

    move-result v2

    float-to-long v2, v2

    add-long/2addr v0, v2

    .line 199
    .local v0, "unlimitedFinal":J
    int-to-long v2, p4

    cmp-long v2, v0, v2

    if-lez v2, :cond_26

    .line 200
    move v2, p4

    .line 201
    .local v2, "fixedFinal":I
    iget-object v3, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    sub-int v4, p4, p1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->predictTimeTo(F)F

    move-result v3

    float-to-int v3, v3

    .local v3, "duration":I
    goto :goto_3f

    .line 202
    .end local v2    # "fixedFinal":I
    .end local v3    # "duration":I
    :cond_26
    int-to-long v2, p3

    cmp-long v2, v0, v2

    if-gez v2, :cond_37

    .line 203
    move v2, p3

    .line 204
    .restart local v2    # "fixedFinal":I
    iget-object v3, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    sub-int v4, p3, p1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->predictTimeTo(F)F

    move-result v3

    float-to-int v3, v3

    .restart local v3    # "duration":I
    goto :goto_3f

    .line 206
    .end local v2    # "fixedFinal":I
    .end local v3    # "duration":I
    :cond_37
    long-to-int v2, v0

    .line 207
    .restart local v2    # "fixedFinal":I
    iget-object v3, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v3}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->predictDuration()F

    move-result v3

    float-to-int v3, v3

    .line 211
    .restart local v3    # "duration":I
    :goto_3f
    iget-object v4, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setFinished(Z)V

    .line 212
    iget-object v4, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    int-to-float v6, p2

    invoke-interface {v4, v6}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setCurrVelocity(F)V

    .line 213
    iget-object v4, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setStartTime(J)V

    .line 214
    iget-object v4, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v4, p1}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setCurrentPosition(I)V

    .line 215
    iget-object v4, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v4, p1}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setStart(I)V

    .line 216
    iget-object v4, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v4, v3}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setDuration(I)V

    .line 217
    iget-object v4, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v4, v2}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setFinal(I)V

    .line 218
    iget-object v4, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v4, v5}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setState(I)V

    .line 221
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 222
    .local v4, "animMin":I
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 224
    .local v5, "animMax":I
    new-instance v6, Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iget-object v7, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    int-to-float v8, p2

    invoke-direct {v6, v7, p1, v8}, Landroid/widget/DynamicOverScroller$OverScrollHandler;-><init>(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;IF)V

    iput-object v6, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    .line 225
    new-instance v7, Landroid/widget/DynamicOverScroller$DynamicScroller$1;

    invoke-direct {v7, p0, p3, p4, p5}, Landroid/widget/DynamicOverScroller$DynamicScroller$1;-><init>(Landroid/widget/DynamicOverScroller$DynamicScroller;III)V

    invoke-virtual {v6, v7}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->setOnFinishedListener(Landroid/widget/DynamicOverScroller$OverScrollHandler$OnFinishedListener;)V

    .line 246
    iget-object v6, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-virtual {v6, v4}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->setMinValue(I)V

    .line 247
    iget-object v6, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-virtual {v6, v5}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->setMaxValue(I)V

    .line 248
    iget-object v6, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-virtual {v6}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->start()V

    .line 249
    return-void
.end method

.method private blacklist doSpring(IIFII)V
    .registers 9
    .param p1, "state"    # I
    .param p2, "start"    # I
    .param p3, "initialVelocity"    # F
    .param p4, "edge"    # I
    .param p5, "over"    # I

    .line 140
    const/high16 v0, 0x457a0000    # 4000.0f

    cmpl-float v0, p3, v0

    const/4 v1, 0x0

    if-lez v0, :cond_17

    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "%f is too fast for spring, slow down"

    invoke-static {v2, v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    const/high16 p3, 0x457a0000    # 4000.0f

    .line 146
    :cond_17
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0, v1}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setFinished(Z)V

    .line 147
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0, p3}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setCurrVelocity(F)V

    .line 148
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setStartTime(J)V

    .line 149
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0, p2}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setCurrentPosition(I)V

    .line 150
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0, p2}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setStart(I)V

    .line 151
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    const v1, 0x7fffffff

    invoke-interface {v0, v1}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setDuration(I)V

    .line 152
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0, p4}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setFinal(I)V

    .line 153
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0, p1}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setState(I)V

    .line 156
    new-instance v0, Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSpringAnimation:Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, v1, p2, p3}, Landroid/widget/DynamicOverScroller$OverScrollHandler;-><init>(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;IF)V

    iput-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    .line 157
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSpringAnimation:Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/SpringAnimation;->getSpring()Lcom/miui/internal/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-virtual {v1, p4}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->getOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Lcom/miui/internal/dynamicanimation/animation/SpringForce;

    .line 158
    if-eqz p5, :cond_87

    .line 159
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_77

    .line 160
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    sub-int v1, p4, p5

    invoke-virtual {v0, v1}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->setMinValue(I)V

    .line 161
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->setMaxValue(I)V

    goto :goto_87

    .line 163
    :cond_77
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->setMinValue(I)V

    .line 164
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    add-int v1, p4, p5

    invoke-virtual {v0, v1}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->setMaxValue(I)V

    .line 167
    :cond_87
    :goto_87
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-virtual {v0}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->start()V

    .line 168
    return-void
.end method

.method private blacklist resetHandler()V
    .registers 4

    .line 252
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    if-eqz v0, :cond_48

    .line 253
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    .line 254
    invoke-interface {v2}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-virtual {v2}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->getAnimation()Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iget v2, v2, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iget v2, v2, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 253
    const-string v1, "resetting current handler: state(%d), anim(%s), value(%d), velocity(%f)"

    invoke-static {v1, v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    invoke-virtual {v0}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->cancel()V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    .line 258
    :cond_48
    return-void
.end method

.method private blacklist startAfterEdge(IIIII)V
    .registers 22
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I
    .param p5, "over"    # I

    .line 261
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "startAfterEdge: start(%d) velocity(%d) boundary(%d, %d) over(%d)"

    invoke-static {v1, v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    if-le v7, v8, :cond_3f

    if-ge v7, v9, :cond_3f

    .line 263
    iget-object v0, v6, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0, v3}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setFinished(Z)V

    .line 264
    return-void

    .line 267
    :cond_3f
    if-le v7, v9, :cond_43

    move v0, v3

    goto :goto_44

    :cond_43
    move v0, v2

    :goto_44
    move v11, v0

    .line 268
    .local v11, "positive":Z
    if-eqz v11, :cond_49

    move v0, v9

    goto :goto_4a

    :cond_49
    move v0, v8

    :goto_4a
    move v12, v0

    .line 269
    .local v12, "edge":I
    sub-int v13, v7, v12

    .line 270
    .local v13, "overDistance":I
    if-eqz v10, :cond_57

    invoke-static {v13}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    mul-int/2addr v0, v10

    if-ltz v0, :cond_57

    move v2, v3

    :cond_57
    move v14, v2

    .line 272
    .local v14, "keepIncreasing":Z
    if-eqz v14, :cond_6c

    .line 273
    const-string v0, "spring forward"

    invoke-static {v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x2

    int-to-float v3, v10

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v4, v12

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/widget/DynamicOverScroller$DynamicScroller;->doSpring(IIFII)V

    goto :goto_b2

    .line 276
    :cond_6c
    iget-object v0, v6, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    int-to-float v1, v7

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setStartValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    .line 277
    iget-object v0, v6, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    int-to-float v1, v10

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    .line 278
    iget-object v0, v6, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->predictNaturalDest()F

    move-result v15

    .line 279
    .local v15, "predictDest":F
    if-eqz v11, :cond_85

    int-to-float v0, v9

    cmpg-float v0, v15, v0

    if-ltz v0, :cond_8c

    :cond_85
    if-nez v11, :cond_a1

    int-to-float v0, v8

    cmpl-float v0, v15, v0

    if-lez v0, :cond_a1

    .line 280
    :cond_8c
    const-string v0, "fling to content"

    invoke-static {v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/widget/DynamicOverScroller$DynamicScroller;->doFling(IIIII)V

    goto :goto_b2

    .line 283
    :cond_a1
    const-string v0, "spring backward"

    invoke-static {v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 284
    const/4 v1, 0x1

    int-to-float v3, v10

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v4, v12

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/widget/DynamicOverScroller$DynamicScroller;->doSpring(IIFII)V

    .line 287
    .end local v15    # "predictDest":F
    :goto_b2
    return-void
.end method


# virtual methods
.method blacklist continueWhenFinished()Z
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->continueWhenFinished()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 303
    const-string v0, "checking have more work when finish"

    invoke-static {v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->update()Z

    .line 305
    const/4 v0, 0x1

    return v0

    .line 307
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method blacklist extendDuration(I)V
    .registers 2
    .param p1, "extend"    # I

    .line 114
    invoke-super {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 115
    return-void
.end method

.method blacklist finish()V
    .registers 3

    .line 98
    const-string v0, "finish scroller"

    invoke-static {v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->getFinal()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setCurrentPosition(I)V

    .line 100
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setFinished(Z)V

    .line 102
    invoke-direct {p0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->resetHandler()V

    .line 103
    return-void
.end method

.method blacklist fling(IIIII)V
    .registers 13
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .line 172
    int-to-float v0, p2

    const v1, 0x3f866666    # 1.05f

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 173
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "FLING: start(%d) velocity(%d) boundary(%d, %d) over(%d)"

    invoke-static {v1, v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-direct {p0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->resetHandler()V

    .line 176
    if-nez p2, :cond_50

    .line 177
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0, p1}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setCurrentPosition(I)V

    .line 178
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0, p1}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setStart(I)V

    .line 179
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0, p1}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setFinal(I)V

    .line 180
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0, v2}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setDuration(I)V

    .line 181
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0, v3}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setFinished(Z)V

    .line 182
    return-void

    .line 185
    :cond_50
    if-gt p1, p4, :cond_5f

    if-ge p1, p3, :cond_55

    goto :goto_5f

    .line 190
    :cond_55
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/widget/DynamicOverScroller$DynamicScroller;->doFling(IIIII)V

    .line 191
    return-void

    .line 186
    :cond_5f
    :goto_5f
    move-object v1, p0

    move v2, p1

    move v3, p3

    move v4, p4

    move v5, p2

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/widget/DynamicOverScroller$DynamicScroller;->startAfterEdge(IIIII)V

    .line 187
    return-void
.end method

.method blacklist notifyEdgeReached(III)V
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .line 291
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->getState()I

    move-result v0

    if-nez v0, :cond_1e

    .line 292
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    if-eqz v0, :cond_f

    .line 293
    invoke-direct {p0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->resetHandler()V

    .line 296
    :cond_f
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v5, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/widget/DynamicOverScroller$DynamicScroller;->startAfterEdge(IIIII)V

    .line 298
    :cond_1e
    return-void
.end method

.method blacklist setFinalPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .line 108
    invoke-super {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 109
    return-void
.end method

.method blacklist setFriction(F)V
    .registers 3
    .param p1, "friction"    # F

    .line 93
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mFlingAnimation:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v0, p1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setFriction(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    .line 94
    return-void
.end method

.method blacklist springback(III)Z
    .registers 11
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 119
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v0, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "SPRING_BACK start(%d) boundary(%d, %d)"

    invoke-static {v1, v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    if-eqz v0, :cond_24

    .line 121
    invoke-direct {p0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->resetHandler()V

    .line 124
    :cond_24
    if-ge p1, p2, :cond_30

    .line 125
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/DynamicOverScroller$DynamicScroller;->doSpring(IIFII)V

    goto :goto_55

    .line 126
    :cond_30
    if-le p1, p3, :cond_3c

    .line 127
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/DynamicOverScroller$DynamicScroller;->doSpring(IIFII)V

    goto :goto_55

    .line 129
    :cond_3c
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0, p1}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setCurrentPosition(I)V

    .line 130
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0, p1}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setStart(I)V

    .line 131
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0, p1}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setFinal(I)V

    .line 132
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0, v2}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setDuration(I)V

    .line 133
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0, v6}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setFinished(Z)V

    .line 136
    :goto_55
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v0}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v6

    return v0
.end method

.method blacklist update()Z
    .registers 4

    .line 313
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    if-nez v0, :cond_b

    .line 314
    const-string v0, "no handler found, aborting"

    invoke-static {v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x0

    return v0

    .line 318
    :cond_b
    invoke-virtual {v0}, Landroid/widget/DynamicOverScroller$OverScrollHandler;->update()Z

    move-result v0

    .line 320
    .local v0, "finished":Z
    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    iget-object v2, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iget v2, v2, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mValue:I

    invoke-interface {v1, v2}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setCurrentPosition(I)V

    .line 321
    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    iget-object v2, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iget v2, v2, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mVelocity:F

    invoke-interface {v1, v2}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setCurrVelocity(F)V

    .line 322
    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    invoke-interface {v1}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4c

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iget v1, v1, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mValue:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget-object v2, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mHandler:Landroid/widget/DynamicOverScroller$OverScrollHandler;

    iget v2, v2, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4c

    .line 323
    const-string v1, "State Changed: BALLISTIC -> CUBIC"

    invoke-static {v1}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller;->mSuper:Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->setState(I)V

    .line 326
    :cond_4c
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method
