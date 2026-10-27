.class Landroid/graphics/BaseRecordingCanvas$27;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$inner:Landroid/graphics/RectF;

.field final synthetic blacklist val$innerRadii:[F

.field final synthetic blacklist val$outer:Landroid/graphics/RectF;

.field final synthetic blacklist val$outerRadii:[F

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .registers 7
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 794
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$27;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-object p2, p0, Landroid/graphics/BaseRecordingCanvas$27;->val$outer:Landroid/graphics/RectF;

    iput-object p3, p0, Landroid/graphics/BaseRecordingCanvas$27;->val$outerRadii:[F

    iput-object p4, p0, Landroid/graphics/BaseRecordingCanvas$27;->val$inner:Landroid/graphics/RectF;

    iput-object p5, p0, Landroid/graphics/BaseRecordingCanvas$27;->val$innerRadii:[F

    iput-object p6, p0, Landroid/graphics/BaseRecordingCanvas$27;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 16

    .line 797
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$27;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$27;->val$outer:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$27;->val$outer:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$27;->val$outer:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$27;->val$outer:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Landroid/graphics/BaseRecordingCanvas$27;->val$outerRadii:[F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$27;->val$inner:Landroid/graphics/RectF;

    iget v8, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$27;->val$inner:Landroid/graphics/RectF;

    iget v9, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$27;->val$inner:Landroid/graphics/RectF;

    iget v10, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$27;->val$inner:Landroid/graphics/RectF;

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v12, p0, Landroid/graphics/BaseRecordingCanvas$27;->val$innerRadii:[F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$27;->val$paint:Landroid/graphics/Paint;

    .line 800
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v13

    .line 797
    invoke-static/range {v1 .. v14}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawDoubleRoundRect(JFFFF[FFFFF[FJ)V

    .line 801
    return-void
.end method
