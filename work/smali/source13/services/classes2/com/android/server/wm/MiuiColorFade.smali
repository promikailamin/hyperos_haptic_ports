.class public final Lcom/android/server/wm/MiuiColorFade;
.super Ljava/lang/Object;
.source "MiuiColorFade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MiuiColorFade$NaturalSurfaceLayout;
    }
.end annotation


# static fields
.field private static final COLOR_FADE_LAYER:I = 0x40000001

.field private static final DEBUG:Z = false

.field private static final DEJANK_FRAMES:I = 0x3

.field public static final MODE_BUFFER_LAYER:I = 0x0

.field public static final MODE_COOL_DOWN:I = 0x1

.field public static final MODE_FADE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MiuiColorFade"


# instance fields
.field private mAlphaLoc:I

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mColorFadeLevel:F

.field private mCreatedResources:Z

.field private mDisplayHeight:I

.field private final mDisplayId:I

.field private mDisplayLayerStack:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDisplayWidth:I

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private final mGLBuffers:[I

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private mMode:I

.field private final mNightColorFadeDrawRunnable:Ljava/lang/Runnable;

.field private mPrepared:Z

.field private mProgram:I

.field private final mProjMatrix:[F

.field private mProjMatrixLoc:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceAlpha:F

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceLayout:Lcom/android/server/wm/MiuiColorFade$NaturalSurfaceLayout;

.field private mSurfaceSession:Landroid/view/SurfaceSession;

.field private mSurfaceVisible:Z

.field private final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTexCoordLoc:I

.field private final mTexMatrix:[F

.field private mTexMatrixLoc:I

.field private final mTexNames:[I

.field private mTexNamesGenerated:Z

.field private mTexUnitLoc:I

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexLoc:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmColorFadeLevel(Lcom/android/server/wm/MiuiColorFade;)F
    .registers 1

    iget p0, p0, Lcom/android/server/wm/MiuiColorFade;->mColorFadeLevel:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrepared(Lcom/android/server/wm/MiuiColorFade;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/MiuiColorFade;->mPrepared:Z

    return p0
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mTexNames:[I

    .line 106
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/MiuiColorFade;->mTexMatrix:[F

    .line 107
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mProjMatrix:[F

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mGLBuffers:[I

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/MiuiColorFade;->mColorFadeLevel:F

    .line 120
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/server/wm/MiuiColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/MiuiColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 121
    invoke-static {v0}, Lcom/android/server/wm/MiuiColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 171
    new-instance v0, Lcom/android/server/wm/MiuiColorFade$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MiuiColorFade$1;-><init>(Lcom/android/server/wm/MiuiColorFade;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mNightColorFadeDrawRunnable:Ljava/lang/Runnable;

    .line 139
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mChoreographer:Landroid/view/Choreographer;

    .line 140
    iput p1, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayId:I

    .line 141
    nop

    .line 142
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mIWindowManager:Landroid/view/IWindowManager;

    .line 143
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 144
    return-void
.end method

.method private attachEglContext()Z
    .registers 5

    .line 734
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 735
    return v1

    .line 737
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/MiuiColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/android/server/wm/MiuiColorFade;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v0, v0, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 738
    const-string v0, "eglMakeCurrent"

    invoke-static {v0}, Lcom/android/server/wm/MiuiColorFade;->logEglError(Ljava/lang/String;)V

    .line 739
    return v1

    .line 741
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method private captureScreenshotTextureAndSetViewport()Z
    .registers 14

    .line 521
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->attachEglContext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 522
    return v1

    .line 525
    :cond_8
    :try_start_8
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiColorFade;->mTexNamesGenerated:Z

    const/4 v2, 0x1

    if-nez v0, :cond_21

    .line 526
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mTexNames:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 527
    const-string v0, "glGenTextures"

    invoke-static {v0}, Lcom/android/server/wm/MiuiColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_ac

    if-eqz v0, :cond_1f

    .line 528
    nop

    .line 563
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->detachEglContext()V

    .line 528
    return v1

    .line 530
    :cond_1f
    :try_start_1f
    iput-boolean v2, p0, Lcom/android/server/wm/MiuiColorFade;->mTexNamesGenerated:Z

    .line 533
    :cond_21
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/android/server/wm/MiuiColorFade;->mTexNames:[I

    aget v3, v3, v1

    invoke-direct {v0, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 534
    .local v0, "st":Landroid/graphics/SurfaceTexture;
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_ac

    .line 536
    .local v3, "s":Landroid/view/Surface;
    :try_start_2f
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v4

    .line 537
    .local v4, "token":Landroid/os/IBinder;
    if-nez v4, :cond_47

    .line 538
    const-string v2, "MiuiColorFade"

    const-string v5, "Failed to take screenshot because internal display is disconnected"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_a3

    .line 540
    nop

    .line 547
    :try_start_3d
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 548
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_ac

    .line 563
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->detachEglContext()V

    .line 540
    return v1

    .line 544
    :cond_47
    :try_start_47
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 545
    iget-object v5, p0, Lcom/android/server/wm/MiuiColorFade;->mTexMatrix:[F

    invoke-virtual {v0, v5}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_a3

    .line 547
    .end local v4    # "token":Landroid/os/IBinder;
    :try_start_4f
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 548
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 549
    nop

    .line 554
    iget-object v4, p0, Lcom/android/server/wm/MiuiColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/android/server/wm/MiuiColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v2, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 555
    iget-object v4, p0, Lcom/android/server/wm/MiuiColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/android/server/wm/MiuiColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 556
    iget-object v4, p0, Lcom/android/server/wm/MiuiColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x4

    invoke-virtual {v4, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/android/server/wm/MiuiColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x5

    invoke-virtual {v4, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 557
    iget-object v4, p0, Lcom/android/server/wm/MiuiColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/android/server/wm/MiuiColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x7

    invoke-virtual {v4, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 560
    iget v4, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayWidth:I

    iget v5, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayHeight:I

    invoke-static {v1, v1, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 561
    const/4 v7, 0x0

    iget v1, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayWidth:I

    int-to-float v8, v1

    const/4 v9, 0x0

    iget v1, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayHeight:I

    int-to-float v10, v1

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/wm/MiuiColorFade;->ortho(FFFFFF)V
    :try_end_9e
    .catchall {:try_start_4f .. :try_end_9e} :catchall_ac

    .line 563
    .end local v0    # "st":Landroid/graphics/SurfaceTexture;
    .end local v3    # "s":Landroid/view/Surface;
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->detachEglContext()V

    .line 564
    nop

    .line 565
    return v2

    .line 547
    .restart local v0    # "st":Landroid/graphics/SurfaceTexture;
    .restart local v3    # "s":Landroid/view/Surface;
    :catchall_a3
    move-exception v1

    :try_start_a4
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 548
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 549
    nop

    .end local p0    # "this":Lcom/android/server/wm/MiuiColorFade;
    throw v1
    :try_end_ac
    .catchall {:try_start_a4 .. :try_end_ac} :catchall_ac

    .line 563
    .end local v0    # "st":Landroid/graphics/SurfaceTexture;
    .end local v3    # "s":Landroid/view/Surface;
    .restart local p0    # "this":Lcom/android/server/wm/MiuiColorFade;
    :catchall_ac
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->detachEglContext()V

    .line 564
    throw v0
.end method

.method private static checkGlErrors(Ljava/lang/String;)Z
    .registers 2
    .param p0, "func"    # Ljava/lang/String;

    .line 762
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/wm/MiuiColorFade;->checkGlErrors(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static checkGlErrors(Ljava/lang/String;Z)Z
    .registers 7
    .param p0, "func"    # Ljava/lang/String;
    .param p1, "log"    # Z

    .line 766
    const/4 v0, 0x0

    .line 768
    .local v0, "hadError":Z
    :goto_1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    move v2, v1

    .local v2, "error":I
    if-eqz v1, :cond_2d

    .line 769
    if-eqz p1, :cond_2b

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed: error "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    const-string v4, "MiuiColorFade"

    invoke-static {v4, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 772
    :cond_2b
    const/4 v0, 0x1

    goto :goto_1

    .line 774
    :cond_2d
    return v0
.end method

.method private createEglContext()Z
    .registers 13

    .line 577
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2a

    .line 578
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 579
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v3, :cond_16

    .line 580
    const-string v0, "eglGetDisplay"

    invoke-static {v0}, Lcom/android/server/wm/MiuiColorFade;->logEglError(Ljava/lang/String;)V

    .line 581
    return v2

    .line 584
    :cond_16
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 585
    .local v0, "version":[I
    iget-object v3, p0, Lcom/android/server/wm/MiuiColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v3, v0, v2, v0, v1}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 586
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/MiuiColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 587
    const-string v1, "eglInitialize"

    invoke-static {v1}, Lcom/android/server/wm/MiuiColorFade;->logEglError(Ljava/lang/String;)V

    .line 588
    return v2

    .line 592
    .end local v0    # "version":[I
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_5e

    .line 593
    const/16 v0, 0xb

    new-array v4, v0, [I

    fill-array-data v4, :array_7e

    .line 602
    .local v4, "eglConfigAttribList":[I
    new-array v0, v1, [I

    .line 603
    .local v0, "numEglConfigs":[I
    new-array v11, v1, [Landroid/opengl/EGLConfig;

    .line 604
    .local v11, "eglConfigs":[Landroid/opengl/EGLConfig;
    iget-object v3, p0, Lcom/android/server/wm/MiuiColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v11

    const/4 v10, 0x0

    move-object v6, v11

    move-object v9, v0

    invoke-static/range {v3 .. v10}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 606
    const-string v1, "eglChooseConfig"

    invoke-static {v1}, Lcom/android/server/wm/MiuiColorFade;->logEglError(Ljava/lang/String;)V

    .line 607
    return v2

    .line 609
    :cond_4d
    aget v3, v0, v2

    if-gtz v3, :cond_5a

    .line 610
    const-string v1, "MiuiColorFade"

    const-string/jumbo v3, "no valid config found"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return v2

    .line 614
    :cond_5a
    aget-object v3, v11, v2

    iput-object v3, p0, Lcom/android/server/wm/MiuiColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 617
    .end local v0    # "numEglConfigs":[I
    .end local v4    # "eglConfigAttribList":[I
    .end local v11    # "eglConfigs":[Landroid/opengl/EGLConfig;
    :cond_5e
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_7c

    .line 618
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_98

    .line 622
    .local v0, "eglContextAttribList":[I
    iget-object v3, p0, Lcom/android/server/wm/MiuiColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/wm/MiuiColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v4, v5, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/MiuiColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 624
    if-nez v3, :cond_7c

    .line 625
    const-string v1, "eglCreateContext"

    invoke-static {v1}, Lcom/android/server/wm/MiuiColorFade;->logEglError(Ljava/lang/String;)V

    .line 626
    return v2

    .line 629
    .end local v0    # "eglContextAttribList":[I
    :cond_7c
    return v1

    nop

    :array_7e
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data

    :array_98
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private createEglSurface()Z
    .registers 7

    .line 675
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 v1, 0x1

    if-nez v0, :cond_20

    .line 676
    new-array v0, v1, [I

    const/16 v2, 0x3038

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 680
    .local v0, "eglSurfaceAttribList":[I
    iget-object v2, p0, Lcom/android/server/wm/MiuiColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/wm/MiuiColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    iget-object v5, p0, Lcom/android/server/wm/MiuiColorFade;->mSurface:Landroid/view/Surface;

    invoke-static {v2, v4, v5, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/MiuiColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 682
    if-nez v2, :cond_20

    .line 683
    const-string v1, "eglCreateWindowSurface"

    invoke-static {v1}, Lcom/android/server/wm/MiuiColorFade;->logEglError(Ljava/lang/String;)V

    .line 684
    return v3

    .line 687
    .end local v0    # "eglSurfaceAttribList":[I
    :cond_20
    return v1
.end method

.method private static createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .registers 3
    .param p0, "size"    # I

    .line 752
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 753
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 754
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method private createSurface()Z
    .registers 8

    .line 633
    const-string v0, "MiuiColorFade"

    iget-object v1, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v1, :cond_d

    .line 634
    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 637
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    if-nez v1, :cond_97

    .line 638
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 639
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    const/4 v3, 0x0

    .line 641
    .local v3, "parent":Landroid/view/SurfaceControl;
    :try_start_18
    iget-object v4, p0, Lcom/android/server/wm/MiuiColorFade;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4}, Landroid/view/IWindowManager;->getTaskStackContainersSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1e} :catch_20

    move-object v3, v4

    .line 644
    goto :goto_37

    .line 642
    :catch_20
    move-exception v4

    .line 643
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTaskStackContainersSurfaceControl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_37
    :try_start_37
    new-instance v4, Landroid/view/SurfaceControl$Builder;

    iget-object v5, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v4, v5}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string v5, "MiuiColorAnimFade"

    .line 647
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 648
    .local v4, "builder":Landroid/view/SurfaceControl$Builder;
    iget v5, p0, Lcom/android/server/wm/MiuiColorFade;->mMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4d

    .line 649
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    goto :goto_5a

    .line 651
    :cond_4d
    invoke-virtual {v4, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 652
    invoke-virtual {v4, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 653
    iget v5, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    .line 655
    :goto_5a
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_60
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_37 .. :try_end_60} :catch_8f

    .line 659
    .end local v4    # "builder":Landroid/view/SurfaceControl$Builder;
    nop

    .line 661
    iget v0, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayLayerStack:I

    invoke-virtual {v1, v5, v0}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 662
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayWidth:I

    iget v5, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayHeight:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 663
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mSurface:Landroid/view/Surface;

    .line 664
    iget-object v4, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 666
    new-instance v0, Lcom/android/server/wm/MiuiColorFade$NaturalSurfaceLayout;

    iget-object v4, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v5, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayId:I

    iget-object v6, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/wm/MiuiColorFade$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceLayout:Lcom/android/server/wm/MiuiColorFade$NaturalSurfaceLayout;

    .line 668
    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiColorFade$NaturalSurfaceLayout;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 669
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_97

    .line 656
    :catch_8f
    move-exception v2

    .line 657
    .local v2, "ex":Landroid/view/Surface$OutOfResourcesException;
    const-string v4, "Unable to create surface."

    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 658
    const/4 v0, 0x0

    return v0

    .line 671
    .end local v1    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v2    # "ex":Landroid/view/Surface$OutOfResourcesException;
    .end local v3    # "parent":Landroid/view/SurfaceControl;
    :cond_97
    :goto_97
    return v2
.end method

.method private destroyEglSurface()V
    .registers 3

    .line 691
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_14

    .line 692
    iget-object v1, p0, Lcom/android/server/wm/MiuiColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 693
    const-string v0, "eglDestroySurface"

    invoke-static {v0}, Lcom/android/server/wm/MiuiColorFade;->logEglError(Ljava/lang/String;)V

    .line 695
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 697
    :cond_14
    return-void
.end method

.method private destroyGLBuffers()V
    .registers 4

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mGLBuffers:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 362
    const-string v0, "glDeleteBuffers"

    invoke-static {v0}, Lcom/android/server/wm/MiuiColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 363
    return-void
.end method

.method private destroyGLShaders()V
    .registers 2

    .line 322
    iget v0, p0, Lcom/android/server/wm/MiuiColorFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 323
    const-string v0, "glDeleteProgram"

    invoke-static {v0}, Lcom/android/server/wm/MiuiColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 324
    return-void
.end method

.method private destroyScreenshotTexture()V
    .registers 4

    .line 569
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiColorFade;->mTexNamesGenerated:Z

    if-eqz v0, :cond_12

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MiuiColorFade;->mTexNamesGenerated:Z

    .line 571
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wm/MiuiColorFade;->mTexNames:[I

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 572
    const-string v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/android/server/wm/MiuiColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 574
    :cond_12
    return-void
.end method

.method private destroySurface()V
    .registers 3

    .line 700
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2b

    .line 701
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceLayout:Lcom/android/server/wm/MiuiColorFade$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiColorFade$NaturalSurfaceLayout;->dispose()V

    .line 702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceLayout:Lcom/android/server/wm/MiuiColorFade$NaturalSurfaceLayout;

    .line 703
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 705
    :try_start_f
    iget-object v1, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->reparent(Landroid/view/SurfaceControl;)V

    .line 707
    iget-object v1, p0, Lcom/android/server/wm/MiuiColorFade;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_26

    .line 709
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 710
    nop

    .line 711
    iput-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 712
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceVisible:Z

    .line 713
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceAlpha:F

    goto :goto_2b

    .line 709
    :catchall_26
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 710
    throw v0

    .line 715
    :cond_2b
    :goto_2b
    return-void
.end method

.method private detachEglContext()V
    .registers 5

    .line 745
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_d

    .line 746
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 749
    :cond_d
    return-void
.end method

.method private drawFaded(F)V
    .registers 13
    .param p1, "alpha"    # F

    .line 474
    iget v0, p0, Lcom/android/server/wm/MiuiColorFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 477
    iget v0, p0, Lcom/android/server/wm/MiuiColorFade;->mProjMatrixLoc:I

    iget-object v1, p0, Lcom/android/server/wm/MiuiColorFade;->mProjMatrix:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 478
    iget v0, p0, Lcom/android/server/wm/MiuiColorFade;->mTexMatrixLoc:I

    iget-object v1, p0, Lcom/android/server/wm/MiuiColorFade;->mTexMatrix:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 479
    iget v0, p0, Lcom/android/server/wm/MiuiColorFade;->mAlphaLoc:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 482
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 483
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mTexNames:[I

    aget v0, v0, v3

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mGLBuffers:[I

    aget v0, v0, v3

    const v4, 0x8892

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 487
    iget v0, p0, Lcom/android/server/wm/MiuiColorFade;->mVertexLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 488
    iget v5, p0, Lcom/android/server/wm/MiuiColorFade;->mVertexLoc:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 490
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mGLBuffers:[I

    aget v0, v0, v2

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 491
    iget v0, p0, Lcom/android/server/wm/MiuiColorFade;->mTexCoordLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 492
    iget v5, p0, Lcom/android/server/wm/MiuiColorFade;->mTexCoordLoc:I

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 494
    const/4 v0, 0x6

    const/4 v2, 0x4

    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 497
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 498
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 499
    return-void
.end method

.method private initGLBuffers()Z
    .registers 7

    .line 328
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v1, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/android/server/wm/MiuiColorFade;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mTexNames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8d65

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 332
    const/16 v0, 0x2800

    const/16 v3, 0x2600

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 334
    const/16 v0, 0x2801

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 336
    const/16 v0, 0x2802

    const v3, 0x812f

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 338
    const/16 v0, 0x2803

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 340
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 343
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mGLBuffers:[I

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mGLBuffers:[I

    aget v0, v0, v1

    const v2, 0x8892

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 347
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v3, p0, Lcom/android/server/wm/MiuiColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const v4, 0x88e4

    invoke-static {v2, v0, v3, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mGLBuffers:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 352
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v5, p0, Lcom/android/server/wm/MiuiColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v2, v0, v5, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 355
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 357
    return v3
.end method

.method private initGLShaders()Z
    .registers 6

    .line 291
    const v0, 0x8b31

    invoke-direct {p0, v0}, Lcom/android/server/wm/MiuiColorFade;->loadShader(I)I

    move-result v0

    .line 292
    .local v0, "vshader":I
    const v1, 0x8b30

    invoke-direct {p0, v1}, Lcom/android/server/wm/MiuiColorFade;->loadShader(I)I

    move-result v1

    .line 293
    .local v1, "fshader":I
    invoke-static {}, Landroid/opengl/GLES20;->glReleaseShaderCompiler()V

    .line 294
    const/4 v2, 0x0

    if-eqz v0, :cond_80

    if-nez v1, :cond_17

    goto :goto_80

    .line 296
    :cond_17
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/MiuiColorFade;->mProgram:I

    .line 298
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 299
    iget v3, p0, Lcom/android/server/wm/MiuiColorFade;->mProgram:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 300
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 301
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 303
    iget v3, p0, Lcom/android/server/wm/MiuiColorFade;->mProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 305
    iget v3, p0, Lcom/android/server/wm/MiuiColorFade;->mProgram:I

    const-string/jumbo v4, "position"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/MiuiColorFade;->mVertexLoc:I

    .line 306
    iget v3, p0, Lcom/android/server/wm/MiuiColorFade;->mProgram:I

    const-string/jumbo v4, "uv"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/MiuiColorFade;->mTexCoordLoc:I

    .line 308
    iget v3, p0, Lcom/android/server/wm/MiuiColorFade;->mProgram:I

    const-string/jumbo v4, "proj_matrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/MiuiColorFade;->mProjMatrixLoc:I

    .line 309
    iget v3, p0, Lcom/android/server/wm/MiuiColorFade;->mProgram:I

    const-string/jumbo v4, "tex_matrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/MiuiColorFade;->mTexMatrixLoc:I

    .line 311
    iget v3, p0, Lcom/android/server/wm/MiuiColorFade;->mProgram:I

    const-string v4, "alpha"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/MiuiColorFade;->mAlphaLoc:I

    .line 312
    iget v3, p0, Lcom/android/server/wm/MiuiColorFade;->mProgram:I

    const-string/jumbo v4, "texUnit"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/MiuiColorFade;->mTexUnitLoc:I

    .line 314
    iget v3, p0, Lcom/android/server/wm/MiuiColorFade;->mProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 315
    iget v3, p0, Lcom/android/server/wm/MiuiColorFade;->mTexUnitLoc:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 316
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 318
    const/4 v2, 0x1

    return v2

    .line 294
    :cond_80
    :goto_80
    return v2
.end method

.method private loadShader(I)I
    .registers 7
    .param p1, "type"    # I

    .line 242
    const-string v0, ""

    .line 243
    .local v0, "source":Ljava/lang/String;
    const v1, 0x8b31

    if-ne p1, v1, :cond_b

    .line 244
    const-string/jumbo v0, "uniform mat4 proj_matrix;                                                   \nuniform mat4 tex_matrix;                                                  \nattribute vec2 position;                                                  \nattribute vec2 uv;                                                        \nvarying vec2 UV;                                                          \nvoid main()                                                               \n{                                                                         \n    vec4 transformed_uv = tex_matrix * vec4(uv.x, uv.y, 1.0, 1.0);        \n    UV = transformed_uv.st / transformed_uv.q;                            \n    gl_Position = proj_matrix * vec4(position.x, position.y, 0.0, 1.0);   \n}                                                                         \n"

    goto :goto_d

    .line 257
    :cond_b
    const-string v0, "#extension GL_OES_EGL_image_external : require        \nprecision mediump float;                            \nuniform samplerExternalOES texUnit;                 \nuniform float alpha;                                \nvarying vec2 UV;                                    \nvoid main()                                         \n{                                                   \n    vec4 color = texture2D(texUnit, UV);            \n    gl_FragColor = vec4(color.rgb, 1.0);            \n    gl_FragColor *= alpha;                          \n}                                                   \n"

    .line 272
    :goto_d
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 274
    .local v1, "shader":I
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 275
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 277
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 278
    .local v2, "compiled":[I
    const v3, 0x8b81

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 279
    aget v3, v2, v4

    if-nez v3, :cond_5f

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiColorFade"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 284
    const/4 v1, 0x0

    .line 287
    :cond_5f
    return v1
.end method

.method private static logEglError(Ljava/lang/String;)V
    .registers 4
    .param p0, "func"    # Ljava/lang/String;

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed: error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "MiuiColorFade"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    return-void
.end method

.method private ortho(FFFFFF)V
    .registers 11
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "znear"    # F
    .param p6, "zfar"    # F

    .line 502
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mProjMatrix:[F

    sub-float v1, p2, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v1, v2, v1

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 503
    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 504
    const/4 v1, 0x2

    aput v3, v0, v1

    .line 505
    const/4 v1, 0x3

    aput v3, v0, v1

    .line 506
    const/4 v1, 0x4

    aput v3, v0, v1

    .line 507
    sub-float v1, p4, p3

    div-float/2addr v2, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 508
    const/4 v1, 0x6

    aput v3, v0, v1

    .line 509
    const/4 v1, 0x7

    aput v3, v0, v1

    .line 510
    const/16 v1, 0x8

    aput v3, v0, v1

    .line 511
    const/16 v1, 0x9

    aput v3, v0, v1

    .line 512
    sub-float v1, p6, p5

    const/high16 v2, -0x40000000    # -2.0f

    div-float/2addr v2, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    .line 513
    const/16 v1, 0xb

    aput v3, v0, v1

    .line 514
    add-float v1, p2, p1

    neg-float v1, v1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 515
    add-float v1, p4, p3

    neg-float v1, v1

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 516
    add-float v1, p6, p5

    neg-float v1, v1

    sub-float v2, p6, p5

    div-float/2addr v1, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 517
    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 518
    return-void
.end method

.method private scheduleColorFadeDraw()V
    .registers 5

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/wm/MiuiColorFade;->mNightColorFadeDrawRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method private static setQuad(Ljava/nio/FloatBuffer;FFFF)V
    .registers 7
    .param p0, "vtx"    # Ljava/nio/FloatBuffer;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 370
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 371
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 372
    add-float v0, p2, p4

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 373
    add-float v0, p1, p3

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 374
    add-float v0, p2, p4

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 375
    add-float v0, p1, p3

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 376
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 377
    return-void
.end method

.method private showSurface(F)Z
    .registers 4
    .param p1, "alpha"    # F

    .line 718
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_15

    .line 719
    :cond_b
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 725
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 727
    iput-boolean v1, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceVisible:Z

    .line 728
    iput p1, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceAlpha:F

    .line 730
    :cond_15
    return v1
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 419
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiColorFade;->mPrepared:Z

    if-eqz v0, :cond_d

    .line 420
    invoke-virtual {p0}, Lcom/android/server/wm/MiuiColorFade;->dismissResources()V

    .line 421
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->destroySurface()V

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MiuiColorFade;->mPrepared:Z

    .line 424
    :cond_d
    return-void
.end method

.method public dismissResources()V
    .registers 2

    .line 390
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiColorFade;->mCreatedResources:Z

    if-eqz v0, :cond_23

    .line 391
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->attachEglContext()Z

    .line 393
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->destroyScreenshotTexture()V

    .line 394
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->destroyGLShaders()V

    .line 395
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->destroyGLBuffers()V

    .line 396
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->destroyEglSurface()V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1e

    .line 398
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->detachEglContext()V

    .line 399
    nop

    .line 402
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MiuiColorFade;->mCreatedResources:Z

    goto :goto_23

    .line 398
    :catchall_1e
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->detachEglContext()V

    .line 399
    throw v0

    .line 405
    :cond_23
    :goto_23
    return-void
.end method

.method public draw(F)Z
    .registers 10
    .param p1, "level"    # F

    .line 438
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiColorFade;->mPrepared:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 439
    return v1

    .line 442
    :cond_6
    iget v0, p0, Lcom/android/server/wm/MiuiColorFade;->mMode:I

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v0, v2, :cond_13

    .line 443
    sub-float/2addr v3, p1

    invoke-direct {p0, v3}, Lcom/android/server/wm/MiuiColorFade;->showSurface(F)Z

    move-result v0

    return v0

    .line 446
    :cond_13
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->attachEglContext()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 447
    return v1

    .line 451
    :cond_1a
    const/4 v0, 0x0

    :try_start_1b
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 452
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 455
    sub-float v0, v3, p1

    float-to-double v4, v0

    .line 456
    .local v4, "one_minus_level":D
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    neg-double v6, v6

    double-to-float v0, v6

    add-float/2addr v0, v3

    .line 457
    .local v0, "opacity":F
    invoke-direct {p0, v0}, Lcom/android/server/wm/MiuiColorFade;->drawFaded(F)V

    .line 458
    const-string v2, "drawFrame"

    invoke-static {v2}, Lcom/android/server/wm/MiuiColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v2
    :try_end_38
    .catchall {:try_start_1b .. :try_end_38} :catchall_50

    if-eqz v2, :cond_3f

    .line 459
    nop

    .line 464
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->detachEglContext()V

    .line 459
    return v1

    .line 462
    :cond_3f
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/wm/MiuiColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/android/server/wm/MiuiColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_50

    .line 464
    nop

    .end local v0    # "opacity":F
    .end local v4    # "one_minus_level":D
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->detachEglContext()V

    .line 465
    nop

    .line 466
    invoke-direct {p0, v3}, Lcom/android/server/wm/MiuiColorFade;->showSurface(F)Z

    move-result v0

    return v0

    .line 464
    :catchall_50
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->detachEglContext()V

    .line 465
    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 778
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 779
    const-string v0, "Color Fade State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/MiuiColorFade;->mPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/MiuiColorFade;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/MiuiColorFade;->mSurfaceAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method public getColorFadeAlphaLevel()F
    .registers 2

    .line 163
    iget v0, p0, Lcom/android/server/wm/MiuiColorFade;->mColorFadeLevel:F

    return v0
.end method

.method public prepare(I)Z
    .registers 6
    .param p1, "mode"    # I

    .line 192
    iput p1, p0, Lcom/android/server/wm/MiuiColorFade;->mMode:I

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 197
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->layerStack:I

    iput v1, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayLayerStack:I

    .line 198
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayWidth:I

    .line 199
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/MiuiColorFade;->mDisplayHeight:I

    .line 202
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->createSurface()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_79

    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->createEglContext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->createEglSurface()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 203
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->captureScreenshotTextureAndSetViewport()Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_79

    .line 209
    :cond_34
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->attachEglContext()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 210
    return v2

    .line 213
    :cond_3b
    :try_start_3b
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->initGLShaders()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->initGLBuffers()Z

    move-result v1

    if-eqz v1, :cond_69

    const-string/jumbo v1, "prepare"

    invoke-static {v1}, Lcom/android/server/wm/MiuiColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v1
    :try_end_4e
    .catchall {:try_start_3b .. :try_end_4e} :catchall_74

    if-eqz v1, :cond_51

    goto :goto_69

    .line 219
    :cond_51
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->detachEglContext()V

    .line 220
    nop

    .line 223
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/MiuiColorFade;->mCreatedResources:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/server/wm/MiuiColorFade;->mPrepared:Z

    .line 233
    if-ne p1, v1, :cond_68

    .line 234
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5d
    const/4 v3, 0x3

    if-ge v2, v3, :cond_68

    .line 235
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Lcom/android/server/wm/MiuiColorFade;->draw(F)Z

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 238
    .end local v2    # "i":I
    :cond_68
    return v1

    .line 214
    :cond_69
    :goto_69
    :try_start_69
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->detachEglContext()V

    .line 215
    invoke-virtual {p0}, Lcom/android/server/wm/MiuiColorFade;->dismiss()V
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_74

    .line 216
    nop

    .line 219
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->detachEglContext()V

    .line 216
    return v2

    .line 219
    :catchall_74
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->detachEglContext()V

    .line 220
    throw v1

    .line 204
    :cond_79
    :goto_79
    invoke-virtual {p0}, Lcom/android/server/wm/MiuiColorFade;->dismiss()V

    .line 205
    return v2
.end method

.method public setColorFadeAlphaLevel(F)V
    .registers 3
    .param p1, "level"    # F

    .line 147
    iget v0, p0, Lcom/android/server/wm/MiuiColorFade;->mColorFadeLevel:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_17

    .line 152
    iput p1, p0, Lcom/android/server/wm/MiuiColorFade;->mColorFadeLevel:F

    .line 153
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_10

    .line 154
    invoke-virtual {p0}, Lcom/android/server/wm/MiuiColorFade;->dismiss()V

    .line 156
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiColorFade;->mPrepared:Z

    if-eqz v0, :cond_17

    .line 157
    invoke-direct {p0}, Lcom/android/server/wm/MiuiColorFade;->scheduleColorFadeDraw()V

    .line 160
    :cond_17
    return-void
.end method
