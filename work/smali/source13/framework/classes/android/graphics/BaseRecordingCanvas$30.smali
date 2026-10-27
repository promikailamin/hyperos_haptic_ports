.class Landroid/graphics/BaseRecordingCanvas$30;
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
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;IILjava/lang/CharSequence;FFLandroid/graphics/Paint;)V
    .registers 8
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 894
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$30;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput p2, p0, Landroid/graphics/BaseRecordingCanvas$30;->val$end:I

    iput p3, p0, Landroid/graphics/BaseRecordingCanvas$30;->val$start:I

    iput-object p4, p0, Landroid/graphics/BaseRecordingCanvas$30;->val$text:Ljava/lang/CharSequence;

    iput p5, p0, Landroid/graphics/BaseRecordingCanvas$30;->val$x:F

    iput p6, p0, Landroid/graphics/BaseRecordingCanvas$30;->val$y:F

    iput-object p7, p0, Landroid/graphics/BaseRecordingCanvas$30;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 12

    .line 897
    iget v0, p0, Landroid/graphics/BaseRecordingCanvas$30;->val$end:I

    iget v1, p0, Landroid/graphics/BaseRecordingCanvas$30;->val$start:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 898
    .local v0, "buf":[C
    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas$30;->val$text:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/graphics/BaseRecordingCanvas$30;->val$start:I

    iget v3, p0, Landroid/graphics/BaseRecordingCanvas$30;->val$end:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 899
    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas$30;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v1, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v3, p0, Landroid/graphics/BaseRecordingCanvas$30;->val$end:I

    iget v4, p0, Landroid/graphics/BaseRecordingCanvas$30;->val$start:I

    sub-int v5, v3, v4

    iget v6, p0, Landroid/graphics/BaseRecordingCanvas$30;->val$x:F

    iget v7, p0, Landroid/graphics/BaseRecordingCanvas$30;->val$y:F

    iget-object v3, p0, Landroid/graphics/BaseRecordingCanvas$30;->val$paint:Landroid/graphics/Paint;

    iget v8, v3, Landroid/graphics/Paint;->mBidiFlags:I

    iget-object v3, p0, Landroid/graphics/BaseRecordingCanvas$30;->val$paint:Landroid/graphics/Paint;

    .line 900
    invoke-virtual {v3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 899
    const/4 v4, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawText(J[CIIFFIJ)V

    .line 901
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 902
    return-void
.end method
