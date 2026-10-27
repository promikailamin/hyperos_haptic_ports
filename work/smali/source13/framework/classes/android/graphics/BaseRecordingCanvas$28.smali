.class Landroid/graphics/BaseRecordingCanvas$28;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$count:I

.field final synthetic blacklist val$index:I

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;

.field final synthetic blacklist val$text:[C

.field final synthetic blacklist val$x:F

.field final synthetic blacklist val$y:F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;[CIIFFLandroid/graphics/Paint;)V
    .registers 8
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 851
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$28;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-object p2, p0, Landroid/graphics/BaseRecordingCanvas$28;->val$text:[C

    iput p3, p0, Landroid/graphics/BaseRecordingCanvas$28;->val$index:I

    iput p4, p0, Landroid/graphics/BaseRecordingCanvas$28;->val$count:I

    iput p5, p0, Landroid/graphics/BaseRecordingCanvas$28;->val$x:F

    iput p6, p0, Landroid/graphics/BaseRecordingCanvas$28;->val$y:F

    iput-object p7, p0, Landroid/graphics/BaseRecordingCanvas$28;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 12

    .line 854
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$28;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v3, p0, Landroid/graphics/BaseRecordingCanvas$28;->val$text:[C

    iget v4, p0, Landroid/graphics/BaseRecordingCanvas$28;->val$index:I

    iget v5, p0, Landroid/graphics/BaseRecordingCanvas$28;->val$count:I

    iget v6, p0, Landroid/graphics/BaseRecordingCanvas$28;->val$x:F

    iget v7, p0, Landroid/graphics/BaseRecordingCanvas$28;->val$y:F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$28;->val$paint:Landroid/graphics/Paint;

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$28;->val$paint:Landroid/graphics/Paint;

    .line 855
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 854
    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawText(J[CIIFFIJ)V

    .line 856
    return-void
.end method
