.class final Lcom/android/server/display/ColorFade;
.super Ljava/lang/Object;
.source "ColorFade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
    }
.end annotation


# static fields
.field private static final COLOR_FADE_LAYER:I = 0x40000001

.field private static DEBUG:Z = false

.field private static final DEJANK_FRAMES:I = 0x3

.field private static final EGL_GL_COLORSPACE_DISPLAY_P3_PASSTHROUGH_EXT:I = 0x3490

.field private static final EGL_GL_COLORSPACE_KHR:I = 0x309d

.field private static final EGL_PROTECTED_CONTENT_EXT:I = 0x32c0

.field public static final MODE_COOL_DOWN:I = 0x1

.field public static final MODE_FADE:I = 0x2

.field public static final MODE_WARM_UP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorFade"


# instance fields
.field private mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private mBLASTSurfaceControl:Landroid/view/SurfaceControl;

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

.field private mGammaLoc:I

.field private mIsCurtainAnimRunning:Z

.field private mLastWasProtectedContent:Z

.field private mLastWasWideColor:Z

.field private mMode:I

.field private mOpacityLoc:I

.field private mPrepared:Z

.field private mProgram:I

.field private final mProjMatrix:[F

.field private mProjMatrixLoc:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceAlpha:F

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

.field private mSurfaceVisible:Z

.field private final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTexCoordLoc:I

.field private final mTexMatrix:[F

.field private mTexMatrixLoc:I

.field private final mTexNames:[I

.field private mTexNamesGenerated:Z

.field private mTexUnitLoc:I

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexLoc:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    .line 118
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    .line 119
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    .line 127
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 128
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 130
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 148
    iput p1, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 149
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 150
    return-void
.end method

.method private attachEglContext()Z
    .registers 5

    .line 786
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 787
    return v1

    .line 789
    :cond_6
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v0, v0, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 790
    const-string v0, "eglMakeCurrent"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 791
    return v1

    .line 793
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method private captureScreen()Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 4

    .line 570
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 571
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->systemScreenshot(I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v0

    .line 572
    .local v0, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-nez v0, :cond_13

    .line 573
    const-string v1, "ColorFade"

    const-string v2, "Failed to take screenshot. Buffer is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v1, 0x0

    return-object v1

    .line 576
    :cond_13
    return-object v0
.end method

.method private static checkGlErrors(Ljava/lang/String;)Z
    .registers 2
    .param p0, "func"    # Ljava/lang/String;

    .line 814
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static checkGlErrors(Ljava/lang/String;Z)Z
    .registers 7
    .param p0, "func"    # Ljava/lang/String;
    .param p1, "log"    # Z

    .line 818
    const/4 v0, 0x0

    .line 820
    .local v0, "hadError":Z
    :goto_1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    move v2, v1

    .local v2, "error":I
    if-eqz v1, :cond_2d

    .line 821
    if-eqz p1, :cond_2b

    .line 822
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

    const-string v4, "ColorFade"

    invoke-static {v4, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 824
    :cond_2b
    const/4 v0, 0x1

    goto :goto_1

    .line 826
    :cond_2d
    return v0
.end method

.method private createEglContext(Z)Z
    .registers 16
    .param p1, "isProtected"    # Z

    .line 634
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_2a

    .line 635
    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 636
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v5, :cond_18

    .line 637
    const-string v0, "eglGetDisplay"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 638
    return v4

    .line 641
    :cond_18
    new-array v0, v2, [I

    .line 642
    .local v0, "version":[I
    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v5, v0, v4, v0, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 643
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 644
    const-string v1, "eglInitialize"

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 645
    return v4

    .line 649
    .end local v0    # "version":[I
    :cond_2a
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_5e

    .line 650
    const/16 v0, 0xb

    new-array v6, v0, [I

    fill-array-data v6, :array_96

    .line 659
    .local v6, "eglConfigAttribList":[I
    new-array v0, v3, [I

    .line 660
    .local v0, "numEglConfigs":[I
    new-array v13, v3, [Landroid/opengl/EGLConfig;

    .line 661
    .local v13, "eglConfigs":[Landroid/opengl/EGLConfig;
    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v7, 0x0

    const/4 v9, 0x0

    array-length v10, v13

    const/4 v12, 0x0

    move-object v8, v13

    move-object v11, v0

    invoke-static/range {v5 .. v12}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 663
    const-string v1, "eglChooseConfig"

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 664
    return v4

    .line 666
    :cond_4d
    aget v5, v0, v4

    if-gtz v5, :cond_5a

    .line 667
    const-string v1, "ColorFade"

    const-string/jumbo v2, "no valid config found"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return v4

    .line 671
    :cond_5a
    aget-object v5, v13, v4

    iput-object v5, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 676
    .end local v0    # "numEglConfigs":[I
    .end local v6    # "eglConfigAttribList":[I
    .end local v13    # "eglConfigs":[Landroid/opengl/EGLConfig;
    :cond_5e
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_6d

    iget-boolean v5, p0, Lcom/android/server/display/ColorFade;->mLastWasProtectedContent:Z

    if-eq p1, v5, :cond_6d

    .line 677
    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v5, v0}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 678
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 681
    :cond_6d
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_94

    .line 682
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_b0

    .line 687
    .local v0, "eglContextAttribList":[I
    if-eqz p1, :cond_80

    .line 688
    const/16 v1, 0x32c0

    aput v1, v0, v2

    .line 689
    const/4 v1, 0x3

    aput v3, v0, v1

    .line 691
    :cond_80
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v5, v0, v4}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 693
    if-nez v1, :cond_94

    .line 694
    const-string v1, "eglCreateContext"

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 695
    return v4

    .line 698
    .end local v0    # "eglContextAttribList":[I
    :cond_94
    return v3

    nop

    :array_96
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

    :array_b0
    .array-data 4
        0x3098
        0x2
        0x3038
        0x3038
        0x3038
    .end array-data
.end method

.method private createEglSurface(ZZ)Z
    .registers 11
    .param p1, "isProtected"    # Z
    .param p2, "isWideColor"    # Z

    .line 704
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mLastWasProtectedContent:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mLastWasWideColor:Z

    if-eq p2, v0, :cond_b

    goto :goto_d

    :cond_b
    move v0, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v0, v2

    .line 706
    .local v0, "didContentAttributesChange":Z
    :goto_e
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v3, :cond_1c

    if-eqz v0, :cond_1c

    .line 707
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v4, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 708
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 711
    :cond_1c
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v3, :cond_54

    .line 712
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_56

    .line 720
    .local v3, "eglSurfaceAttribList":[I
    const/4 v4, 0x0

    .line 722
    .local v4, "index":I
    if-eqz p2, :cond_35

    .line 723
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    const/16 v6, 0x309d

    aput v6, v3, v4

    .line 724
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    const/16 v6, 0x3490

    aput v6, v3, v5

    .line 726
    :cond_35
    if-eqz p1, :cond_40

    .line 727
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    const/16 v6, 0x32c0

    aput v6, v3, v4

    .line 728
    aput v2, v3, v5

    move v4, v5

    .line 731
    .end local v5    # "index":I
    .restart local v4    # "index":I
    :cond_40
    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    iget-object v7, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    invoke-static {v5, v6, v7, v3, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 733
    if-nez v5, :cond_54

    .line 734
    const-string v2, "eglCreateWindowSurface"

    invoke-static {v2}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 735
    return v1

    .line 738
    .end local v3    # "eglSurfaceAttribList":[I
    .end local v4    # "index":I
    :cond_54
    return v2

    nop

    :array_56
    .array-data 4
        0x3038
        0x3038
        0x3038
        0x3038
        0x3038
    .end array-data
.end method

.method private static createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .registers 3
    .param p0, "size"    # I

    .line 804
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 805
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 806
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method private createSurfaceControl(Z)Z
    .registers 14
    .param p1, "isSecure"    # Z

    .line 580
    const-string v0, "ColorFade"

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    .line 581
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 582
    return v2

    .line 586
    :cond_11
    const/4 v1, 0x0

    :try_start_12
    new-instance v3, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 587
    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 588
    invoke-virtual {v3, p1}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const-string v4, "ColorFade.createSurface"

    .line 589
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 590
    .local v3, "builder":Landroid/view/SurfaceControl$Builder;
    iget v4, p0, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2e

    .line 591
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    goto :goto_31

    .line 593
    :cond_2e
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 595
    :goto_31
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_37
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_12 .. :try_end_37} :catch_c3

    .line 599
    .end local v3    # "builder":Landroid/view/SurfaceControl$Builder;
    nop

    .line 601
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v3, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    invoke-virtual {v0, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 602
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v6, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 603
    new-instance v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    iget-object v6, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v0, v3, v4, v6}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 605
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v3}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 606
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 608
    iget v0, p0, Lcom/android/server/display/ColorFade;->mMode:I

    if-eq v0, v5, :cond_c2

    .line 609
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 610
    const-string v3, "ColorFade BLAST"

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 611
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 612
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 613
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 614
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 615
    .local v0, "b":Landroid/view/SurfaceControl$Builder;
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    .line 617
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    .line 618
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    .line 619
    .local v1, "windowManagerService":Lcom/android/server/wm/WindowManagerInternal;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isInScreenProjection()Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 620
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 621
    .local v3, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    .line 622
    invoke-static {}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v5

    invoke-interface {v5}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraScreenProjectFlag()I

    move-result v5

    .line 621
    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setScreenProjection(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 623
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 626
    .end local v3    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :cond_ab
    new-instance v3, Landroid/graphics/BLASTBufferQueue;

    iget-object v8, p0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    iget v9, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v10, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    const/4 v11, -0x3

    const-string v7, "ColorFade"

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    iput-object v3, p0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 628
    invoke-virtual {v3}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    .line 630
    .end local v0    # "b":Landroid/view/SurfaceControl$Builder;
    .end local v1    # "windowManagerService":Lcom/android/server/wm/WindowManagerInternal;
    :cond_c2
    return v2

    .line 596
    :catch_c3
    move-exception v2

    .line 597
    .local v2, "ex":Landroid/view/Surface$OutOfResourcesException;
    const-string v3, "Unable to create surface."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    return v1
.end method

.method private destroyEglSurface()V
    .registers 3

    .line 742
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_14

    .line 743
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 744
    const-string v0, "eglDestroySurface"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 746
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 748
    :cond_14
    return-void
.end method

.method private destroyGLBuffers()V
    .registers 4

    .line 354
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 355
    const-string/jumbo v0, "glDeleteBuffers"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 356
    return-void
.end method

.method private destroyGLShaders()V
    .registers 2

    .line 315
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 316
    const-string/jumbo v0, "glDeleteProgram"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 317
    return-void
.end method

.method private destroyScreenshotTexture()V
    .registers 4

    .line 562
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    if-eqz v0, :cond_13

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 564
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 565
    const-string/jumbo v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 567
    :cond_13
    return-void
.end method

.method private destroySurface()V
    .registers 4

    .line 751
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_38

    .line 752
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->dispose()V

    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 754
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 755
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_20

    .line 756
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 757
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    .line 760
    :cond_20
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_30

    .line 761
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 762
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    .line 763
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 764
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 767
    :cond_30
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 768
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    .line 769
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    .line 771
    :cond_38
    return-void
.end method

.method private detachEglContext()V
    .registers 5

    .line 797
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_d

    .line 798
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 801
    :cond_d
    return-void
.end method

.method private drawFaded(FF)V
    .registers 14
    .param p1, "opacity"    # F
    .param p2, "gamma"    # F

    .line 466
    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawFaded: opacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorFade"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_26
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 473
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 474
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 475
    iget v0, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 476
    iget v0, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 479
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 480
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    aget v0, v0, v3

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 483
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v3

    const v4, 0x8892

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 484
    iget v0, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 485
    iget v5, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 487
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v2

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 488
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 489
    iget v5, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 491
    const/4 v0, 0x6

    const/4 v2, 0x4

    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 494
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 495
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 496
    return-void
.end method

.method private initGLBuffers()Z
    .registers 7

    .line 321
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/android/server/display/ColorFade;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 324
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8d65

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 325
    const/16 v0, 0x2800

    const/16 v3, 0x2600

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 327
    const/16 v0, 0x2801

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 329
    const/16 v0, 0x2802

    const v3, 0x812f

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 331
    const/16 v0, 0x2803

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 333
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 336
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 339
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v1

    const v2, 0x8892

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 340
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const v4, 0x88e4

    invoke-static {v2, v0, v3, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 344
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 345
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v2, v0, v5, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 348
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 350
    return v3
.end method

.method private initGLShaders(Landroid/content/Context;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 281
    const v0, 0x1100003

    const v1, 0x8b31

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result v0

    .line 283
    .local v0, "vshader":I
    const v1, 0x1100002

    const v2, 0x8b30

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result v1

    .line 285
    .local v1, "fshader":I
    invoke-static {}, Landroid/opengl/GLES20;->glReleaseShaderCompiler()V

    .line 286
    const/4 v2, 0x0

    if-eqz v0, :cond_91

    if-nez v1, :cond_1d

    goto :goto_91

    .line 288
    :cond_1d
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 290
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 291
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 292
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 293
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 295
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 297
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "position"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    .line 298
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "uv"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    .line 300
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "proj_matrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    .line 301
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "tex_matrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    .line 303
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "opacity"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    .line 304
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string v4, "gamma"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    .line 305
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "texUnit"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    .line 307
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 308
    iget v3, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 309
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 311
    const/4 v2, 0x1

    return v2

    .line 286
    :cond_91
    :goto_91
    return v2
.end method

.method private loadShader(Landroid/content/Context;II)I
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "type"    # I

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ColorFade;->readFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "source":Ljava/lang/String;
    invoke-static {p3}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 264
    .local v1, "shader":I
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 265
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 267
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 268
    .local v2, "compiled":[I
    const v3, 0x8b81

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 269
    aget v3, v2, v4

    if-nez v3, :cond_56

    .line 270
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

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ColorFade"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 274
    const/4 v1, 0x0

    .line 277
    :cond_56
    return v1
.end method

.method private static logEglError(Ljava/lang/String;)V
    .registers 4
    .param p0, "func"    # Ljava/lang/String;

    .line 810
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

    const-string v2, "ColorFade"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 811
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

    .line 499
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    sub-float v1, p2, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v1, v2, v1

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 500
    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 501
    const/4 v1, 0x2

    aput v3, v0, v1

    .line 502
    const/4 v1, 0x3

    aput v3, v0, v1

    .line 503
    const/4 v1, 0x4

    aput v3, v0, v1

    .line 504
    sub-float v1, p4, p3

    div-float/2addr v2, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 505
    const/4 v1, 0x6

    aput v3, v0, v1

    .line 506
    const/4 v1, 0x7

    aput v3, v0, v1

    .line 507
    const/16 v1, 0x8

    aput v3, v0, v1

    .line 508
    const/16 v1, 0x9

    aput v3, v0, v1

    .line 509
    sub-float v1, p6, p5

    const/high16 v2, -0x40000000    # -2.0f

    div-float/2addr v2, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    .line 510
    const/16 v1, 0xb

    aput v3, v0, v1

    .line 511
    add-float v1, p2, p1

    neg-float v1, v1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 512
    add-float v1, p4, p3

    neg-float v1, v1

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 513
    add-float v1, p6, p5

    neg-float v1, v1

    sub-float v2, p6, p5

    div-float/2addr v1, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 514
    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 515
    return-void
.end method

.method private readFile(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .line 250
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 251
    .local v0, "stream":Ljava/io/InputStream;
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v1

    .line 253
    .end local v0    # "stream":Ljava/io/InputStream;
    :catch_17
    move-exception v0

    .line 254
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized shader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorFade"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static setQuad(Ljava/nio/FloatBuffer;FFFF)V
    .registers 7
    .param p0, "vtx"    # Ljava/nio/FloatBuffer;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    .line 359
    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    if-eqz v0, :cond_3b

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setQuad: x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorFade"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_3b
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 363
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 364
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 365
    const/4 v0, 0x3

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 366
    const/4 v0, 0x4

    add-float v1, p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 367
    const/4 v0, 0x5

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 368
    const/4 v0, 0x6

    add-float v1, p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 369
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 370
    return-void
.end method

.method private setScreenshotTextureAndSetViewport(Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)Z
    .registers 15
    .param p1, "screenshotBuffer"    # Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    .line 519
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 520
    return v1

    .line 523
    :cond_8
    :try_start_8
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    const/4 v2, 0x1

    if-nez v0, :cond_22

    .line 524
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 525
    const-string/jumbo v0, "glGenTextures"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_a0

    if-eqz v0, :cond_20

    .line 526
    nop

    .line 556
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 526
    return v1

    .line 528
    :cond_20
    :try_start_20
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 531
    :cond_22
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    aget v3, v3, v1

    invoke-direct {v0, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 532
    .local v0, "st":Landroid/graphics/SurfaceTexture;
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_a0

    .line 534
    .local v3, "s":Landroid/view/Surface;
    :try_start_30
    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v4

    .line 535
    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v5

    .line 534
    invoke-virtual {v3, v4, v5}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    .line 537
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 538
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    invoke-virtual {v0, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_43
    .catchall {:try_start_30 .. :try_end_43} :catchall_97

    .line 540
    :try_start_43
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 541
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 542
    nop

    .line 547
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v2, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 548
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 549
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x4

    invoke-virtual {v4, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x5

    invoke-virtual {v4, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 550
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x7

    invoke-virtual {v4, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 553
    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v5, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-static {v1, v1, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 554
    const/4 v7, 0x0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float v8, v1

    const/4 v9, 0x0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    int-to-float v10, v1

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/display/ColorFade;->ortho(FFFFFF)V
    :try_end_92
    .catchall {:try_start_43 .. :try_end_92} :catchall_a0

    .line 556
    .end local v0    # "st":Landroid/graphics/SurfaceTexture;
    .end local v3    # "s":Landroid/view/Surface;
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 557
    nop

    .line 558
    return v2

    .line 540
    .restart local v0    # "st":Landroid/graphics/SurfaceTexture;
    .restart local v3    # "s":Landroid/view/Surface;
    :catchall_97
    move-exception v1

    :try_start_98
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 541
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 542
    nop

    .end local p0    # "this":Lcom/android/server/display/ColorFade;
    .end local p1    # "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    throw v1
    :try_end_a0
    .catchall {:try_start_98 .. :try_end_a0} :catchall_a0

    .line 556
    .end local v0    # "st":Landroid/graphics/SurfaceTexture;
    .end local v3    # "s":Landroid/view/Surface;
    .restart local p0    # "this":Lcom/android/server/display/ColorFade;
    .restart local p1    # "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    :catchall_a0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 557
    throw v0
.end method

.method private showSurface(F)Z
    .registers 6
    .param p1, "alpha"    # F

    .line 774
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_29

    .line 775
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v3, 0x40000001    # 2.0000002f

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 776
    invoke-virtual {v0, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 777
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 778
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 779
    iput-boolean v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    .line 780
    iput p1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    .line 782
    :cond_29
    return v1
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .line 408
    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 409
    const-string v0, "ColorFade"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    if-eqz v0, :cond_18

    .line 413
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismissResources()V

    .line 414
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroySurface()V

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 417
    :cond_18
    return-void
.end method

.method public dismissCurtainLayer()V
    .registers 3

    .line 924
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mIsCurtainAnimRunning:Z

    if-eqz v0, :cond_16

    .line 925
    const-string v0, "ColorFade"

    const-string v1, "Dismiss curtain animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mIsCurtainAnimRunning:Z

    .line 927
    invoke-static {v0}, Landroid/view/SurfaceControl;->enableCurtainAnim(Z)V

    .line 928
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Landroid/view/SurfaceControl;->setCurtainAnimRate(F)V

    .line 930
    :cond_16
    return-void
.end method

.method public dismissResources()V
    .registers 3

    .line 379
    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 380
    const-string v0, "ColorFade"

    const-string v1, "dismissResources"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    if-eqz v0, :cond_2e

    .line 384
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    .line 386
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyScreenshotTexture()V

    .line 387
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyGLShaders()V

    .line 388
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyGLBuffers()V

    .line 389
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_29

    .line 391
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 392
    nop

    .line 395
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    goto :goto_2e

    .line 391
    :catchall_29
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 392
    throw v0

    .line 398
    :cond_2e
    :goto_2e
    return-void
.end method

.method public draw(F)Z
    .registers 20
    .param p1, "level"    # F

    .line 427
    move-object/from16 v1, p0

    move/from16 v2, p1

    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawFrame: level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ColorFade"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_20
    iget-boolean v0, v1, Lcom/android/server/display/ColorFade;->mPrepared:Z

    const/4 v3, 0x0

    if-nez v0, :cond_26

    .line 432
    return v3

    .line 435
    :cond_26
    iget v0, v1, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v0, v4, :cond_33

    .line 436
    sub-float/2addr v5, v2

    invoke-direct {v1, v5}, Lcom/android/server/display/ColorFade;->showSurface(F)Z

    move-result v0

    return v0

    .line 439
    :cond_33
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 440
    return v3

    .line 444
    :cond_3a
    const/4 v0, 0x0

    :try_start_3b
    invoke-static {v0, v0, v0, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 445
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 448
    sub-float v0, v5, v2

    float-to-double v6, v0

    .line 449
    .local v6, "one_minus_level":D
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 450
    .local v8, "cos":D
    const-wide/16 v10, 0x0

    cmpg-double v0, v8, v10

    if-gez v0, :cond_59

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    goto :goto_5b

    :cond_59
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 451
    .local v10, "sign":D
    :goto_5b
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    neg-double v14, v14

    double-to-float v0, v14

    add-float/2addr v0, v5

    .line 452
    .local v0, "opacity":F
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double v16, v10, v14

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double v16, v16, v12

    add-double v16, v16, v14

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    mul-double v16, v16, v12

    const-wide v12, 0x3fb999999999999aL    # 0.1

    add-double v12, v16, v12

    double-to-float v4, v12

    .line 453
    .local v4, "gamma":F
    div-float v12, v5, v4

    invoke-direct {v1, v0, v12}, Lcom/android/server/display/ColorFade;->drawFaded(FF)V

    .line 454
    const-string v12, "drawFrame"

    invoke-static {v12}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v12
    :try_end_8a
    .catchall {:try_start_3b .. :try_end_8a} :catchall_a2

    if-eqz v12, :cond_91

    .line 455
    nop

    .line 460
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 455
    return v3

    .line 458
    :cond_91
    :try_start_91
    iget-object v3, v1, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v12, v1, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v3, v12}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_98
    .catchall {:try_start_91 .. :try_end_98} :catchall_a2

    .line 460
    nop

    .end local v0    # "opacity":F
    .end local v4    # "gamma":F
    .end local v6    # "one_minus_level":D
    .end local v8    # "cos":D
    .end local v10    # "sign":D
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 461
    nop

    .line 462
    invoke-direct {v1, v5}, Lcom/android/server/display/ColorFade;->showSurface(F)Z

    move-result v0

    return v0

    .line 460
    :catchall_a2
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 461
    throw v0
.end method

.method public drawCurtainAnim(F)Z
    .registers 5
    .param p1, "level"    # F

    .line 912
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_1f

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1f

    .line 913
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mIsCurtainAnimRunning:Z

    if-nez v0, :cond_1c

    .line 914
    const-string v0, "ColorFade"

    const-string v2, "Start to draw curtain animation"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-static {v1}, Landroid/view/SurfaceControl;->enableCurtainAnim(Z)V

    .line 916
    iput-boolean v1, p0, Lcom/android/server/display/ColorFade;->mIsCurtainAnimRunning:Z

    .line 918
    :cond_1c
    invoke-static {p1}, Landroid/view/SurfaceControl;->setCurtainAnimRate(F)V

    .line 920
    :cond_1f
    return v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 831
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_CF:Z

    sput-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    .line 833
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 834
    const-string v0, "Color Fade State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 842
    return-void
.end method

.method public prepare(Landroid/content/Context;I)Z
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 160
    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    const-string v1, "ColorFade"

    if-eqz v0, :cond_1d

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepare: mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_1d
    iput p2, p0, Lcom/android/server/display/ColorFade;->mMode:I

    .line 166
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 167
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    const/4 v2, 0x0

    if-nez v0, :cond_2b

    .line 170
    return v2

    .line 175
    :cond_2b
    iget v3, v0, Landroid/view/DisplayInfo;->layerStack:I

    iput v3, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    .line 176
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 177
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 179
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v3

    .line 180
    .local v3, "token":Landroid/os/IBinder;
    if-nez v3, :cond_47

    .line 181
    const-string v4, "Failed to take screenshot because internal display is disconnected"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return v2

    .line 185
    :cond_47
    invoke-static {v3}, Landroid/view/SurfaceControl;->getDynamicDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    const/16 v4, 0x9

    const/4 v5, 0x1

    if-ne v1, v4, :cond_54

    move v1, v5

    goto :goto_55

    :cond_54
    move v1, v2

    .line 189
    .local v1, "isWideColor":Z
    :goto_55
    iput-boolean v5, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 191
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->captureScreen()Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v4

    .line 192
    .local v4, "hardwareBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-nez v4, :cond_61

    .line 193
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 194
    return v2

    .line 197
    :cond_61
    invoke-virtual {v4}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/utils/RotationAnimationUtils;->hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z

    move-result v6

    .line 198
    .local v6, "isProtected":Z
    invoke-virtual {v4}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/display/ColorFade;->createSurfaceControl(Z)Z

    move-result v7

    if-nez v7, :cond_77

    .line 199
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 200
    return v2

    .line 204
    :cond_77
    iget v7, p0, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7d

    .line 205
    return v5

    .line 208
    :cond_7d
    invoke-direct {p0, v6}, Lcom/android/server/display/ColorFade;->createEglContext(Z)Z

    move-result v7

    if-eqz v7, :cond_d6

    invoke-direct {p0, v6, v1}, Lcom/android/server/display/ColorFade;->createEglSurface(ZZ)Z

    move-result v7

    if-eqz v7, :cond_d6

    .line 209
    invoke-direct {p0, v4}, Lcom/android/server/display/ColorFade;->setScreenshotTextureAndSetViewport(Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)Z

    move-result v7

    if-nez v7, :cond_90

    goto :goto_d6

    .line 215
    :cond_90
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v7

    if-nez v7, :cond_97

    .line 216
    return v2

    .line 219
    :cond_97
    :try_start_97
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorFade;->initGLShaders(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_c6

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->initGLBuffers()Z

    move-result v7

    if-eqz v7, :cond_c6

    const-string/jumbo v7, "prepare"

    invoke-static {v7}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v7
    :try_end_aa
    .catchall {:try_start_97 .. :try_end_aa} :catchall_d1

    if-eqz v7, :cond_ad

    goto :goto_c6

    .line 225
    :cond_ad
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 226
    nop

    .line 229
    iput-boolean v5, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    .line 230
    iput-boolean v6, p0, Lcom/android/server/display/ColorFade;->mLastWasProtectedContent:Z

    .line 231
    iput-boolean v1, p0, Lcom/android/server/display/ColorFade;->mLastWasWideColor:Z

    .line 240
    if-ne p2, v5, :cond_c5

    .line 241
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_ba
    const/4 v7, 0x3

    if-ge v2, v7, :cond_c5

    .line 242
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0, v7}, Lcom/android/server/display/ColorFade;->draw(F)Z

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_ba

    .line 245
    .end local v2    # "i":I
    :cond_c5
    return v5

    .line 220
    :cond_c6
    :goto_c6
    :try_start_c6
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 221
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismiss()V
    :try_end_cc
    .catchall {:try_start_c6 .. :try_end_cc} :catchall_d1

    .line 222
    nop

    .line 225
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 222
    return v2

    .line 225
    :catchall_d1
    move-exception v2

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 226
    throw v2

    .line 210
    :cond_d6
    :goto_d6
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 211
    return v2
.end method
