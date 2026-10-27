.class Landroid/graphics/BaseRecordingCanvas$1;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;

.field final synthetic blacklist val$startAngle:F

.field final synthetic blacklist val$sweepAngle:F

.field final synthetic blacklist val$useCenter:Z


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;FFZLandroid/graphics/Paint;)V
    .registers 6
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 70
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$1;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput p2, p0, Landroid/graphics/BaseRecordingCanvas$1;->val$startAngle:F

    iput p3, p0, Landroid/graphics/BaseRecordingCanvas$1;->val$sweepAngle:F

    iput-boolean p4, p0, Landroid/graphics/BaseRecordingCanvas$1;->val$useCenter:Z

    iput-object p5, p0, Landroid/graphics/BaseRecordingCanvas$1;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/graphics/RectF;)V
    .registers 14
    .param p1, "rectF"    # Landroid/graphics/RectF;

    .line 73
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$1;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->right:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Landroid/graphics/BaseRecordingCanvas$1;->val$startAngle:F

    iget v8, p0, Landroid/graphics/BaseRecordingCanvas$1;->val$sweepAngle:F

    iget-boolean v9, p0, Landroid/graphics/BaseRecordingCanvas$1;->val$useCenter:Z

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$1;->val$paint:Landroid/graphics/Paint;

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 73
    invoke-static/range {v1 .. v11}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawArc(JFFFFFFZJ)V

    .line 75
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 70
    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/BaseRecordingCanvas$1;->accept(Landroid/graphics/RectF;)V

    return-void
.end method
