.class Landroid/graphics/BaseRecordingCanvas$26;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$inner:Landroid/graphics/RectF;

.field final synthetic blacklist val$innerRx:F

.field final synthetic blacklist val$innerRy:F

.field final synthetic blacklist val$outer:Landroid/graphics/RectF;

.field final synthetic blacklist val$outerRx:F

.field final synthetic blacklist val$outerRy:F

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 9
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 767
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$26;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-object p2, p0, Landroid/graphics/BaseRecordingCanvas$26;->val$outer:Landroid/graphics/RectF;

    iput p3, p0, Landroid/graphics/BaseRecordingCanvas$26;->val$outerRx:F

    iput p4, p0, Landroid/graphics/BaseRecordingCanvas$26;->val$outerRy:F

    iput-object p5, p0, Landroid/graphics/BaseRecordingCanvas$26;->val$inner:Landroid/graphics/RectF;

    iput p6, p0, Landroid/graphics/BaseRecordingCanvas$26;->val$innerRx:F

    iput p7, p0, Landroid/graphics/BaseRecordingCanvas$26;->val$innerRy:F

    iput-object p8, p0, Landroid/graphics/BaseRecordingCanvas$26;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 19

    .line 770
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas$26;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v2, v1, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas$26;->val$outer:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas$26;->val$outer:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas$26;->val$outer:Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas$26;->val$outer:Landroid/graphics/RectF;

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    iget v8, v0, Landroid/graphics/BaseRecordingCanvas$26;->val$outerRx:F

    iget v9, v0, Landroid/graphics/BaseRecordingCanvas$26;->val$outerRy:F

    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas$26;->val$inner:Landroid/graphics/RectF;

    iget v10, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas$26;->val$inner:Landroid/graphics/RectF;

    iget v11, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas$26;->val$inner:Landroid/graphics/RectF;

    iget v12, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas$26;->val$inner:Landroid/graphics/RectF;

    iget v13, v1, Landroid/graphics/RectF;->bottom:F

    iget v14, v0, Landroid/graphics/BaseRecordingCanvas$26;->val$innerRx:F

    iget v15, v0, Landroid/graphics/BaseRecordingCanvas$26;->val$innerRy:F

    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas$26;->val$paint:Landroid/graphics/Paint;

    .line 773
    invoke-virtual {v1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    .line 770
    invoke-static/range {v2 .. v17}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawDoubleRoundRect(JFFFFFFFFFFFFJ)V

    .line 774
    return-void
.end method
