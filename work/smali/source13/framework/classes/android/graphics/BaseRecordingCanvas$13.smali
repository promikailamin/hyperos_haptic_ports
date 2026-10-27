.class Landroid/graphics/BaseRecordingCanvas$13;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawLine(FFFFLandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;

.field final synthetic blacklist val$startX:F

.field final synthetic blacklist val$startY:F

.field final synthetic blacklist val$stopX:F

.field final synthetic blacklist val$stopY:F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;FFFFLandroid/graphics/Paint;)V
    .registers 7
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 417
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$13;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput p2, p0, Landroid/graphics/BaseRecordingCanvas$13;->val$startX:F

    iput p3, p0, Landroid/graphics/BaseRecordingCanvas$13;->val$startY:F

    iput p4, p0, Landroid/graphics/BaseRecordingCanvas$13;->val$stopX:F

    iput p5, p0, Landroid/graphics/BaseRecordingCanvas$13;->val$stopY:F

    iput-object p6, p0, Landroid/graphics/BaseRecordingCanvas$13;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 10

    .line 420
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$13;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v3, p0, Landroid/graphics/BaseRecordingCanvas$13;->val$startX:F

    iget v4, p0, Landroid/graphics/BaseRecordingCanvas$13;->val$startY:F

    iget v5, p0, Landroid/graphics/BaseRecordingCanvas$13;->val$stopX:F

    iget v6, p0, Landroid/graphics/BaseRecordingCanvas$13;->val$stopY:F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$13;->val$paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawLine(JFFFFJ)V

    .line 421
    return-void
.end method
