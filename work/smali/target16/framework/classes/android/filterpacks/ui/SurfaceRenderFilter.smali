.class public Landroid/filterpacks/ui/SurfaceRenderFilter;
.super Landroid/filterfw/core/Filter;
.source "SurfaceRenderFilter.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceRenderFilter"


# instance fields
.field private final blacklist RENDERMODE_FILL_CROP:I

.field private final blacklist RENDERMODE_FIT:I

.field private final blacklist RENDERMODE_STRETCH:I

.field private blacklist mAspectRatio:F

.field private blacklist mIsBound:Z

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

.field private blacklist mScreenWidth:I

.field private blacklist mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "surfaceView"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4

    .line 77
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 42
    const/4 p1, 0x0

    iput p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->RENDERMODE_STRETCH:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->RENDERMODE_FIT:I

    .line 44
    const/4 v1, 0x2

    iput v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->RENDERMODE_FILL_CROP:I

    .line 63
    iput-boolean p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z

    .line 67
    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    .line 68
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    .line 79
    const-string p1, "SurfaceRenderFilter"

    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    .line 80
    return-void
.end method

.method private blacklist updateTargetRect()V
    .registers 7

    .line 234
    iget v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenWidth:I

    if-lez v0, :cond_57

    iget v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenHeight:I

    if-lez v0, :cond_57

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v0, :cond_57

    .line 235
    iget v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 236
    iget v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    div-float/2addr v0, v1

    .line 238
    iget v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    packed-switch v1, :pswitch_data_58

    goto :goto_57

    .line 254
    :pswitch_21
    cmpl-float v1, v0, v4

    if-lez v1, :cond_2e

    .line 256
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    mul-float v5, v0, v3

    sub-float/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_57

    .line 260
    :cond_2e
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    div-float v5, v3, v0

    sub-float/2addr v3, v5

    div-float v0, v4, v0

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_57

    .line 243
    :pswitch_39
    cmpl-float v1, v0, v4

    if-lez v1, :cond_48

    .line 245
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    div-float v5, v3, v0

    sub-float/2addr v3, v5

    div-float v0, v4, v0

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_57

    .line 249
    :cond_48
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    mul-float v5, v0, v3

    sub-float/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 252
    goto :goto_57

    .line 240
    :pswitch_51
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v0, v2, v2, v4, v4}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 241
    nop

    .line 266
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

    .line 198
    iget-object p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {p1}, Landroid/filterfw/core/FilterSurfaceView;->unbind()V

    .line 199
    return-void
.end method

.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 3

    .line 193
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V

    .line 194
    return-void
.end method

.method public blacklist open(Landroid/filterfw/core/FilterContext;)V
    .registers 3

    .line 133
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterSurfaceView;->unbind()V

    .line 134
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/filterfw/core/FilterSurfaceView;->bindToListener(Landroid/view/SurfaceHolder$Callback;Landroid/filterfw/core/GLEnvironment;)V

    .line 135
    return-void
.end method

.method public blacklist prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 6

    .line 112
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 113
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 114
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 115
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v0, v3, v3, v3}, Landroid/filterfw/core/ShaderProgram;->setClearColor(FFF)V

    .line 117
    invoke-virtual {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateRenderMode()V

    .line 120
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterSurfaceView;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    .line 121
    invoke-virtual {v1}, Landroid/filterfw/core/FilterSurfaceView;->getHeight()I

    move-result v1

    .line 120
    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 124
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    const/16 v1, 0x65

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object p1

    check-cast p1, Landroid/filterfw/core/GLFrame;

    iput-object p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 127
    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 8

    .line 140
    iget-boolean v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z

    const-string v1, "SurfaceRenderFilter"

    if-nez v0, :cond_1d

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": Ignoring frame as there is no surface to render to!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 146
    :cond_1d
    iget-boolean v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_26

    const-string v0, "Starting frame processing"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_26
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterSurfaceView;->getGLEnv()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 149
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v2

    if-ne v0, v2, :cond_cb

    .line 155
    const-string v2, "frame"

    invoke-virtual {p0, v2}, Landroid/filterpacks/ui/SurfaceRenderFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 156
    nop

    .line 158
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 159
    iget v4, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_7d

    .line 160
    iget-boolean v4, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    if-eqz v4, :cond_78

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New aspect ratio: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", previously: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_78
    iput v3, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    .line 162
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V

    .line 166
    :cond_7d
    nop

    .line 167
    iget-boolean v3, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    if-eqz v3, :cond_9c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got input format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_9c
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    .line 169
    const/4 v3, 0x3

    if-eq v1, v3, :cond_b1

    .line 170
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 172
    const/4 p1, 0x1

    goto :goto_b2

    .line 174
    :cond_b1
    const/4 p1, 0x0

    .line 178
    :goto_b2
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v1}, Landroid/filterfw/core/FilterSurfaceView;->getSurfaceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    .line 181
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v3, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 184
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    .line 186
    if-eqz p1, :cond_ca

    .line 187
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 189
    :cond_ca
    return-void

    .line 150
    :cond_cb
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Surface created under different GLEnvironment!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 85
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    if-eqz v0, :cond_f

    .line 90
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "frame"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 91
    return-void

    .line 86
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NULL SurfaceView passed to SurfaceRenderFilter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    monitor-enter p0

    .line 220
    :try_start_1
    iget-object p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz p1, :cond_16

    .line 221
    iput p3, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenWidth:I

    .line 222
    iput p4, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenHeight:I

    .line 223
    iget-object p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    iget p2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenWidth:I

    iget p3, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenHeight:I

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/filterfw/core/GLFrame;->setViewport(IIII)V

    .line 224
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 226
    :cond_16
    monitor-exit p0

    return-void

    .line 219
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public declared-synchronized whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    monitor-enter p0

    .line 210
    const/4 p1, 0x1

    :try_start_2
    iput-boolean p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 211
    monitor-exit p0

    return-void

    .line 209
    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public declared-synchronized whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    monitor-enter p0

    .line 230
    const/4 p1, 0x0

    :try_start_2
    iput-boolean p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 231
    monitor-exit p0

    return-void

    .line 229
    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public blacklist tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 2

    .line 203
    iget-object p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz p1, :cond_9

    .line 204
    iget-object p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {p1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 206
    :cond_9
    return-void
.end method

.method public blacklist updateRenderMode()V
    .registers 4

    .line 94
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    if-eqz v0, :cond_50

    .line 95
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    const-string/jumbo v1, "stretch"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    goto :goto_50

    .line 97
    :cond_13
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    const-string v1, "fit"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    goto :goto_50

    .line 99
    :cond_21
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    const-string v1, "fill_crop"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 100
    const/4 v0, 0x2

    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    goto :goto_50

    .line 102
    :cond_2f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown render mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_50
    :goto_50
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V

    .line 106
    return-void
.end method
