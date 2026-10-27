.class Landroid/graphics/BaseRecordingCanvas$2;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$left:F

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;

.field final synthetic blacklist val$top:F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;FFLandroid/graphics/Paint;)V
    .registers 5
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 105
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$2;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput p2, p0, Landroid/graphics/BaseRecordingCanvas$2;->val$left:F

    iput p3, p0, Landroid/graphics/BaseRecordingCanvas$2;->val$top:F

    iput-object p4, p0, Landroid/graphics/BaseRecordingCanvas$2;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/graphics/Bitmap;)V
    .registers 14
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 108
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$2;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v3

    iget v5, p0, Landroid/graphics/BaseRecordingCanvas$2;->val$left:F

    iget v6, p0, Landroid/graphics/BaseRecordingCanvas$2;->val$top:F

    .line 109
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$2;->val$paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    goto :goto_17

    :cond_15
    const-wide/16 v7, 0x0

    :goto_17
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$2;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget v9, v0, Landroid/graphics/BaseRecordingCanvas;->mDensity:I

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$2;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget v10, v0, Landroid/graphics/BaseRecordingCanvas;->mScreenDensity:I

    iget v11, p1, Landroid/graphics/Bitmap;->mDensity:I

    .line 108
    invoke-static/range {v1 .. v11}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawBitmap(JJFFJIII)V

    .line 111
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 105
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/graphics/BaseRecordingCanvas$2;->accept(Landroid/graphics/Bitmap;)V

    return-void
.end method
