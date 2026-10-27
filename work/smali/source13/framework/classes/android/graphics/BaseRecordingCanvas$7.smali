.class Landroid/graphics/BaseRecordingCanvas$7;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$colorOffset:I

.field final synthetic blacklist val$colors:[I

.field final synthetic blacklist val$meshHeight:I

.field final synthetic blacklist val$meshWidth:I

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;

.field final synthetic blacklist val$vertOffset:I

.field final synthetic blacklist val$verts:[F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;II[FI[IILandroid/graphics/Paint;)V
    .registers 9
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 306
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$7;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput p2, p0, Landroid/graphics/BaseRecordingCanvas$7;->val$meshWidth:I

    iput p3, p0, Landroid/graphics/BaseRecordingCanvas$7;->val$meshHeight:I

    iput-object p4, p0, Landroid/graphics/BaseRecordingCanvas$7;->val$verts:[F

    iput p5, p0, Landroid/graphics/BaseRecordingCanvas$7;->val$vertOffset:I

    iput-object p6, p0, Landroid/graphics/BaseRecordingCanvas$7;->val$colors:[I

    iput p7, p0, Landroid/graphics/BaseRecordingCanvas$7;->val$colorOffset:I

    iput-object p8, p0, Landroid/graphics/BaseRecordingCanvas$7;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/graphics/Bitmap;)V
    .registers 15
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 309
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$7;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v3

    iget v5, p0, Landroid/graphics/BaseRecordingCanvas$7;->val$meshWidth:I

    iget v6, p0, Landroid/graphics/BaseRecordingCanvas$7;->val$meshHeight:I

    iget-object v7, p0, Landroid/graphics/BaseRecordingCanvas$7;->val$verts:[F

    iget v8, p0, Landroid/graphics/BaseRecordingCanvas$7;->val$vertOffset:I

    iget-object v9, p0, Landroid/graphics/BaseRecordingCanvas$7;->val$colors:[I

    iget v10, p0, Landroid/graphics/BaseRecordingCanvas$7;->val$colorOffset:I

    .line 311
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$7;->val$paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    goto :goto_1f

    :cond_1d
    const-wide/16 v11, 0x0

    .line 309
    :goto_1f
    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawBitmapMesh(JJII[FI[IIJ)V

    .line 312
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 306
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/graphics/BaseRecordingCanvas$7;->accept(Landroid/graphics/Bitmap;)V

    return-void
.end method
