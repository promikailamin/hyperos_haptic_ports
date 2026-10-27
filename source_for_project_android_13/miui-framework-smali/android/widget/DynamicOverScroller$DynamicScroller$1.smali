.class Landroid/widget/DynamicOverScroller$DynamicScroller$1;
.super Ljava/lang/Object;
.source "DynamicOverScroller.java"

# interfaces
.implements Landroid/widget/DynamicOverScroller$OverScrollHandler$OnFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DynamicOverScroller$DynamicScroller;->doFling(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

.field final synthetic blacklist val$max:I

.field final synthetic blacklist val$min:I

.field final synthetic blacklist val$over:I


# direct methods
.method constructor blacklist <init>(Landroid/widget/DynamicOverScroller$DynamicScroller;III)V
    .registers 5
    .param p1, "this$0"    # Landroid/widget/DynamicOverScroller$DynamicScroller;

    .line 225
    iput-object p1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    iput p2, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->val$min:I

    iput p3, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->val$max:I

    iput p4, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->val$over:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist whenFinished(FF)Z
    .registers 13
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .line 228
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->val$min:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->val$max:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "fling finished: value(%f), velocity(%f), scroller boundary(%d, %d)"

    invoke-static {v1, v0}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    invoke-static {v0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->-$$Nest$fgetmFlingAnimation(Landroid/widget/DynamicOverScroller$DynamicScroller;)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    invoke-static {v1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->-$$Nest$fgetmHandler(Landroid/widget/DynamicOverScroller$DynamicScroller;)Landroid/widget/DynamicOverScroller$OverScrollHandler;

    move-result-object v1

    iget v1, v1, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mValue:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setStartValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    .line 230
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    invoke-static {v0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->-$$Nest$fgetmFlingAnimation(Landroid/widget/DynamicOverScroller$DynamicScroller;)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    invoke-static {v1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->-$$Nest$fgetmHandler(Landroid/widget/DynamicOverScroller$DynamicScroller;)Landroid/widget/DynamicOverScroller$OverScrollHandler;

    move-result-object v1

    iget v1, v1, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mVelocity:F

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    .line 232
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    invoke-static {v0}, Landroid/widget/DynamicOverScroller$DynamicScroller;->-$$Nest$fgetmFlingAnimation(Landroid/widget/DynamicOverScroller$DynamicScroller;)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->predictNaturalDest()F

    move-result v0

    .line 233
    .local v0, "predictValue":F
    float-to-int v1, p1

    if-eqz v1, :cond_95

    iget v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->val$max:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_66

    iget v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->val$min:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_95

    .line 234
    :cond_66
    const-string v1, "fling destination beyound boundary, start spring"

    invoke-static {v1}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    invoke-static {v1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->-$$Nest$mresetHandler(Landroid/widget/DynamicOverScroller$DynamicScroller;)V

    .line 237
    iget-object v4, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    const/4 v5, 0x2

    invoke-static {v4}, Landroid/widget/DynamicOverScroller$DynamicScroller;->-$$Nest$fgetmSuper(Landroid/widget/DynamicOverScroller$DynamicScroller;)Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->getCurrentPosition()I

    move-result v6

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    invoke-static {v1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->-$$Nest$fgetmSuper(Landroid/widget/DynamicOverScroller$DynamicScroller;)Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->getCurrVelocity()F

    move-result v7

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->this$0:Landroid/widget/DynamicOverScroller$DynamicScroller;

    invoke-static {v1}, Landroid/widget/DynamicOverScroller$DynamicScroller;->-$$Nest$fgetmSuper(Landroid/widget/DynamicOverScroller$DynamicScroller;)Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/internal/os/MiuiHooks$ISplineOverScroller;->getFinal()I

    move-result v8

    iget v9, p0, Landroid/widget/DynamicOverScroller$DynamicScroller$1;->val$over:I

    invoke-static/range {v4 .. v9}, Landroid/widget/DynamicOverScroller$DynamicScroller;->-$$Nest$mdoSpring(Landroid/widget/DynamicOverScroller$DynamicScroller;IIFII)V

    .line 238
    return v3

    .line 240
    :cond_95
    const-string v1, "fling finished, no more work."

    invoke-static {v1}, Landroid/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 241
    return v2
.end method
