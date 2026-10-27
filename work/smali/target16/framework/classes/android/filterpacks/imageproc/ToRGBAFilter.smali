.class public Landroid/filterpacks/imageproc/ToRGBAFilter;
.super Landroid/filterfw/core/Filter;
.source "ToRGBAFilter.java"


# instance fields
.field private blacklist mInputBPP:I

.field private blacklist mLastFormat:Landroid/filterfw/core/FrameFormat;

.field private blacklist mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V
    .registers 4

    .line 64
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result p1

    iput p1, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mInputBPP:I

    .line 65
    iget-object p1, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    if-eqz p1, :cond_15

    iget-object p1, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result p1

    iget v0, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mInputBPP:I

    if-ne p1, v0, :cond_15

    return-void

    .line 66
    :cond_15
    iput-object p2, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 67
    iget p1, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mInputBPP:I

    const-string p2, "filterpack_imageproc"

    packed-switch p1, :pswitch_data_56

    .line 75
    :pswitch_1e
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported BytesPerPixel: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mInputBPP:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :pswitch_3f
    new-instance p1, Landroid/filterfw/core/NativeProgram;

    const-string/jumbo v0, "rgb_to_rgba"

    invoke-direct {p1, p2, v0}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 73
    goto :goto_54

    .line 69
    :pswitch_4a
    new-instance p1, Landroid/filterfw/core/NativeProgram;

    const-string v0, "gray_to_rgba"

    invoke-direct {p1, p2, v0}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 70
    nop

    .line 77
    :goto_54
    return-void

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_1e
        :pswitch_3f
    .end packed-switch
.end method

.method public blacklist getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 4

    .line 57
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p1

    .line 58
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "colorspace"

    invoke-virtual {p1, v1, v0}, Landroid/filterfw/core/MutableFrameFormat;->setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 60
    return-object p1
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3

    .line 53
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/ToRGBAFilter;->getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object p1

    return-object p1
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 5

    .line 82
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/ToRGBAFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/ToRGBAFilter;->createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V

    .line 86
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/filterpacks/imageproc/ToRGBAFilter;->getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 89
    iget-object v2, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v2, v1, p1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 92
    invoke-virtual {p0, v0, p1}, Landroid/filterpacks/imageproc/ToRGBAFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 95
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 96
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 44
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v1}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 46
    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensionCount(I)V

    .line 47
    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/ToRGBAFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 48
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/ToRGBAFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
