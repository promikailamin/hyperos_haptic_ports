.class Landroid/graphics/BaseRecordingCanvas$24;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;

.field final synthetic blacklist val$rect:Landroid/graphics/RectF;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 4
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 713
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$24;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-object p2, p0, Landroid/graphics/BaseRecordingCanvas$24;->val$rect:Landroid/graphics/RectF;

    iput-object p3, p0, Landroid/graphics/BaseRecordingCanvas$24;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 10

    .line 716
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$24;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$24;->val$rect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$24;->val$rect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$24;->val$rect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$24;->val$rect:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$24;->val$paint:Landroid/graphics/Paint;

    .line 717
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    .line 716
    invoke-static/range {v1 .. v8}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawRect(JFFFFJ)V

    .line 718
    return-void
.end method
