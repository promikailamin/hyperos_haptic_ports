.class Landroid/graphics/BaseRecordingCanvas$34;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$hOffset:F

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;

.field final synthetic blacklist val$path:Landroid/graphics/Path;

.field final synthetic blacklist val$text:Ljava/lang/String;

.field final synthetic blacklist val$vOffset:F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 7
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 994
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$34;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-object p2, p0, Landroid/graphics/BaseRecordingCanvas$34;->val$text:Ljava/lang/String;

    iput-object p3, p0, Landroid/graphics/BaseRecordingCanvas$34;->val$path:Landroid/graphics/Path;

    iput p4, p0, Landroid/graphics/BaseRecordingCanvas$34;->val$hOffset:F

    iput p5, p0, Landroid/graphics/BaseRecordingCanvas$34;->val$vOffset:F

    iput-object p6, p0, Landroid/graphics/BaseRecordingCanvas$34;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 12

    .line 997
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$34;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v3, p0, Landroid/graphics/BaseRecordingCanvas$34;->val$text:Ljava/lang/String;

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$34;->val$path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v4

    iget v6, p0, Landroid/graphics/BaseRecordingCanvas$34;->val$hOffset:F

    iget v7, p0, Landroid/graphics/BaseRecordingCanvas$34;->val$vOffset:F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$34;->val$paint:Landroid/graphics/Paint;

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$34;->val$paint:Landroid/graphics/Paint;

    .line 998
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 997
    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawTextOnPath(JLjava/lang/String;JFFIJ)V

    .line 999
    return-void
.end method
