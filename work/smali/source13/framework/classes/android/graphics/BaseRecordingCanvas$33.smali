.class Landroid/graphics/BaseRecordingCanvas$33;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$count:I

.field final synthetic blacklist val$hOffset:F

.field final synthetic blacklist val$index:I

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;

.field final synthetic blacklist val$path:Landroid/graphics/Path;

.field final synthetic blacklist val$text:[C

.field final synthetic blacklist val$vOffset:F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;[CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 9
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 970
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$33;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-object p2, p0, Landroid/graphics/BaseRecordingCanvas$33;->val$text:[C

    iput p3, p0, Landroid/graphics/BaseRecordingCanvas$33;->val$index:I

    iput p4, p0, Landroid/graphics/BaseRecordingCanvas$33;->val$count:I

    iput-object p5, p0, Landroid/graphics/BaseRecordingCanvas$33;->val$path:Landroid/graphics/Path;

    iput p6, p0, Landroid/graphics/BaseRecordingCanvas$33;->val$hOffset:F

    iput p7, p0, Landroid/graphics/BaseRecordingCanvas$33;->val$vOffset:F

    iput-object p8, p0, Landroid/graphics/BaseRecordingCanvas$33;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 14

    .line 973
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$33;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v3, p0, Landroid/graphics/BaseRecordingCanvas$33;->val$text:[C

    iget v4, p0, Landroid/graphics/BaseRecordingCanvas$33;->val$index:I

    iget v5, p0, Landroid/graphics/BaseRecordingCanvas$33;->val$count:I

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$33;->val$path:Landroid/graphics/Path;

    .line 974
    invoke-virtual {v0}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v6

    iget v8, p0, Landroid/graphics/BaseRecordingCanvas$33;->val$hOffset:F

    iget v9, p0, Landroid/graphics/BaseRecordingCanvas$33;->val$vOffset:F

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$33;->val$paint:Landroid/graphics/Paint;

    iget v10, v0, Landroid/graphics/Paint;->mBidiFlags:I

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$33;->val$paint:Landroid/graphics/Paint;

    .line 975
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    .line 973
    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawTextOnPath(J[CIIJFFIJ)V

    .line 976
    return-void
.end method
