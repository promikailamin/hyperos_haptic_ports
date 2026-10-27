.class public Landroid/filterpacks/imageproc/ImageStitcher;
.super Landroid/filterfw/core/Filter;
.source "ImageStitcher.java"


# instance fields
.field private blacklist mImageHeight:I

.field private blacklist mImageWidth:I

.field private blacklist mInputHeight:I

.field private blacklist mInputWidth:I

.field private blacklist mOutputFrame:Landroid/filterfw/core/Frame;

.field private blacklist mPadSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "padSize"
    .end annotation
.end field

.field private blacklist mProgram:Landroid/filterfw/core/Program;

.field private blacklist mSliceHeight:I

.field private blacklist mSliceIndex:I

.field private blacklist mSliceWidth:I

.field private blacklist mXSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "xSlices"
    .end annotation
.end field

.field private blacklist mYSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "ySlices"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 p1, 0x0

    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 57
    return-void
.end method

.method private blacklist calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 4

    .line 72
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    .line 75
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result p1

    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    .line 77
    iget p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    .line 78
    iget p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    .line 80
    iget p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    mul-int/2addr p1, v1

    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    .line 81
    iget p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    mul-int/2addr p1, v1

    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    .line 83
    iget p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    invoke-virtual {v0, p1, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 84
    return-object v0
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3

    .line 68
    return-object p2
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 12

    .line 90
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/ImageStitcher;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 94
    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    if-nez v3, :cond_1d

    .line 95
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-direct {p0, v2}, Landroid/filterpacks/imageproc/ImageStitcher;->calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    iput-object v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    goto :goto_2d

    .line 97
    :cond_1d
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    if-ne v3, v4, :cond_b7

    .line 98
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    if-ne v2, v3, :cond_b7

    .line 105
    :goto_2d
    iget-object v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    if-nez v2, :cond_37

    .line 106
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object p1

    iput-object p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    .line 110
    :cond_37
    iget p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    int-to-float p1, p1

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 111
    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    int-to-float v2, v2

    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 113
    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    rem-int/2addr v3, v4

    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    mul-int/2addr v3, v4

    .line 114
    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v5, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    div-int/2addr v4, v5

    iget v5, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    mul-int/2addr v4, v5

    .line 116
    iget v5, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    iget v6, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    sub-int/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    .line 117
    iget v6, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    iget v7, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    sub-int/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    .line 120
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    check-cast v7, Landroid/filterfw/core/ShaderProgram;

    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    int-to-float v8, v8

    div-float v8, v5, v8

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    int-to-float v9, v9

    div-float v9, v6, v9

    invoke-virtual {v7, p1, v2, v8, v9}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 124
    iget-object p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    check-cast p1, Landroid/filterfw/core/ShaderProgram;

    int-to-float v2, v3

    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v4

    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    int-to-float v4, v4

    div-float/2addr v6, v4

    invoke-virtual {p1, v2, v3, v5, v6}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 130
    iget-object p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    iget-object v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p1, v1, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 131
    iget p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 134
    iget p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    mul-int/2addr v1, v2

    if-ne p1, v1, :cond_b6

    .line 135
    iget-object p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p0, v0, p1}, Landroid/filterpacks/imageproc/ImageStitcher;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 136
    iget-object p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 137
    const/4 p1, 0x0

    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 139
    :cond_b6
    return-void

    .line 100
    :cond_b7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Image size should not change."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 61
    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/ImageStitcher;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 63
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/ImageStitcher;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
