.class Landroid/graphics/BaseRecordingCanvas$25;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "[F",
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;)V
    .registers 2
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 739
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$25;->this$0:Landroid/graphics/BaseRecordingCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 739
    check-cast p1, [F

    check-cast p2, Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/BaseRecordingCanvas$25;->accept([FLandroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist accept([FLandroid/graphics/Paint;)V
    .registers 14
    .param p1, "floats"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 742
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$25;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    const/4 v0, 0x0

    aget v3, p1, v0

    const/4 v0, 0x1

    aget v4, p1, v0

    const/4 v0, 0x2

    aget v5, p1, v0

    const/4 v0, 0x3

    aget v6, p1, v0

    const/4 v0, 0x4

    aget v7, p1, v0

    const/4 v0, 0x5

    aget v8, p1, v0

    .line 743
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 742
    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawRoundRect(JFFFFFFJ)V

    .line 744
    return-void
.end method
