.class Landroid/graphics/BaseRecordingCanvas$39;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$colorOffset:I

.field final synthetic blacklist val$colors:[I

.field final synthetic blacklist val$indexCount:I

.field final synthetic blacklist val$indexOffset:I

.field final synthetic blacklist val$indices:[S

.field final synthetic blacklist val$mode:Landroid/graphics/Canvas$VertexMode;

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;

.field final synthetic blacklist val$texOffset:I

.field final synthetic blacklist val$texs:[F

.field final synthetic blacklist val$vertOffset:I

.field final synthetic blacklist val$vertexCount:I

.field final synthetic blacklist val$verts:[F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .registers 14
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 1171
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$39;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-object p2, p0, Landroid/graphics/BaseRecordingCanvas$39;->val$mode:Landroid/graphics/Canvas$VertexMode;

    iput p3, p0, Landroid/graphics/BaseRecordingCanvas$39;->val$vertexCount:I

    iput-object p4, p0, Landroid/graphics/BaseRecordingCanvas$39;->val$verts:[F

    iput p5, p0, Landroid/graphics/BaseRecordingCanvas$39;->val$vertOffset:I

    iput-object p6, p0, Landroid/graphics/BaseRecordingCanvas$39;->val$texs:[F

    iput p7, p0, Landroid/graphics/BaseRecordingCanvas$39;->val$texOffset:I

    iput-object p8, p0, Landroid/graphics/BaseRecordingCanvas$39;->val$colors:[I

    iput p9, p0, Landroid/graphics/BaseRecordingCanvas$39;->val$colorOffset:I

    iput-object p10, p0, Landroid/graphics/BaseRecordingCanvas$39;->val$indices:[S

    iput p11, p0, Landroid/graphics/BaseRecordingCanvas$39;->val$indexOffset:I

    iput p12, p0, Landroid/graphics/BaseRecordingCanvas$39;->val$indexCount:I

    iput-object p13, p0, Landroid/graphics/BaseRecordingCanvas$39;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 18

    .line 1174
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas$39;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v2, v1, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas$39;->val$mode:Landroid/graphics/Canvas$VertexMode;

    iget v4, v1, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    iget v5, v0, Landroid/graphics/BaseRecordingCanvas$39;->val$vertexCount:I

    iget-object v6, v0, Landroid/graphics/BaseRecordingCanvas$39;->val$verts:[F

    iget v7, v0, Landroid/graphics/BaseRecordingCanvas$39;->val$vertOffset:I

    iget-object v8, v0, Landroid/graphics/BaseRecordingCanvas$39;->val$texs:[F

    iget v9, v0, Landroid/graphics/BaseRecordingCanvas$39;->val$texOffset:I

    iget-object v10, v0, Landroid/graphics/BaseRecordingCanvas$39;->val$colors:[I

    iget v11, v0, Landroid/graphics/BaseRecordingCanvas$39;->val$colorOffset:I

    iget-object v12, v0, Landroid/graphics/BaseRecordingCanvas$39;->val$indices:[S

    iget v13, v0, Landroid/graphics/BaseRecordingCanvas$39;->val$indexOffset:I

    iget v14, v0, Landroid/graphics/BaseRecordingCanvas$39;->val$indexCount:I

    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas$39;->val$paint:Landroid/graphics/Paint;

    .line 1176
    invoke-virtual {v1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v15

    .line 1174
    invoke-static/range {v2 .. v16}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawVertices(JII[FI[FI[II[SIIJ)V

    .line 1177
    return-void
.end method
