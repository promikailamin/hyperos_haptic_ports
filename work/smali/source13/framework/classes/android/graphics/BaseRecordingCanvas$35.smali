.class Landroid/graphics/BaseRecordingCanvas$35;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$contextCount:I

.field final synthetic blacklist val$contextIndex:I

.field final synthetic blacklist val$count:I

.field final synthetic blacklist val$index:I

.field final synthetic blacklist val$isRtl:Z

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;

.field final synthetic blacklist val$text:[C

.field final synthetic blacklist val$x:F

.field final synthetic blacklist val$y:F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;[CIIIIFFZLandroid/graphics/Paint;)V
    .registers 11
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 1030
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$35;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-object p2, p0, Landroid/graphics/BaseRecordingCanvas$35;->val$text:[C

    iput p3, p0, Landroid/graphics/BaseRecordingCanvas$35;->val$index:I

    iput p4, p0, Landroid/graphics/BaseRecordingCanvas$35;->val$count:I

    iput p5, p0, Landroid/graphics/BaseRecordingCanvas$35;->val$contextIndex:I

    iput p6, p0, Landroid/graphics/BaseRecordingCanvas$35;->val$contextCount:I

    iput p7, p0, Landroid/graphics/BaseRecordingCanvas$35;->val$x:F

    iput p8, p0, Landroid/graphics/BaseRecordingCanvas$35;->val$y:F

    iput-boolean p9, p0, Landroid/graphics/BaseRecordingCanvas$35;->val$isRtl:Z

    iput-object p10, p0, Landroid/graphics/BaseRecordingCanvas$35;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 16

    .line 1033
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$35;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v3, p0, Landroid/graphics/BaseRecordingCanvas$35;->val$text:[C

    iget v4, p0, Landroid/graphics/BaseRecordingCanvas$35;->val$index:I

    iget v5, p0, Landroid/graphics/BaseRecordingCanvas$35;->val$count:I

    iget v6, p0, Landroid/graphics/BaseRecordingCanvas$35;->val$contextIndex:I

    iget v7, p0, Landroid/graphics/BaseRecordingCanvas$35;->val$contextCount:I

    iget v8, p0, Landroid/graphics/BaseRecordingCanvas$35;->val$x:F

    iget v9, p0, Landroid/graphics/BaseRecordingCanvas$35;->val$y:F

    iget-boolean v10, p0, Landroid/graphics/BaseRecordingCanvas$35;->val$isRtl:Z

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$35;->val$paint:Landroid/graphics/Paint;

    .line 1034
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    .line 1033
    const-wide/16 v13, 0x0

    invoke-static/range {v1 .. v14}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawTextRun(J[CIIIIFFZJJ)V

    .line 1035
    return-void
.end method
