.class Landroid/graphics/BaseRecordingCanvas$14;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawLines([FIILandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$count:I

.field final synthetic blacklist val$offset:I

.field final synthetic blacklist val$paint:Landroid/graphics/Paint;

.field final synthetic blacklist val$pts:[F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;[FIILandroid/graphics/Paint;)V
    .registers 6
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 435
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$14;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-object p2, p0, Landroid/graphics/BaseRecordingCanvas$14;->val$pts:[F

    iput p3, p0, Landroid/graphics/BaseRecordingCanvas$14;->val$offset:I

    iput p4, p0, Landroid/graphics/BaseRecordingCanvas$14;->val$count:I

    iput-object p5, p0, Landroid/graphics/BaseRecordingCanvas$14;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 9

    .line 438
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$14;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v3, p0, Landroid/graphics/BaseRecordingCanvas$14;->val$pts:[F

    iget v4, p0, Landroid/graphics/BaseRecordingCanvas$14;->val$offset:I

    iget v5, p0, Landroid/graphics/BaseRecordingCanvas$14;->val$count:I

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$14;->val$paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    invoke-static/range {v1 .. v7}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawLines(J[FIIJ)V

    .line 439
    return-void
.end method
