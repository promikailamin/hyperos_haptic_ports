.class public Landroid/filterpacks/imageproc/DrawRectFilter;
.super Landroid/filterfw/core/Filter;
.source "DrawRectFilter.java"


# instance fields
.field private blacklist mColorBlue:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "colorBlue"
    .end annotation
.end field

.field private blacklist mColorGreen:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "colorGreen"
    .end annotation
.end field

.field private blacklist mColorRed:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "colorRed"
    .end annotation
.end field

.field private final blacklist mFixedColorFragmentShader:Ljava/lang/String;

.field private blacklist mProgram:Landroid/filterfw/core/ShaderProgram;

.field private final blacklist mVertexShader:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 38
    const p1, 0x3f4ccccd    # 0.8f

    iput p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorRed:F

    .line 41
    iput p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorGreen:F

    .line 44
    const/4 p1, 0x0

    iput p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorBlue:F

    .line 47
    const-string p1, "attribute vec4 aPosition;\nvoid main() {\n  gl_Position = aPosition;\n}\n"

    iput-object p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mVertexShader:Ljava/lang/String;

    .line 53
    const-string/jumbo p1, "precision mediump float;\nuniform vec4 color;\nvoid main() {\n  gl_FragColor = color;\n}\n"

    iput-object p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mFixedColorFragmentShader:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private blacklist renderBox(Landroid/filterfw/geometry/Quad;)V
    .registers 19

    .line 113
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorRed:F

    iget v3, v0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorGreen:F

    iget v4, v0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorBlue:F

    const/4 v5, 0x4

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v2, 0x1

    aput v3, v6, v2

    const/4 v3, 0x2

    aput v4, v6, v3

    const/4 v4, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v4

    .line 114
    iget-object v9, v1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v9, v9, Landroid/filterfw/geometry/Point;->x:F

    iget-object v10, v1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v10, v10, Landroid/filterfw/geometry/Point;->y:F

    iget-object v11, v1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v11, v11, Landroid/filterfw/geometry/Point;->x:F

    iget-object v12, v1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v12, v12, Landroid/filterfw/geometry/Point;->y:F

    iget-object v13, v1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v13, v13, Landroid/filterfw/geometry/Point;->x:F

    iget-object v14, v1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v14, v14, Landroid/filterfw/geometry/Point;->y:F

    iget-object v15, v1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v15, v15, Landroid/filterfw/geometry/Point;->x:F

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v1, v1, Landroid/filterfw/geometry/Point;->y:F

    move/from16 v16, v2

    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v9, v2, v7

    aput v10, v2, v16

    aput v11, v2, v3

    aput v12, v2, v4

    aput v13, v2, v5

    const/4 v4, 0x5

    aput v14, v2, v4

    const/4 v4, 0x6

    aput v15, v2, v4

    const/4 v4, 0x7

    aput v1, v2, v4

    .line 120
    iget-object v1, v0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v4, "color"

    invoke-virtual {v1, v4, v6}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    iget-object v1, v0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v4, "aPosition"

    invoke-virtual {v1, v4, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setAttributeValues(Ljava/lang/String;[FI)V

    .line 122
    iget-object v1, v0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v5}, Landroid/filterfw/core/ShaderProgram;->setVertexCount(I)V

    .line 125
    iget-object v0, v0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v0}, Landroid/filterfw/core/ShaderProgram;->beginDrawing()V

    .line 126
    invoke-static {v8}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 127
    invoke-static {v3, v7, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 128
    return-void
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3

    .line 77
    return-object p2
.end method

.method public blacklist prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 5

    .line 82
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "attribute vec4 aPosition;\nvoid main() {\n  gl_Position = aPosition;\n}\n"

    const-string/jumbo v2, "precision mediump float;\nuniform vec4 color;\nvoid main() {\n  gl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 83
    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 6

    .line 88
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/DrawRectFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 89
    const-string v2, "box"

    invoke-virtual {p0, v2}, Landroid/filterpacks/imageproc/DrawRectFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/geometry/Quad;

    .line 93
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/filterfw/geometry/Quad;->scaled(F)Landroid/filterfw/geometry/Quad;

    move-result-object v2

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, v3, v3}, Landroid/filterfw/geometry/Quad;->translated(FF)Landroid/filterfw/geometry/Quad;

    move-result-object v2

    .line 96
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/filterfw/core/FrameManager;->duplicateFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    move-result-object p1

    check-cast p1, Landroid/filterfw/core/GLFrame;

    .line 99
    invoke-virtual {p1}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 100
    invoke-direct {p0, v2}, Landroid/filterpacks/imageproc/DrawRectFilter;->renderBox(Landroid/filterfw/geometry/Quad;)V

    .line 103
    invoke-virtual {p0, v0, p1}, Landroid/filterpacks/imageproc/DrawRectFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 106
    invoke-virtual {p1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 107
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 4

    .line 69
    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/DrawRectFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 71
    const-class v0, Landroid/filterfw/geometry/Quad;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v2, "box"

    invoke-virtual {p0, v2, v0}, Landroid/filterpacks/imageproc/DrawRectFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 72
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/DrawRectFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method
