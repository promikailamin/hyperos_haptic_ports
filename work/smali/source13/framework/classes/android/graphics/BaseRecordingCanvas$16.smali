.class Landroid/graphics/BaseRecordingCanvas$16;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawPaint(Landroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;Landroid/graphics/Paint;)V
    .registers 3
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 483
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$16;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-object p2, p0, Landroid/graphics/BaseRecordingCanvas$16;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 486
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$16;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v0, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v2, p0, Landroid/graphics/BaseRecordingCanvas$16;->val$paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawPaint(JJ)V

    .line 487
    return-void
.end method
