.class Landroid/graphics/BaseRecordingCanvas$8;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawCircle(FFFLandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$cx:F

.field final synthetic blacklist val$cy:F

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;

.field final synthetic blacklist val$radius:F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;FFFLandroid/graphics/Paint;)V
    .registers 6
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 327
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$8;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput p2, p0, Landroid/graphics/BaseRecordingCanvas$8;->val$cx:F

    iput p3, p0, Landroid/graphics/BaseRecordingCanvas$8;->val$cy:F

    iput p4, p0, Landroid/graphics/BaseRecordingCanvas$8;->val$radius:F

    iput-object p5, p0, Landroid/graphics/BaseRecordingCanvas$8;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 9

    .line 330
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$8;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v3, p0, Landroid/graphics/BaseRecordingCanvas$8;->val$cx:F

    iget v4, p0, Landroid/graphics/BaseRecordingCanvas$8;->val$cy:F

    iget v5, p0, Landroid/graphics/BaseRecordingCanvas$8;->val$radius:F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$8;->val$paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    invoke-static/range {v1 .. v7}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawCircle(JFFFJ)V

    .line 331
    return-void
.end method
