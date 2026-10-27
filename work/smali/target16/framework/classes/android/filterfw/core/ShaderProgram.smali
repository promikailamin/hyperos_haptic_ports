.class public Landroid/filterfw/core/ShaderProgram;
.super Landroid/filterfw/core/Program;
.source "ShaderProgram.java"


# instance fields
.field private greylist-max-o mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

.field private greylist-max-o mMaxTileSize:I

.field private greylist-max-o mTimer:Landroid/filterfw/core/StopWatchMap;

.field private greylist-max-o shaderProgramId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 251
    const-string v0, "filterfw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 45
    return-void
.end method

.method public constructor greylist <init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 52
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;

    move-result-object p1

    iput-object p1, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 53
    iget-object p1, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-direct {p0, p1, v0, p2}, Landroid/filterfw/core/ShaderProgram;->allocate(Landroid/filterfw/core/GLEnvironment;Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->compileAndLink()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 57
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->setTimer()V

    .line 58
    return-void

    .line 55
    :cond_1e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not compile and link shader!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor greylist-max-o <init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 60
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 61
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;

    move-result-object p1

    iput-object p1, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 62
    iget-object p1, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-direct {p0, p1, p2, p3}, Landroid/filterfw/core/ShaderProgram;->allocate(Landroid/filterfw/core/GLEnvironment;Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->compileAndLink()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 66
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->setTimer()V

    .line 67
    return-void

    .line 64
    :cond_1e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not compile and link shader!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor greylist-max-o <init>(Landroid/filterfw/core/NativeAllocatorTag;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    .line 31
    const/4 p1, 0x0

    iput p1, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    .line 37
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 48
    return-void
.end method

.method private native greylist-max-o allocate(Landroid/filterfw/core/GLEnvironment;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native greylist-max-o beginShaderDrawing()Z
.end method

.method private native greylist-max-o compileAndLink()Z
.end method

.method public static greylist createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;
    .registers 1

    .line 71
    invoke-static {p0}, Landroid/filterfw/core/ShaderProgram;->getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;

    move-result-object p0

    invoke-static {p0}, Landroid/filterfw/core/ShaderProgram;->nativeCreateIdentity(Landroid/filterfw/core/GLEnvironment;)Landroid/filterfw/core/ShaderProgram;

    move-result-object p0

    .line 72
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->setTimer()V

    .line 73
    return-object p0
.end method

.method private native greylist-max-o deallocate()Z
.end method

.method private static greylist-max-o getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;
    .registers 2

    .line 242
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    .line 243
    :goto_8
    if-eqz p0, :cond_b

    .line 247
    return-object p0

    .line 244
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Attempting to create ShaderProgram with no GL environment in place!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private native greylist-max-o getUniformValue(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private static native greylist-max-o nativeCreateIdentity(Landroid/filterfw/core/GLEnvironment;)Landroid/filterfw/core/ShaderProgram;
.end method

.method private native greylist-max-o setShaderAttributeValues(Ljava/lang/String;[FI)Z
.end method

.method private native greylist-max-o setShaderAttributeVertexFrame(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)Z
.end method

.method private native greylist-max-o setShaderBlendEnabled(Z)Z
.end method

.method private native greylist-max-o setShaderBlendFunc(II)Z
.end method

.method private native greylist-max-o setShaderClearColor(FFF)Z
.end method

.method private native greylist-max-o setShaderClearsOutput(Z)Z
.end method

.method private native greylist-max-o setShaderDrawMode(I)Z
.end method

.method private native greylist-max-o setShaderTileCounts(II)Z
.end method

.method private native greylist-max-o setShaderVertexCount(I)Z
.end method

.method private native greylist-max-o setTargetRegion(FFFFFFFF)Z
.end method

.method private greylist-max-o setTimer()V
    .registers 2

    .line 40
    new-instance v0, Landroid/filterfw/core/StopWatchMap;

    invoke-direct {v0}, Landroid/filterfw/core/StopWatchMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 41
    return-void
.end method

.method private native greylist-max-o setUniformValue(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method private native greylist-max-o shaderProcess([Landroid/filterfw/core/GLFrame;Landroid/filterfw/core/GLFrame;)Z
.end method


# virtual methods
.method public greylist-max-o beginDrawing()V
    .registers 3

    .line 236
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->beginShaderDrawing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 239
    return-void

    .line 237
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not prepare shader-program for drawing!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->deallocate()Z

    .line 79
    return-void
.end method

.method public greylist-max-o getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    return-object v0
.end method

.method public greylist-max-o getHostValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 141
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->getUniformValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public greylist process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V
    .registers 6

    .line 88
    iget-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    iget-boolean v0, v0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    if-eqz v0, :cond_15

    .line 89
    iget-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    const-string v1, "glFinish"

    invoke-virtual {v0, v1}, Landroid/filterfw/core/StopWatchMap;->start(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 91
    iget-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/StopWatchMap;->stop(Ljava/lang/String;)V

    .line 96
    :cond_15
    array-length v0, p1

    new-array v0, v0, [Landroid/filterfw/core/GLFrame;

    .line 97
    const/4 v1, 0x0

    :goto_19
    array-length v2, p1

    if-ge v1, v2, :cond_4a

    .line 98
    aget-object v2, p1, v1

    instance-of v2, v2, Landroid/filterfw/core/GLFrame;

    if-eqz v2, :cond_2b

    .line 99
    aget-object v2, p1, v1

    check-cast v2, Landroid/filterfw/core/GLFrame;

    aput-object v2, v0, v1

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 101
    :cond_2b
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ShaderProgram got non-GL frame as input "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_4a
    nop

    .line 107
    instance-of p1, p2, Landroid/filterfw/core/GLFrame;

    if-eqz p1, :cond_91

    .line 108
    move-object p1, p2

    check-cast p1, Landroid/filterfw/core/GLFrame;

    .line 114
    iget v1, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    if-lez v1, :cond_79

    .line 115
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    div-int/2addr v1, v2

    .line 116
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object p2

    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result p2

    iget v2, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    add-int/2addr p2, v2

    add-int/lit8 p2, p2, -0x1

    iget v2, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    div-int/2addr p2, v2

    .line 117
    invoke-direct {p0, v1, p2}, Landroid/filterfw/core/ShaderProgram;->setShaderTileCounts(II)Z

    .line 121
    :cond_79
    invoke-direct {p0, v0, p1}, Landroid/filterfw/core/ShaderProgram;->shaderProcess([Landroid/filterfw/core/GLFrame;Landroid/filterfw/core/GLFrame;)Z

    move-result p1

    if-eqz p1, :cond_89

    .line 125
    iget-object p1, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    iget-boolean p1, p1, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    if-eqz p1, :cond_88

    .line 126
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 128
    :cond_88
    return-void

    .line 122
    :cond_89
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Error executing ShaderProgram!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_91
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ShaderProgram got non-GL output frame!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o setAttributeValues(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)V
    .registers 8

    .line 158
    invoke-direct/range {p0 .. p7}, Landroid/filterfw/core/ShaderProgram;->setShaderAttributeVertexFrame(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 168
    return-void

    .line 165
    :cond_7
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error setting attribute value for attribute \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\'!"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public greylist-max-o setAttributeValues(Ljava/lang/String;[FI)V
    .registers 5

    .line 145
    invoke-direct {p0, p1, p2, p3}, Landroid/filterfw/core/ShaderProgram;->setShaderAttributeValues(Ljava/lang/String;[FI)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 149
    return-void

    .line 146
    :cond_7
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error setting attribute value for attribute \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\'!"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public greylist-max-o setBlendEnabled(Z)V
    .registers 5

    .line 207
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderBlendEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 210
    return-void

    .line 208
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set Blending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setBlendFunc(II)V
    .registers 6

    .line 213
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/ShaderProgram;->setShaderBlendFunc(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 216
    return-void

    .line 214
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set BlendFunc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setClearColor(FFF)V
    .registers 7

    .line 201
    invoke-direct {p0, p1, p2, p3}, Landroid/filterfw/core/ShaderProgram;->setShaderClearColor(FFF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    return-void

    .line 202
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set clear color to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setClearsOutput(Z)V
    .registers 5

    .line 195
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderClearsOutput(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 198
    return-void

    .line 196
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set clears-output flag to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setDrawMode(I)V
    .registers 5

    .line 219
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderDrawMode(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 222
    return-void

    .line 220
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set GL draw-mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setHostValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/ShaderProgram;->setUniformValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 137
    return-void

    .line 134
    :cond_7
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error setting uniform value for variable \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public greylist setMaximumTileSize(I)V
    .registers 2

    .line 232
    iput p1, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    .line 233
    return-void
.end method

.method public greylist setSourceRect(FFFF)V
    .registers 14

    .line 187
    add-float v3, p1, p3

    add-float v6, p2, p4

    move v4, p2

    move v5, p1

    move v7, v3

    move v8, v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 188
    return-void
.end method

.method public greylist setSourceRegion(Landroid/filterfw/geometry/Quad;)V
    .registers 12

    .line 172
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v2, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v3, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v4, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v5, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v6, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v7, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v8, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object p1, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v9, p1, Landroid/filterfw/geometry/Point;->y:F

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 176
    return-void
.end method

.method public native greylist-max-o setSourceRegion(FFFFFFFF)Z
.end method

.method public greylist-max-o setTargetRect(FFFF)V
    .registers 14

    .line 191
    add-float v3, p1, p3

    add-float v6, p2, p4

    move v4, p2

    move v5, p1

    move v7, v3

    move v8, v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(FFFFFFFF)Z

    .line 192
    return-void
.end method

.method public greylist-max-o setTargetRegion(Landroid/filterfw/geometry/Quad;)V
    .registers 12

    .line 179
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v2, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v3, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v4, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v5, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v6, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v7, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v8, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object p1, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v9, p1, Landroid/filterfw/geometry/Point;->y:F

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(FFFFFFFF)Z

    .line 183
    return-void
.end method

.method public greylist-max-o setVertexCount(I)V
    .registers 5

    .line 225
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderVertexCount(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 228
    return-void

    .line 226
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set GL vertex count to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
