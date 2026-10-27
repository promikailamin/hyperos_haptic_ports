.class Landroid/graphics/BaseRecordingCanvas$23;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$bottom:F

.field final synthetic blacklist val$left:F

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;

.field final synthetic blacklist val$right:F

.field final synthetic blacklist val$top:F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;FFFFLandroid/graphics/Paint;)V
    .registers 7
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 690
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$23;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput p2, p0, Landroid/graphics/BaseRecordingCanvas$23;->val$left:F

    iput p3, p0, Landroid/graphics/BaseRecordingCanvas$23;->val$top:F

    iput p4, p0, Landroid/graphics/BaseRecordingCanvas$23;->val$right:F

    iput p5, p0, Landroid/graphics/BaseRecordingCanvas$23;->val$bottom:F

    iput-object p6, p0, Landroid/graphics/BaseRecordingCanvas$23;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 10

    .line 693
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$23;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v3, p0, Landroid/graphics/BaseRecordingCanvas$23;->val$left:F

    iget v4, p0, Landroid/graphics/BaseRecordingCanvas$23;->val$top:F

    iget v5, p0, Landroid/graphics/BaseRecordingCanvas$23;->val$right:F

    iget v6, p0, Landroid/graphics/BaseRecordingCanvas$23;->val$bottom:F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$23;->val$paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawRect(JFFFFJ)V

    .line 694
    return-void
.end method
