.class Lcom/android/server/display/RampAnimator$DualRampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DualRampAnimator"
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
.field private final mFirst:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mInternalListener:Lcom/android/server/display/RampAnimator$Listener;

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mSecond:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/display/RampAnimator$DualRampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object p0
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;Landroid/util/FloatProperty;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;",
            "Landroid/util/FloatProperty<",
            "TT;>;)V"
        }
    .end annotation

    .line 256
    .local p0, "this":Lcom/android/server/display/RampAnimator$DualRampAnimator;, "Lcom/android/server/display/RampAnimator$DualRampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "firstProperty":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TT;>;"
    .local p3, "secondProperty":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator$DualRampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mInternalListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 257
    new-instance v1, Lcom/android/server/display/RampAnimator;

    invoke-direct {v1, p1, p2}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object v1, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 258
    invoke-virtual {v1, v0}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 259
    new-instance v1, Lcom/android/server/display/RampAnimator;

    invoke-direct {v1, p1, p3}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object v1, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    .line 260
    invoke-virtual {v1, v0}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 261
    return-void
.end method


# virtual methods
.method public animateTo(FFF)Z
    .registers 7
    .param p1, "linearFirstTarget"    # F
    .param p2, "linearSecondTarget"    # F
    .param p3, "rate"    # F

    .line 286
    .local p0, "this":Lcom/android/server/display/RampAnimator$DualRampAnimator;, "Lcom/android/server/display/RampAnimator$DualRampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/display/RampAnimator;->animateTo(FF)Z

    move-result v0

    .line 287
    .local v0, "firstRetval":Z
    iget-object v1, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/display/RampAnimator;->animateTo(FF)Z

    move-result v1

    .line 288
    .local v1, "secondRetval":Z
    if-eqz v0, :cond_12

    if-eqz v1, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method

.method public isAnimating()Z
    .registers 2

    .line 296
    .local p0, "this":Lcom/android/server/display/RampAnimator$DualRampAnimator;, "Lcom/android/server/display/RampAnimator$DualRampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public setAnimationTimeLimits(JJ)V
    .registers 6
    .param p1, "animationRampIncreaseMaxTimeMillis"    # J
    .param p3, "animationRampDecreaseMaxTimeMillis"    # J

    .line 268
    .local p0, "this":Lcom/android/server/display/RampAnimator$DualRampAnimator;, "Lcom/android/server/display/RampAnimator$DualRampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/RampAnimator;->setAnimationTimeLimits(JJ)V

    .line 270
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/RampAnimator;->setAnimationTimeLimits(JJ)V

    .line 272
    return-void
.end method

.method public setDisplayPowerController(Lcom/android/server/display/DisplayPowerControllerStub;)V
    .registers 3
    .param p1, "stub"    # Lcom/android/server/display/DisplayPowerControllerStub;

    .line 301
    .local p0, "this":Lcom/android/server/display/RampAnimator$DualRampAnimator;, "Lcom/android/server/display/RampAnimator$DualRampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-static {v0, p1}, Lcom/android/server/display/RampAnimator;->-$$Nest$msetDisplayPowerController(Lcom/android/server/display/RampAnimator;Lcom/android/server/display/DisplayPowerControllerStub;)V

    .line 302
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    invoke-static {v0, p1}, Lcom/android/server/display/RampAnimator;->-$$Nest$msetDisplayPowerController(Lcom/android/server/display/RampAnimator;Lcom/android/server/display/DisplayPowerControllerStub;)V

    .line 303
    return-void
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/server/display/RampAnimator$Listener;

    .line 292
    .local p0, "this":Lcom/android/server/display/RampAnimator$DualRampAnimator;, "Lcom/android/server/display/RampAnimator$DualRampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 293
    return-void
.end method
