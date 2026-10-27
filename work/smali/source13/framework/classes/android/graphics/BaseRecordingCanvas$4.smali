.class Landroid/graphics/BaseRecordingCanvas$4;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Landroid/graphics/Bitmap;",
        "Landroid/util/Pair<",
        "Landroid/graphics/RectF;",
        "Landroid/graphics/RectF;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$nativePaint:J


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;J)V
    .registers 4
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 168
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$4;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-wide p2, p0, Landroid/graphics/BaseRecordingCanvas$4;->val$nativePaint:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/graphics/Bitmap;Landroid/util/Pair;)V
    .registers 22
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/Pair<",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 171
    .local p2, "rectRectPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/RectF;Landroid/graphics/RectF;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Landroid/graphics/BaseRecordingCanvas$4;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v3, v2, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v5

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v9, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v11, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v12, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v13, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas$4;->val$nativePaint:J

    iget-object v15, v0, Landroid/graphics/BaseRecordingCanvas$4;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget v15, v15, Landroid/graphics/BaseRecordingCanvas;->mScreenDensity:I

    move-object/from16 v0, p1

    move-wide/from16 v16, v1

    iget v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    move v2, v15

    move-wide/from16 v15, v16

    move/from16 v17, v2

    move/from16 v18, v1

    invoke-static/range {v3 .. v18}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawBitmap(JJFFFFFFFFJII)V

    .line 175
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 168
    check-cast p1, Landroid/graphics/Bitmap;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/BaseRecordingCanvas$4;->accept(Landroid/graphics/Bitmap;Landroid/util/Pair;)V

    return-void
.end method
