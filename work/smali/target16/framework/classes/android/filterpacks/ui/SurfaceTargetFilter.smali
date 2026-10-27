.class public Landroid/filterpacks/ui/SurfaceTargetFilter;
.super Landroid/filterfw/core/Filter;
.source "SurfaceTargetFilter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceRenderFilter"


# instance fields
.field private final blacklist RENDERMODE_FILL_CROP:I

.field private final blacklist RENDERMODE_FIT:I

.field private final blacklist RENDERMODE_STRETCH:I

.field private blacklist mAspectRatio:F

.field private blacklist mGlEnv:Landroid/filterfw/core/GLEnvironment;

.field private blacklist mLogVerbose:Z

.field private blacklist mProgram:Landroid/filterfw/core/ShaderProgram;

.field private blacklist mRenderMode:I

.field private blacklist mRenderModeString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "renderMode"
    .end annotation
.end field

.field private blacklist mScreen:Landroid/filterfw/core/GLFrame;

.field private blacklist mScreenHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "oheight"
    .end annotation
.end field

.field private blacklist mScreenWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "owidth"
    .end annotation
.end field

.field private blacklist mSurface:Landroid/view/Surface;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "surface"
    .end annotation
.end field

.field private blacklist mSurfaceId:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 83
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 41
    const/4 p1, 0x0

    iput p1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->RENDERMODE_STRETCH:I

    .line 42
    const/4 p1, 0x1

    iput p1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->RENDERMODE_FIT:I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->RENDERMODE_FILL_CROP:I

    .line 74
    iput p1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    .line 75
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    .line 77
    const/4 p1, -0x1

    iput p1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    .line 85
    const-string p1, "SurfaceRenderFilter"

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mLogVerbose:Z

    .line 86
    return-void
.end method

.method private blacklist registerSurface()V
    .registers 4

    .line 237
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->registerSurface(Landroid/view/Surface;)I

    move-result v0

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    .line 238
    iget v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    if-ltz v0, :cond_f

    .line 241
    return-void

    .line 239
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not register Surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist unregisterSurface()V
    .registers 3

    .line 244
    iget v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    if-lez v0, :cond_b

    .line 245
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    iget v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 247
    :cond_b
    return-void
.end method

.method private blacklist updateTargetRect()V
    .registers 7

    .line 202
    iget v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenWidth:I

    if-lez v0, :cond_57

    iget v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenHeight:I

    if-lez v0, :cond_57

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v0, :cond_57

    .line 203
    iget v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 204
    iget v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    div-float/2addr v0, v1

    .line 206
    iget v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    packed-switch v1, :pswitch_data_58

    goto :goto_57

    .line 222
    :pswitch_21
    cmpl-float v1, v0, v4

    if-lez v1, :cond_2e

    .line 224
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    mul-float v5, v0, v3

    sub-float/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_57

    .line 228
    :cond_2e
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    div-float v5, v3, v0

    sub-float/2addr v3, v5

    div-float v0, v4, v0

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_57

    .line 211
    :pswitch_39
    cmpl-float v1, v0, v4

    if-lez v1, :cond_48

    .line 213
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    div-float v5, v3, v0

    sub-float/2addr v3, v5

    div-float v0, v4, v0

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_57

    .line 217
    :cond_48
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    mul-float v5, v0, v3

    sub-float/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 220
    goto :goto_57

    .line 208
    :pswitch_51
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v0, v2, v2, v4, v4}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 209
    nop

    .line 234
    :cond_57
    :goto_57
    return-void

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_51
        :pswitch_39
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public blacklist close(Landroid/filterfw/core/FilterContext;)V
    .registers 2

    .line 191
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->unregisterSurface()V

    .line 192
    return-void
.end method

.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 5

    .line 185
    iget-object p1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    iget p2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenWidth:I

    iget v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenHeight:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/filterfw/core/GLFrame;->setViewport(IIII)V

    .line 186
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->updateTargetRect()V

    .line 187
    return-void
.end method

.method public blacklist open(Landroid/filterfw/core/FilterContext;)V
    .registers 2

    .line 139
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->registerSurface()V

    .line 140
    return-void
.end method

.method public blacklist prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 6

    .line 116
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    .line 120
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 121
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 122
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 123
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v0, v3, v3, v3}, Landroid/filterfw/core/ShaderProgram;->setClearColor(FFF)V

    .line 125
    iget v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenWidth:I

    iget v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenHeight:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    const/16 v1, 0x65

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object p1

    check-cast p1, Landroid/filterfw/core/GLFrame;

    iput-object p1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 134
    invoke-virtual {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->updateRenderMode()V

    .line 135
    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 7

    .line 144
    iget-boolean v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mLogVerbose:Z

    const-string v1, "SurfaceRenderFilter"

    if-eqz v0, :cond_b

    const-string v0, "Starting frame processing"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_b
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 148
    nop

    .line 150
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 151
    iget v3, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_56

    .line 152
    iget-boolean v3, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mLogVerbose:Z

    if-eqz v3, :cond_51

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New aspect ratio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", previously: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_51
    iput v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    .line 154
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->updateTargetRect()V

    .line 158
    :cond_56
    nop

    .line 159
    iget-boolean v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mLogVerbose:Z

    if-eqz v2, :cond_75

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got input format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_75
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    .line 161
    const/4 v2, 0x3

    if-eq v1, v2, :cond_8a

    .line 162
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 164
    const/4 p1, 0x1

    goto :goto_8b

    .line 166
    :cond_8a
    const/4 p1, 0x0

    .line 170
    :goto_8b
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    invoke-virtual {v1, v2}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    .line 173
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1, v0, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 176
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    .line 178
    if-eqz p1, :cond_a3

    .line 179
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 181
    :cond_a3
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 91
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_f

    .line 96
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "frame"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 97
    return-void

    .line 92
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NULL Surface passed to SurfaceTargetFilter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 2

    .line 196
    iget-object p1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz p1, :cond_9

    .line 197
    iget-object p1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {p1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 199
    :cond_9
    return-void
.end method

.method public blacklist updateRenderMode()V
    .registers 4

    .line 100
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    if-eqz v0, :cond_50

    .line 101
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    const-string/jumbo v1, "stretch"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    goto :goto_50

    .line 103
    :cond_13
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    const-string v1, "fit"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    goto :goto_50

    .line 105
    :cond_21
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    const-string v1, "fill_crop"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 106
    const/4 v0, 0x2

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    goto :goto_50

    .line 108
    :cond_2f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown render mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_50
    :goto_50
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->updateTargetRect()V

    .line 112
    return-void
.end method
