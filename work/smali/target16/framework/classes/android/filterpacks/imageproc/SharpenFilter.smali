.class public Landroid/filterpacks/imageproc/SharpenFilter;
.super Landroid/filterfw/core/Filter;
.source "SharpenFilter.java"


# instance fields
.field private blacklist mHeight:I

.field private blacklist mProgram:Landroid/filterfw/core/Program;

.field private blacklist mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "scale"
    .end annotation
.end field

.field private final blacklist mSharpenShader:Ljava/lang/String;

.field private blacklist mTarget:I

.field private blacklist mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 30
    const/4 p1, 0x0

    iput p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mScale:F

    .line 33
    const/16 p1, 0x280

    iput p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTileSize:I

    .line 38
    const/4 p1, 0x0

    iput p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mWidth:I

    .line 39
    iput p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mHeight:I

    .line 40
    iput p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTarget:I

    .line 42
    const-string/jumbo p1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float stepsizeX;\nuniform float stepsizeY;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  coord.x = v_texcoord.x - 0.5 * stepsizeX;\n  coord.y = v_texcoord.y - stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x - stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  gl_FragColor = vec4(color.rgb - 2.0 * scale * nbr_color, color.a);\n}\n"

    iput-object p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mSharpenShader:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private blacklist updateFrameSize(II)V
    .registers 5

    .line 128
    iput p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mWidth:I

    .line 129
    iput p2, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mHeight:I

    .line 131
    iget-object p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz p1, :cond_2e

    .line 132
    iget-object p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    iget p2, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mWidth:I

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p2, v0, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string/jumbo v1, "stepsizeX"

    invoke-virtual {p1, v1, p2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    iget-object p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    iget p2, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mHeight:I

    int-to-float p2, p2

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string/jumbo v0, "stepsizeY"

    invoke-virtual {p1, v0, p2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SharpenFilter;->updateParameters()V

    .line 136
    :cond_2e
    return-void
.end method

.method private blacklist updateParameters()V
    .registers 4

    .line 139
    iget-object v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    iget v1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "scale"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    return-void
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 3

    .line 144
    iget-object p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz p1, :cond_7

    .line 145
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SharpenFilter;->updateParameters()V

    .line 147
    :cond_7
    return-void
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3

    .line 80
    return-object p2
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 5

    .line 84
    packed-switch p2, :pswitch_data_36

    .line 92
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

    .line 86
    :pswitch_22
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float stepsizeX;\nuniform float stepsizeY;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  coord.x = v_texcoord.x - 0.5 * stepsizeX;\n  coord.y = v_texcoord.y - stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x - stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  gl_FragColor = vec4(color.rgb - 2.0 * scale * nbr_color, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 87
    iget p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTileSize:I

    invoke-virtual {v0, p1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 88
    iput-object v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 89
    nop

    .line 95
    iput p2, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTarget:I

    .line 96
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 8

    .line 101
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/SharpenFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 105
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 108
    iget-object v4, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_1e

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTarget:I

    if-eq v4, v5, :cond_25

    .line 109
    :cond_1e
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/SharpenFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 113
    :cond_25
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result p1

    iget v4, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mWidth:I

    if-ne p1, v4, :cond_35

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result p1

    iget v4, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mHeight:I

    if-eq p1, v4, :cond_40

    .line 114
    :cond_35
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result p1

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    invoke-direct {p0, p1, v2}, Landroid/filterpacks/imageproc/SharpenFilter;->updateFrameSize(II)V

    .line 118
    :cond_40
    iget-object p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {p1, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 121
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/SharpenFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 124
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 125
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 74
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/SharpenFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 75
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/SharpenFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method
