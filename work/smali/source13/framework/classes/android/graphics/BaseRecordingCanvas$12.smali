.class Landroid/graphics/BaseRecordingCanvas$12;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawColor(JLandroid/graphics/BlendMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$color:J

.field final synthetic blacklist val$cs:Landroid/graphics/ColorSpace;

.field final synthetic blacklist val$mode:Landroid/graphics/BlendMode;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;Landroid/graphics/ColorSpace;JLandroid/graphics/BlendMode;)V
    .registers 6
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 397
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$12;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-object p2, p0, Landroid/graphics/BaseRecordingCanvas$12;->val$cs:Landroid/graphics/ColorSpace;

    iput-wide p3, p0, Landroid/graphics/BaseRecordingCanvas$12;->val$color:J

    iput-object p5, p0, Landroid/graphics/BaseRecordingCanvas$12;->val$mode:Landroid/graphics/BlendMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 9

    .line 400
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$12;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$12;->val$cs:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/graphics/BaseRecordingCanvas$12;->val$color:J

    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$12;->val$mode:Landroid/graphics/BlendMode;

    .line 401
    invoke-virtual {v0}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    iget v7, v0, Landroid/graphics/Xfermode;->porterDuffMode:I

    .line 400
    invoke-static/range {v1 .. v7}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawColor(JJJI)V

    .line 402
    return-void
.end method
