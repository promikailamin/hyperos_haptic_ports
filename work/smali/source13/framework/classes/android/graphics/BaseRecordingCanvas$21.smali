.class Landroid/graphics/BaseRecordingCanvas$21;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawPoint(FFLandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;

.field final synthetic blacklist val$x:F

.field final synthetic blacklist val$y:F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;FFLandroid/graphics/Paint;)V
    .registers 5
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 627
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$21;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput p2, p0, Landroid/graphics/BaseRecordingCanvas$21;->val$x:F

    iput p3, p0, Landroid/graphics/BaseRecordingCanvas$21;->val$y:F

    iput-object p4, p0, Landroid/graphics/BaseRecordingCanvas$21;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 630
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$21;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v3, p0, Landroid/graphics/BaseRecordingCanvas$21;->val$x:F

    iget v4, p0, Landroid/graphics/BaseRecordingCanvas$21;->val$y:F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$21;->val$paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawPoint(JFFJ)V

    .line 631
    return-void
.end method
