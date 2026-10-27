.class public Landroid/filterpacks/imageproc/FixedRotationFilter;
.super Landroid/filterfw/core/Filter;
.source "FixedRotationFilter.java"


# instance fields
.field private blacklist mProgram:Landroid/filterfw/core/ShaderProgram;

.field private blacklist mRotation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "rotation"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 37
    const/4 p1, 0x0

    iput p1, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    .line 40
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3

    .line 55
    return-object p2
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 13

    .line 60
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/FixedRotationFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 61
    iget v2, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    if-nez v2, :cond_e

    .line 62
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FixedRotationFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 63
    return-void

    .line 65
    :cond_e
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 68
    iget-object v3, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-nez v3, :cond_1c

    .line 69
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v3

    iput-object v3, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 71
    :cond_1c
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v3

    .line 72
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    .line 73
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    .line 74
    new-instance v5, Landroid/filterfw/geometry/Point;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 75
    new-instance v7, Landroid/filterfw/geometry/Point;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 76
    new-instance v9, Landroid/filterfw/geometry/Point;

    invoke-direct {v9, v6, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 77
    new-instance v6, Landroid/filterfw/geometry/Point;

    invoke-direct {v6, v8, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 79
    iget v8, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    int-to-float v8, v8

    const/high16 v10, 0x42b40000    # 90.0f

    div-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    rem-int/lit8 v8, v8, 0x4

    packed-switch v8, :pswitch_data_86

    .line 93
    new-instance v8, Landroid/filterfw/geometry/Quad;

    invoke-direct {v8, v5, v7, v9, v6}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    goto :goto_6c

    .line 88
    :pswitch_54
    new-instance v8, Landroid/filterfw/geometry/Quad;

    invoke-direct {v8, v7, v6, v5, v9}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 89
    invoke-virtual {v3, v2, v4}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 90
    goto :goto_6c

    .line 85
    :pswitch_5d
    new-instance v8, Landroid/filterfw/geometry/Quad;

    invoke-direct {v8, v6, v9, v7, v5}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 86
    goto :goto_6c

    .line 81
    :pswitch_63
    new-instance v8, Landroid/filterfw/geometry/Quad;

    invoke-direct {v8, v9, v5, v6, v7}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 82
    invoke-virtual {v3, v2, v4}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 83
    nop

    .line 97
    :goto_6c
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 100
    iget-object v2, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v8}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 103
    iget-object v2, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v1, p1}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 106
    invoke-virtual {p0, v0, p1}, Landroid/filterpacks/imageproc/FixedRotationFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 109
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 110
    return-void

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_63
        :pswitch_5d
        :pswitch_54
    .end packed-switch
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 48
    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/FixedRotationFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 50
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/FixedRotationFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
