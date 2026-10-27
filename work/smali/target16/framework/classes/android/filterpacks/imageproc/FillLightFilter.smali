.class public Landroid/filterpacks/imageproc/FillLightFilter;
.super Landroid/filterfw/core/Filter;
.source "FillLightFilter.java"


# instance fields
.field private blacklist mBacklight:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "strength"
    .end annotation
.end field

.field private final blacklist mFillLightShader:Ljava/lang/String;

.field private blacklist mProgram:Landroid/filterfw/core/Program;

.field private blacklist mTarget:I

.field private blacklist mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 32
    const/16 p1, 0x280

    iput p1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTileSize:I

    .line 35
    const/4 p1, 0x0

    iput p1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mBacklight:F

    .line 40
    const/4 p1, 0x0

    iput p1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTarget:I

    .line 42
    const-string/jumbo p1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float mult;\nuniform float igamma;\nvarying vec2 v_texcoord;\nvoid main()\n{\n  const vec3 color_weights = vec3(0.25, 0.5, 0.25);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float lightmask = dot(color.rgb, color_weights);\n  float backmask = (1.0 - lightmask);\n  vec3 ones = vec3(1.0, 1.0, 1.0);\n  vec3 diff = pow(mult * color.rgb, igamma * ones) - color.rgb;\n  diff = min(diff, 1.0);\n  vec3 new_color = min(color.rgb + diff * backmask, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    iput-object p1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mFillLightShader:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private blacklist updateParameters()V
    .registers 5

    .line 127
    nop

    .line 128
    iget v0, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mBacklight:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 129
    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v0, v2

    const v3, 0x3e99999a    # 0.3f

    add-float/2addr v0, v3

    div-float v0, v1, v0

    .line 130
    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    .line 131
    div-float/2addr v1, v2

    .line 133
    iget-object v2, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v3, "mult"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v2, "igamma"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    return-void
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 3

    .line 121
    iget-object p1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz p1, :cond_7

    .line 122
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FillLightFilter;->updateParameters()V

    .line 124
    :cond_7
    return-void
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3

    .line 73
    return-object p2
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 5

    .line 77
    packed-switch p2, :pswitch_data_50

    .line 86
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter FillLight does not support frames of target "

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

    .line 79
    :pswitch_22
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float mult;\nuniform float igamma;\nvarying vec2 v_texcoord;\nvoid main()\n{\n  const vec3 color_weights = vec3(0.25, 0.5, 0.25);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float lightmask = dot(color.rgb, color_weights);\n  float backmask = (1.0 - lightmask);\n  vec3 ones = vec3(1.0, 1.0, 1.0);\n  vec3 diff = pow(mult * color.rgb, igamma * ones) - color.rgb;\n  diff = min(diff, 1.0);\n  vec3 new_color = min(color.rgb + diff * backmask, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tile size: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTileSize:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FillLight"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget p1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTileSize:I

    invoke-virtual {v0, p1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 82
    iput-object v0, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 83
    nop

    .line 89
    iput p2, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTarget:I

    .line 90
    return-void

    :pswitch_data_50
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 8

    .line 96
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/FillLightFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 100
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 103
    iget-object v4, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_1e

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTarget:I

    if-eq v4, v5, :cond_28

    .line 104
    :cond_1e
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/FillLightFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 105
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FillLightFilter;->updateParameters()V

    .line 109
    :cond_28
    iget-object p1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {p1, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 112
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/FillLightFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 115
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 116
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 67
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/FillLightFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 68
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/FillLightFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
