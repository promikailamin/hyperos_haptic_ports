.class Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;
.super Ljava/lang/Object;
.source "BackgroundBlurDrawable.java"

# interfaces
.implements Landroid/graphics/RenderNode$PositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 81
    iput-object p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$positionChanged$0$com-android-internal-graphics-drawable-BackgroundBlurDrawable$1(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 107
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmRect(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 108
    return-void
.end method

.method synthetic blacklist lambda$positionLost$1$com-android-internal-graphics-drawable-BackgroundBlurDrawable$1()V
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmRect(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 118
    return-void
.end method

.method public blacklist positionChanged(JIIII)V
    .registers 16
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 86
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmAlpha(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmBlurRadius(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)I

    move-result v0

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmVisible(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 87
    .local v0, "shouldBeDrawn":Z
    :goto_1e
    if-nez v0, :cond_7f

    .line 88
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 89
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 91
    .local v1, "vRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-virtual {v2}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    .line 92
    .local v2, "callback":Landroid/graphics/drawable/Drawable$Callback;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_3b

    .line 93
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .line 94
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3, v1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 96
    .end local v3    # "view":Landroid/view/View;
    :cond_3b
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skip vRect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " left = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " top = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bottom = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v1    # "vRect":Landroid/graphics/Rect;
    .end local v2    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    :cond_7e
    return-void

    .line 106
    :cond_7f
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmAggregator(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    move-result-object v1

    new-instance v8, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda0;

    move-object v2, v8

    move-object v3, p0

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;IIII)V

    invoke-virtual {v1, p1, p2, v8}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onRenderNodePositionChanged(JLjava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public blacklist positionLost(J)V
    .registers 5
    .param p1, "frameNumber"    # J

    .line 113
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmAlpha(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_c

    .line 114
    return-void

    .line 116
    :cond_c
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmAggregator(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onRenderNodePositionChanged(JLjava/lang/Runnable;)V

    .line 119
    return-void
.end method
