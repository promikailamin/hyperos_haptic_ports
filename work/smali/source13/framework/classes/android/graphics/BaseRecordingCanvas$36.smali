.class Landroid/graphics/BaseRecordingCanvas$36;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$contextEnd:I

.field final synthetic blacklist val$contextStart:I

.field final synthetic blacklist val$end:I

.field final synthetic blacklist val$isRtl:Z

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;

.field final synthetic blacklist val$start:I

.field final synthetic blacklist val$text:Ljava/lang/CharSequence;

.field final synthetic blacklist val$x:F

.field final synthetic blacklist val$y:F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .registers 11
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 1065
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$36;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-object p2, p0, Landroid/graphics/BaseRecordingCanvas$36;->val$text:Ljava/lang/CharSequence;

    iput p3, p0, Landroid/graphics/BaseRecordingCanvas$36;->val$start:I

    iput p4, p0, Landroid/graphics/BaseRecordingCanvas$36;->val$end:I

    iput p5, p0, Landroid/graphics/BaseRecordingCanvas$36;->val$contextStart:I

    iput p6, p0, Landroid/graphics/BaseRecordingCanvas$36;->val$contextEnd:I

    iput p7, p0, Landroid/graphics/BaseRecordingCanvas$36;->val$x:F

    iput p8, p0, Landroid/graphics/BaseRecordingCanvas$36;->val$y:F

    iput-boolean p9, p0, Landroid/graphics/BaseRecordingCanvas$36;->val$isRtl:Z

    iput-object p10, p0, Landroid/graphics/BaseRecordingCanvas$36;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 14

    .line 1068
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$36;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$36;->val$text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/graphics/BaseRecordingCanvas$36;->val$start:I

    iget v5, p0, Landroid/graphics/BaseRecordingCanvas$36;->val$end:I

    iget v6, p0, Landroid/graphics/BaseRecordingCanvas$36;->val$contextStart:I

    iget v7, p0, Landroid/graphics/BaseRecordingCanvas$36;->val$contextEnd:I

    iget v8, p0, Landroid/graphics/BaseRecordingCanvas$36;->val$x:F

    iget v9, p0, Landroid/graphics/BaseRecordingCanvas$36;->val$y:F

    iget-boolean v10, p0, Landroid/graphics/BaseRecordingCanvas$36;->val$isRtl:Z

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$36;->val$paint:Landroid/graphics/Paint;

    .line 1069
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    .line 1068
    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawTextRun(JLjava/lang/String;IIIIFFZJ)V

    .line 1070
    return-void
.end method
