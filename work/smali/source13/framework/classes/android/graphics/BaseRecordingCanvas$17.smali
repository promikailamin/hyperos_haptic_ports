.class Landroid/graphics/BaseRecordingCanvas$17;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic blacklist val$dst:Landroid/graphics/Rect;

.field final synthetic blacklist val$nativePaint:J

.field final synthetic blacklist val$patch:Landroid/graphics/NinePatch;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;Landroid/graphics/Bitmap;Landroid/graphics/NinePatch;Landroid/graphics/Rect;J)V
    .registers 7
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 506
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$17;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-object p2, p0, Landroid/graphics/BaseRecordingCanvas$17;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Landroid/graphics/BaseRecordingCanvas$17;->val$patch:Landroid/graphics/NinePatch;

    iput-object p4, p0, Landroid/graphics/BaseRecordingCanvas$17;->val$dst:Landroid/graphics/Rect;

    iput-wide p5, p0, Landroid/graphics/BaseRecordingCanvas$17;->val$nativePaint:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 16

    .line 509
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$17;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$17;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v3

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$17;->val$patch:Landroid/graphics/NinePatch;

    iget-wide v5, v0, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$17;->val$dst:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v0

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$17;->val$dst:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v0

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$17;->val$dst:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v9, v0

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$17;->val$dst:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v0

    iget-wide v11, p0, Landroid/graphics/BaseRecordingCanvas$17;->val$nativePaint:J

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$17;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget v13, v0, Landroid/graphics/BaseRecordingCanvas;->mDensity:I

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$17;->val$patch:Landroid/graphics/NinePatch;

    .line 511
    invoke-virtual {v0}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v14

    .line 509
    invoke-static/range {v1 .. v14}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawNinePatch(JJJFFFFJII)V

    .line 512
    return-void
.end method
