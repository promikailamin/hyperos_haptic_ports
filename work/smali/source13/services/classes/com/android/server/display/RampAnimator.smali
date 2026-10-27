.class Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$DualRampAnimator;,
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private mAnimationDecreaseMaxTimeSecs:F

.field private mAnimationIncreaseMaxTimeSecs:F

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:F

.field private mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mRate:F

.field private mTargetValue:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnimatedValue(Lcom/android/server/display/RampAnimator;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmChoreographer(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayPowerControllerImpl(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/DisplayPowerControllerStub;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastFrameTimeNanos(Lcom/android/server/display/RampAnimator;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProperty(Lcom/android/server/display/RampAnimator;)Landroid/util/FloatProperty;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRate(Lcom/android/server/display/RampAnimator;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAnimatedValue(Lcom/android/server/display/RampAnimator;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnimating(Lcom/android/server/display/RampAnimator;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentValue(Lcom/android/server/display/RampAnimator;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastFrameTimeNanos(Lcom/android/server/display/RampAnimator;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostAnimationCallback(Lcom/android/server/display/RampAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDisplayPowerController(Lcom/android/server/display/RampAnimator;Lcom/android/server/display/DisplayPowerControllerStub;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/RampAnimator;->setDisplayPowerController(Lcom/android/server/display/DisplayPowerControllerStub;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPropertyValue(Lcom/android/server/display/RampAnimator;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/RampAnimator;->setPropertyValue(F)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 177
    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    .line 53
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    .line 54
    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    .line 55
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 56
    return-void
.end method

.method private cancelAnimationCallback()V
    .registers 5

    .line 174
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method private postAnimationCallback()V
    .registers 5

    .line 170
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method private setDisplayPowerController(Lcom/android/server/display/DisplayPowerControllerStub;)V
    .registers 2
    .param p1, "stub"    # Lcom/android/server/display/DisplayPowerControllerStub;

    .line 308
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerStub;

    .line 309
    return-void
.end method

.method private setPropertyValue(F)V
    .registers 5
    .param p1, "val"    # F

    .line 164
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    move v0, p1

    .line 166
    .local v0, "linearVal":F
    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 167
    return-void
.end method


# virtual methods
.method public animateTo(FF)Z
    .registers 10
    .param p1, "targetLinear"    # F
    .param p2, "rate"    # F

    .line 84
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    move v0, p1

    .line 87
    .local v0, "target":F
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_78

    cmpg-float v5, p2, v4

    if-gtz v5, :cond_e

    goto/16 :goto_78

    .line 107
    :cond_e
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float v5, v0, v1

    if-lez v5, :cond_26

    iget v5, p0, Lcom/android/server/display/RampAnimator;->mAnimationIncreaseMaxTimeSecs:F

    cmpl-float v6, v5, v4

    if-lez v6, :cond_26

    sub-float v6, v0, v1

    div-float/2addr v6, p2

    cmpl-float v6, v6, v5

    if-lez v6, :cond_26

    .line 109
    sub-float v4, v0, v1

    div-float p2, v4, v5

    goto :goto_3b

    .line 110
    :cond_26
    cmpg-float v5, v0, v1

    if-gez v5, :cond_3b

    iget v5, p0, Lcom/android/server/display/RampAnimator;->mAnimationDecreaseMaxTimeSecs:F

    cmpl-float v4, v5, v4

    if-lez v4, :cond_3b

    sub-float v4, v1, v0

    div-float/2addr v4, p2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3b

    .line 112
    sub-float v4, v1, v0

    div-float p2, v4, v5

    .line 122
    :cond_3b
    :goto_3b
    iget-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v4, :cond_59

    iget v5, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    cmpl-float v5, p2, v5

    if-gtz v5, :cond_59

    cmpg-float v5, v0, v1

    if-gtz v5, :cond_4f

    iget v5, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    cmpg-float v5, v1, v5

    if-lez v5, :cond_59

    :cond_4f
    iget v5, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    cmpg-float v5, v5, v1

    if-gtz v5, :cond_5b

    cmpg-float v5, v1, v0

    if-gtz v5, :cond_5b

    .line 126
    :cond_59
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    .line 129
    :cond_5b
    iget v5, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    cmpl-float v5, v5, v0

    if-eqz v5, :cond_62

    move v3, v2

    .line 130
    .local v3, "changed":Z
    :cond_62
    iput v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    .line 133
    if-nez v4, :cond_77

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_77

    .line 134
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 135
    iput v1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 136
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 137
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    .line 140
    :cond_77
    return v3

    .line 88
    .end local v3    # "changed":Z
    :cond_78
    :goto_78
    if-nez v1, :cond_82

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_81

    goto :goto_82

    .line 103
    :cond_81
    return v3

    .line 89
    :cond_82
    :goto_82
    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 90
    iput v4, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    .line 91
    iput v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    .line 92
    iput v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 93
    invoke-direct {p0, v0}, Lcom/android/server/display/RampAnimator;->setPropertyValue(F)V

    .line 94
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v1, :cond_96

    .line 95
    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 96
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    .line 98
    :cond_96
    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v1, :cond_9d

    .line 99
    invoke-interface {v1}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    .line 101
    :cond_9d
    return v2
.end method

.method public isAnimating()Z
    .registers 2

    .line 147
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v0
.end method

.method public setAnimationTimeLimits(JJ)V
    .registers 10
    .param p1, "animationRampIncreaseMaxTimeMillis"    # J
    .param p3, "animationRampDecreaseMaxTimeMillis"    # J

    .line 63
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v4, 0x0

    if-lez v2, :cond_c

    .line 64
    long-to-float v2, p1

    div-float/2addr v2, v3

    goto :goto_d

    :cond_c
    move v2, v4

    :goto_d
    iput v2, p0, Lcom/android/server/display/RampAnimator;->mAnimationIncreaseMaxTimeSecs:F

    .line 65
    cmp-long v0, p3, v0

    if-lez v0, :cond_17

    .line 66
    long-to-float v0, p3

    div-float v4, v0, v3

    goto :goto_18

    :cond_17
    nop

    :goto_18
    iput v4, p0, Lcom/android/server/display/RampAnimator;->mAnimationDecreaseMaxTimeSecs:F

    .line 67
    return-void
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/server/display/RampAnimator$Listener;

    .line 154
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 155
    return-void
.end method
