.class Landroid/graphics/BaseRecordingCanvas$38;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
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

.field final synthetic blacklist val$measuredText:Landroid/graphics/text/MeasuredText;

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;

.field final synthetic blacklist val$start:I

.field final synthetic blacklist val$x:F

.field final synthetic blacklist val$y:F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
    .registers 11
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 1134
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$38;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-object p2, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$measuredText:Landroid/graphics/text/MeasuredText;

    iput p3, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$start:I

    iput p4, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$end:I

    iput p5, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$contextStart:I

    iput p6, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$contextEnd:I

    iput p7, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$x:F

    iput p8, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$y:F

    iput-boolean p9, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$isRtl:Z

    iput-object p10, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 16

    .line 1137
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$38;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$measuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0}, Landroid/graphics/text/MeasuredText;->getChars()[C

    move-result-object v3

    iget v4, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$start:I

    iget v0, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$end:I

    sub-int v5, v0, v4

    iget v6, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$contextStart:I

    iget v0, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$contextEnd:I

    sub-int v7, v0, v6

    iget v8, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$x:F

    iget v9, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$y:F

    iget-boolean v10, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$isRtl:Z

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$paint:Landroid/graphics/Paint;

    .line 1138
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$38;->val$measuredText:Landroid/graphics/text/MeasuredText;

    .line 1139
    invoke-virtual {v0}, Landroid/graphics/text/MeasuredText;->getNativePtr()J

    move-result-wide v13

    .line 1137
    invoke-static/range {v1 .. v14}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawTextRun(J[CIIIIFFZJJ)V

    .line 1140
    return-void
.end method
