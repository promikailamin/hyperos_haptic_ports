.class public Landroid/filterpacks/imageproc/CropRectFilter;
.super Landroid/filterfw/core/Filter;
.source "CropRectFilter.java"


# instance fields
.field private blacklist mHeight:I

.field private blacklist mOutputHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "height"
    .end annotation
.end field

.field private blacklist mOutputWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "width"
    .end annotation
.end field

.field private blacklist mProgram:Landroid/filterfw/core/Program;

.field private blacklist mTarget:I

.field private blacklist mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private blacklist mWidth:I

.field private blacklist mXorigin:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "xorigin"
    .end annotation
.end field

.field private blacklist mYorigin:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "yorigin"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 45
    const/16 p1, 0x280

    iput p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTileSize:I

    .line 50
    const/4 p1, 0x0

    iput p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    .line 51
    iput p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    .line 53
    iput p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTarget:I

    .line 57
    return-void
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 3

    .line 82
    iget-object p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz p1, :cond_b

    .line 83
    iget p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    iget p2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/filterpacks/imageproc/CropRectFilter;->updateSourceRect(II)V

    .line 85
    :cond_b
    return-void
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 5

    .line 66
    packed-switch p2, :pswitch_data_32

    .line 74
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter Sharpen does not support frames of target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :pswitch_22
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object p1

    .line 69
    iget v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTileSize:I

    invoke-virtual {p1, v0}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 70
    iput-object p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 71
    nop

    .line 77
    iput p2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTarget:I

    .line 78
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 8

    .line 90
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/CropRectFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 94
    iget v3, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputWidth:I

    iget v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputHeight:I

    const/4 v5, 0x3

    invoke-static {v3, v4, v5, v5}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v3

    .line 97
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 100
    iget-object v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_27

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTarget:I

    if-eq v4, v5, :cond_2e

    .line 101
    :cond_27
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/CropRectFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 105
    :cond_2e
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result p1

    iget v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    if-ne p1, v4, :cond_3e

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result p1

    iget v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    if-eq p1, v4, :cond_49

    .line 106
    :cond_3e
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result p1

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/CropRectFilter;->updateSourceRect(II)V

    .line 110
    :cond_49
    iget-object p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {p1, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 113
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/CropRectFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 116
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 117
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 61
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/CropRectFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 62
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/CropRectFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method blacklist updateSourceRect(II)V
    .registers 7

    .line 120
    iput p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    .line 121
    iput p2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    .line 131
    iget-object p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast p1, Landroid/filterfw/core/ShaderProgram;

    iget p2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mXorigin:I

    int-to-float p2, p2

    iget v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mYorigin:I

    int-to-float v0, v0

    iget v1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputWidth:I

    int-to-float v1, v1

    iget v2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputHeight:I

    int-to-float v2, v2

    iget v3, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 135
    return-void
.end method
