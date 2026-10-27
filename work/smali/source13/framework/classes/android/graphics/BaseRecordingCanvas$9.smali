.class Landroid/graphics/BaseRecordingCanvas$9;
.super Ljava/lang/Object;
.source "BaseRecordingCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/BaseRecordingCanvas;->drawColor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BaseRecordingCanvas;

.field final synthetic blacklist val$color:I


# direct methods
.method constructor blacklist <init>(Landroid/graphics/BaseRecordingCanvas;I)V
    .registers 3
    .param p1, "this$0"    # Landroid/graphics/BaseRecordingCanvas;

    .line 344
    iput-object p1, p0, Landroid/graphics/BaseRecordingCanvas$9;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iput p2, p0, Landroid/graphics/BaseRecordingCanvas$9;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 347
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas$9;->this$0:Landroid/graphics/BaseRecordingCanvas;

    iget-wide v0, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v2, p0, Landroid/graphics/BaseRecordingCanvas$9;->val$color:I

    sget-object v3, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v3}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Xfermode;->porterDuffMode:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BaseRecordingCanvas;->-$$Nest$smnDrawColor(JII)V

    .line 348
    return-void
.end method
