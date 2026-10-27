.class public final Landroid/graphics/HardwareBufferRenderer$RenderRequest;
.super Ljava/lang/Object;
.source "HardwareBufferRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareBufferRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RenderRequest"
.end annotation


# instance fields
.field private blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private blacklist mTransform:I

.field final synthetic blacklist this$0:Landroid/graphics/HardwareBufferRenderer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreset(Landroid/graphics/HardwareBufferRenderer$RenderRequest;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->reset()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/HardwareBufferRenderer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 255
    iput-object p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    invoke-static {}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$sfgetDEFAULT_COLORSPACE()Landroid/graphics/ColorSpace;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 253
    const/4 p1, 0x0

    iput p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mTransform:I

    .line 255
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/HardwareBufferRenderer;Landroid/graphics/HardwareBufferRenderer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/HardwareBufferRenderer$RenderRequest;-><init>(Landroid/graphics/HardwareBufferRenderer;)V

    return-void
.end method

.method static synthetic blacklist lambda$draw$0(Ljava/util/function/Consumer;Landroid/graphics/HardwareBufferRenderer$RenderResult;)V
    .registers 2

    .line 277
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$draw$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/graphics/HardwareBufferRenderer$RenderResult;)V
    .registers 4

    .line 276
    new-instance v0, Landroid/graphics/HardwareBufferRenderer$RenderRequest$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/graphics/HardwareBufferRenderer$RenderRequest$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Landroid/graphics/HardwareBufferRenderer$RenderResult;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist reset()V
    .registers 2

    .line 304
    invoke-static {}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$sfgetDEFAULT_COLORSPACE()Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mTransform:I

    .line 306
    return-void
.end method


# virtual methods
.method public whitelist draw(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/HardwareBufferRenderer$RenderResult;",
            ">;)V"
        }
    .end annotation

    .line 276
    new-instance v7, Landroid/graphics/HardwareBufferRenderer$RenderRequest$$ExternalSyntheticLambda0;

    invoke-direct {v7, p1, p2}, Landroid/graphics/HardwareBufferRenderer$RenderRequest$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 278
    iget-object p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-virtual {p1}, Landroid/graphics/HardwareBufferRenderer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_58

    .line 281
    iget p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mTransform:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2f

    iget p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mTransform:I

    const/4 p2, 0x7

    if-ne p1, p2, :cond_18

    goto :goto_2f

    .line 286
    :cond_18
    iget-object p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-static {p1}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$fgetmHardwareBuffer(Landroid/graphics/HardwareBufferRenderer;)Landroid/hardware/HardwareBuffer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result p1

    .line 287
    iget-object p2, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-static {p2}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$fgetmHardwareBuffer(Landroid/graphics/HardwareBufferRenderer;)Landroid/hardware/HardwareBuffer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p2

    move v3, p1

    move v4, p2

    goto :goto_45

    .line 283
    :cond_2f
    :goto_2f
    iget-object p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-static {p1}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$fgetmHardwareBuffer(Landroid/graphics/HardwareBufferRenderer;)Landroid/hardware/HardwareBuffer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p1

    .line 284
    iget-object p2, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-static {p2}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$fgetmHardwareBuffer(Landroid/graphics/HardwareBufferRenderer;)Landroid/hardware/HardwareBuffer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result p2

    move v3, p1

    move v4, p2

    .line 290
    :goto_45
    iget-object p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-static {p1}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$fgetmProxy(Landroid/graphics/HardwareBufferRenderer;)J

    move-result-wide v0

    iget v2, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mTransform:I

    iget-object p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 295
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v5

    .line 290
    invoke-static/range {v0 .. v7}, Landroid/graphics/HardwareBufferRenderer;->nRender(JIIIJLjava/util/function/Consumer;)I

    .line 297
    nop

    .line 301
    return-void

    .line 298
    :cond_58
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempt to draw with a HardwareBufferRenderer instance that has already been closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setBufferTransform(I)Landroid/graphics/HardwareBufferRenderer$RenderRequest;
    .registers 3

    .line 338
    if-eqz p1, :cond_e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    const/4 v0, 0x7

    if-ne p1, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    .line 342
    :goto_f
    if-eqz v0, :cond_14

    .line 343
    iput p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mTransform:I

    .line 348
    return-object p0

    .line 345
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid transform provided, must be one ofthe SurfaceControl.BufferTransform values"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setColorSpace(Landroid/graphics/ColorSpace;)Landroid/graphics/HardwareBufferRenderer$RenderRequest;
    .registers 2

    .line 320
    if-nez p1, :cond_9

    .line 321
    invoke-static {}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$sfgetDEFAULT_COLORSPACE()Landroid/graphics/ColorSpace;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mColorSpace:Landroid/graphics/ColorSpace;

    goto :goto_b

    .line 323
    :cond_9
    iput-object p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 325
    :goto_b
    return-object p0
.end method
