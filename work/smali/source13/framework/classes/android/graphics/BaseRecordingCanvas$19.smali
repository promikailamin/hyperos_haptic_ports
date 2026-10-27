.class Landroid/graphics/BaseRecordingCanvas$19;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Landroid/graphics/Path;",
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;)V
    .registers 2
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 557
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$19;->this$0:Landroid/graphics/BaseRecordingCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .registers 10
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 560
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v0, :cond_18

    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_18

    .line 561
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$19;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    iget-wide v3, v0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawRegion(JJJ)V

    goto :goto_27

    .line 563
    :cond_18
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$19;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawPath(JJJ)V

    .line 565
    :goto_27
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 557
    check-cast p1, Landroid/graphics/Path;

    check-cast p2, Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/BaseRecordingCanvas$19;->accept(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
