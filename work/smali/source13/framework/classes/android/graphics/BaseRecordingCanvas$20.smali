.class Landroid/graphics/BaseRecordingCanvas$20;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$picture:Landroid/graphics/Picture;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;Landroid/graphics/Picture;)V
    .registers 3
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 583
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$20;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput-object p2, p0, Landroid/graphics/BaseRecordingCanvas$20;->val$picture:Landroid/graphics/Picture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 586
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$20;->this$0:Landroid/graphics/BaseRecordingCanvas;

    invoke-virtual {v0}, Landroid/graphics/BaseRecordingCanvas;->save()I

    move-result v0

    .line 587
    .local v0, "restoreCount":I
    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas$20;->val$picture:Landroid/graphics/Picture;

    iget-object v2, p0, Landroid/graphics/BaseRecordingCanvas$20;->this$0:Landroid/graphics/BaseRecordingCanvas;

    invoke-virtual {v1, v2}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 588
    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas$20;->this$0:Landroid/graphics/BaseRecordingCanvas;

    invoke-virtual {v1, v0}, Landroid/graphics/BaseRecordingCanvas;->restoreToCount(I)V

    .line 589
    return-void
.end method
