.class Lcom/android/server/display/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/RampAnimator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/RampAnimator;

    .line 177
    .local p0, "this":Lcom/android/server/display/RampAnimator$1;, "Lcom/android/server/display/RampAnimator$1;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 180
    .local p0, "this":Lcom/android/server/display/RampAnimator$1;, "Lcom/android/server/display/RampAnimator$1;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmChoreographer(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    .line 184
    .local v0, "frameTimeNanos":J
    iget-object v2, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v2}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmLastFrameTimeNanos(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x3089705f    # 1.0E-9f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 187
    .local v2, "timeDelta":F
    iget-object v3, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v3, v0, v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fputmLastFrameTimeNanos(Lcom/android/server/display/RampAnimator;J)V

    .line 193
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v3

    .line 194
    .local v3, "scale":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_34

    .line 196
    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/display/RampAnimator;->-$$Nest$fputmAnimatedValue(Lcom/android/server/display/RampAnimator;F)V

    goto/16 :goto_d6

    .line 200
    :cond_34
    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmDisplayPowerControllerImpl(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/DisplayPowerControllerStub;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmRate(Lcom/android/server/display/RampAnimator;)F

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F

    move-result v7

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmProperty(Lcom/android/server/display/RampAnimator;)Landroid/util/FloatProperty;

    move-result-object v8

    .line 201
    invoke-virtual {v8}, Landroid/util/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v8

    .line 200
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/server/display/DisplayPowerControllerStub;->computeFloatRate(FFFLjava/lang/String;)F

    move-result v4

    .line 203
    .local v4, "tempRate":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 204
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmRate(Lcom/android/server/display/RampAnimator;)F

    move-result v5

    mul-float/2addr v5, v2

    div-float/2addr v5, v3

    .local v5, "amount":F
    goto :goto_6c

    .line 206
    .end local v5    # "amount":F
    :cond_69
    mul-float v5, v2, v4

    div-float/2addr v5, v3

    .line 209
    .restart local v5    # "amount":F
    :goto_6c
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_91

    .line 210
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmAnimatedValue(Lcom/android/server/display/RampAnimator;)F

    move-result v7

    add-float/2addr v7, v5

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->-$$Nest$fputmAnimatedValue(Lcom/android/server/display/RampAnimator;F)V

    goto :goto_a5

    .line 212
    :cond_91
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmAnimatedValue(Lcom/android/server/display/RampAnimator;)F

    move-result v7

    sub-float/2addr v7, v5

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->-$$Nest$fputmAnimatedValue(Lcom/android/server/display/RampAnimator;F)V

    .line 216
    :goto_a5
    sget-object v6, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    invoke-virtual {v6}, Landroid/util/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmProperty(Lcom/android/server/display/RampAnimator;)Landroid/util/FloatProperty;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d6

    .line 217
    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmDisplayPowerControllerImpl(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/DisplayPowerControllerStub;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F

    move-result v7

    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmAnimatedValue(Lcom/android/server/display/RampAnimator;)F

    move-result v8

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F

    move-result v9

    invoke-interface {v6, v7, v8, v9}, Lcom/android/server/display/DisplayPowerControllerStub;->notifyUpdateBrightnessAnimInfo(FFF)V

    .line 221
    .end local v4    # "tempRate":F
    .end local v5    # "amount":F
    :cond_d6
    :goto_d6
    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F

    move-result v4

    .line 222
    .local v4, "oldCurrentValue":F
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmAnimatedValue(Lcom/android/server/display/RampAnimator;)F

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/display/RampAnimator;->-$$Nest$fputmCurrentValue(Lcom/android/server/display/RampAnimator;F)V

    .line 223
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v5

    if-nez v5, :cond_fa

    .line 224
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/display/RampAnimator;->-$$Nest$msetPropertyValue(Lcom/android/server/display/RampAnimator;F)V

    .line 226
    :cond_fa
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v5

    if-nez v5, :cond_112

    .line 227
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->-$$Nest$mpostAnimationCallback(Lcom/android/server/display/RampAnimator;)V

    goto :goto_129

    .line 229
    :cond_112
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/server/display/RampAnimator;->-$$Nest$fputmAnimating(Lcom/android/server/display/RampAnimator;Z)V

    .line 230
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmListener(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v5

    if-eqz v5, :cond_129

    .line 231
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmListener(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    .line 234
    :cond_129
    :goto_129
    return-void
.end method
