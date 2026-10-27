.class public Landroid/filterpacks/imageproc/BitmapOverlayFilter;
.super Landroid/filterfw/core/Filter;
.source "BitmapOverlayFilter.java"


# instance fields
.field private blacklist mBitmap:Landroid/graphics/Bitmap;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "bitmap"
    .end annotation
.end field

.field private blacklist mFrame:Landroid/filterfw/core/Frame;

.field private final blacklist mOverlayShader:Ljava/lang/String;

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

    .line 57
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 37
    const/16 p1, 0x280

    iput p1, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mTileSize:I

    .line 43
    const/4 p1, 0x0

    iput p1, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mTarget:I

    .line 45
    const-string/jumbo p1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 original = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  gl_FragColor = vec4(original.rgb * (1.0 - mask.a) + mask.rgb, 1.0);\n}\n"

    iput-object p1, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mOverlayShader:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private blacklist createBitmapFrame(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Frame;
    .registers 5

    .line 127
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mBitmap:Landroid/graphics/Bitmap;

    .line 128
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 127
    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 133
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mBitmap:Landroid/graphics/Bitmap;

    .line 138
    return-object p1
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3

    .line 68
    return-object p2
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 5

    .line 72
    packed-switch p2, :pswitch_data_36

    .line 80
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter FisheyeFilter does not support frames of target "

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

    .line 74
    :pswitch_22
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 original = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  gl_FragColor = vec4(original.rgb * (1.0 - mask.a) + mask.rgb, 1.0);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 75
    iget p1, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mTileSize:I

    invoke-virtual {v0, p1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 76
    iput-object v0, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 77
    nop

    .line 83
    iput p2, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mTarget:I

    .line 84
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 8

    .line 97
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 101
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 104
    iget-object v4, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_1e

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mTarget:I

    if-eq v4, v5, :cond_25

    .line 105
    :cond_1e
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 108
    :cond_25
    iget-object v2, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3f

    .line 109
    invoke-direct {p0, p1}, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->createBitmapFrame(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 111
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/filterfw/core/Frame;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v1, 0x1

    aput-object p1, v2, v1

    .line 112
    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 114
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 115
    goto :goto_42

    .line 116
    :cond_3f
    invoke-virtual {v3, v1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 120
    :goto_42
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 123
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 124
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 62
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 63
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public blacklist tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 2

    .line 88
    iget-object p1, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz p1, :cond_c

    .line 89
    iget-object p1, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 90
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mFrame:Landroid/filterfw/core/Frame;

    .line 92
    :cond_c
    return-void
.end method
