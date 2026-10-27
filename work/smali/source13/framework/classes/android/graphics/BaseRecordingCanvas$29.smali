.class Landroid/graphics/BaseRecordingCanvas$29;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$end:I

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;

.field final synthetic blacklist val$start:I

.field final synthetic blacklist val$text:Ljava/lang/CharSequence;

.field final synthetic blacklist val$x:F

.field final synthetic blacklist val$y:F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .registers 8
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 877
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$29;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-object p2, p0, Landroid/graphics/BaseRecordingCanvas$29;->val$text:Ljava/lang/CharSequence;

    iput p3, p0, Landroid/graphics/BaseRecordingCanvas$29;->val$start:I

    iput p4, p0, Landroid/graphics/BaseRecordingCanvas$29;->val$end:I

    iput p5, p0, Landroid/graphics/BaseRecordingCanvas$29;->val$x:F

    iput p6, p0, Landroid/graphics/BaseRecordingCanvas$29;->val$y:F

    iput-object p7, p0, Landroid/graphics/BaseRecordingCanvas$29;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 12

    .line 880
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$29;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$29;->val$text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/graphics/BaseRecordingCanvas$29;->val$start:I

    iget v5, p0, Landroid/graphics/BaseRecordingCanvas$29;->val$end:I

    iget v6, p0, Landroid/graphics/BaseRecordingCanvas$29;->val$x:F

    iget v7, p0, Landroid/graphics/BaseRecordingCanvas$29;->val$y:F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$29;->val$paint:Landroid/graphics/Paint;

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$29;->val$paint:Landroid/graphics/Paint;

    .line 881
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 880
    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawText(JLjava/lang/String;IIFFIJ)V

    .line 882
    return-void
.end method
