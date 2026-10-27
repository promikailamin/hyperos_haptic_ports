.class Landroid/graphics/BaseRecordingCanvas$3;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
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

.field final synthetic blacklist val$matrix:Landroid/graphics/Matrix;

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .registers 4
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 128
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$3;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-object p2, p0, Landroid/graphics/BaseRecordingCanvas$3;->val$matrix:Landroid/graphics/Matrix;

    iput-object p3, p0, Landroid/graphics/BaseRecordingCanvas$3;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/graphics/Bitmap;)V
    .registers 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 131
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$3;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v3

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$3;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v5

    .line 132
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$3;->val$paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    goto :goto_19

    :cond_17
    const-wide/16 v7, 0x0

    .line 131
    :goto_19
    invoke-static/range {v1 .. v8}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawBitmapMatrix(JJJJ)V

    .line 133
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 128
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/graphics/BaseRecordingCanvas$3;->accept(Landroid/graphics/Bitmap;)V

    return-void
.end method
