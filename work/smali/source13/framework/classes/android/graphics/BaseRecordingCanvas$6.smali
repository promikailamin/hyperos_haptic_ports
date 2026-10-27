.class Landroid/graphics/BaseRecordingCanvas$6;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$colors:[I

.field final synthetic blacklist val$hasAlpha:Z

.field final synthetic blacklist val$height:I

.field final synthetic blacklist val$offset:I

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;

.field final synthetic blacklist val$stride:I

.field final synthetic blacklist val$width:I

.field final synthetic blacklist val$x:F

.field final synthetic blacklist val$y:F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;[IIIFFIIZLandroid/graphics/Paint;)V
    .registers 11
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 258
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$6;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-object p2, p0, Landroid/graphics/BaseRecordingCanvas$6;->val$colors:[I

    iput p3, p0, Landroid/graphics/BaseRecordingCanvas$6;->val$offset:I

    iput p4, p0, Landroid/graphics/BaseRecordingCanvas$6;->val$stride:I

    iput p5, p0, Landroid/graphics/BaseRecordingCanvas$6;->val$x:F

    iput p6, p0, Landroid/graphics/BaseRecordingCanvas$6;->val$y:F

    iput p7, p0, Landroid/graphics/BaseRecordingCanvas$6;->val$width:I

    iput p8, p0, Landroid/graphics/BaseRecordingCanvas$6;->val$height:I

    iput-boolean p9, p0, Landroid/graphics/BaseRecordingCanvas$6;->val$hasAlpha:Z

    iput-object p10, p0, Landroid/graphics/BaseRecordingCanvas$6;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 14

    .line 261
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$6;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v3, p0, Landroid/graphics/BaseRecordingCanvas$6;->val$colors:[I

    iget v4, p0, Landroid/graphics/BaseRecordingCanvas$6;->val$offset:I

    iget v5, p0, Landroid/graphics/BaseRecordingCanvas$6;->val$stride:I

    iget v6, p0, Landroid/graphics/BaseRecordingCanvas$6;->val$x:F

    iget v7, p0, Landroid/graphics/BaseRecordingCanvas$6;->val$y:F

    iget v8, p0, Landroid/graphics/BaseRecordingCanvas$6;->val$width:I

    iget v9, p0, Landroid/graphics/BaseRecordingCanvas$6;->val$height:I

    iget-boolean v10, p0, Landroid/graphics/BaseRecordingCanvas$6;->val$hasAlpha:Z

    .line 262
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$6;->val$paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    goto :goto_1f

    :cond_1d
    const-wide/16 v11, 0x0

    .line 261
    :goto_1f
    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawBitmap(J[IIIFFIIZJ)V

    .line 263
    return-void
.end method
