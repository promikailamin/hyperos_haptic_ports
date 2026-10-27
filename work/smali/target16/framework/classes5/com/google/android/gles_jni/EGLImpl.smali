.class public Lcom/google/android/gles_jni/EGLImpl;
.super Ljava/lang/Object;
.source "EGLImpl.java"

# interfaces
.implements Ljavax/microedition/khronos/egl/EGL10;


# instance fields
.field private blacklist mContext:Lcom/google/android/gles_jni/EGLContextImpl;

.field private blacklist mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

.field private blacklist mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 168
    invoke-static {}, Lcom/google/android/gles_jni/EGLImpl;->_nativeClassInit()V

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/android/gles_jni/EGLContextImpl;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    .line 33
    new-instance v0, Lcom/google/android/gles_jni/EGLDisplayImpl;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 34
    new-instance v0, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 60
    return-void
.end method

.method private native blacklist _eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)J
.end method

.method private native blacklist _eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)J
.end method

.method private native blacklist _eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)V
.end method

.method private native blacklist _eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J
.end method

.method private native blacklist _eglCreateWindowSurfaceTexture(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J
.end method

.method private native blacklist _eglGetCurrentContext()J
.end method

.method private native blacklist _eglGetCurrentDisplay()J
.end method

.method private native blacklist _eglGetCurrentSurface(I)J
.end method

.method private native blacklist _eglGetDisplay(Ljava/lang/Object;)J
.end method

.method private static native blacklist _nativeClassInit()V
.end method

.method public static native blacklist getInitCount(Ljavax/microedition/khronos/egl/EGLDisplay;)I
.end method


# virtual methods
.method public native whitelist eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public native whitelist eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z
.end method

.method public whitelist eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 5

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)J

    move-result-wide p1

    .line 64
    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-nez p3, :cond_d

    .line 65
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p1

    .line 67
    :cond_d
    new-instance p3, Lcom/google/android/gles_jni/EGLContextImpl;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(J)V

    return-object p3
.end method

.method public whitelist eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 6

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)J

    move-result-wide p1

    .line 72
    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_d

    .line 73
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p1

    .line 75
    :cond_d
    new-instance p3, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    return-object p3
.end method

.method public whitelist eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 11

    .line 79
    new-instance v1, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v1}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>()V

    .line 80
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)V

    .line 81
    iget-wide p1, v1, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_18

    .line 82
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p1

    .line 84
    :cond_18
    return-object v1
.end method

.method public whitelist eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 6

    .line 88
    nop

    .line 89
    instance-of v0, p3, Landroid/view/SurfaceView;

    if-eqz v0, :cond_11

    .line 90
    move-object v0, p3

    check-cast v0, Landroid/view/SurfaceView;

    .line 91
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 92
    goto :goto_26

    :cond_11
    instance-of v0, p3, Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1d

    .line 93
    move-object v0, p3

    check-cast v0, Landroid/view/SurfaceHolder;

    .line 94
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 95
    goto :goto_26

    :cond_1d
    instance-of v0, p3, Landroid/view/Surface;

    if-eqz v0, :cond_25

    .line 96
    move-object v0, p3

    check-cast v0, Landroid/view/Surface;

    goto :goto_26

    .line 95
    :cond_25
    const/4 v0, 0x0

    .line 100
    :goto_26
    if-eqz v0, :cond_2d

    .line 101
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J

    move-result-wide p1

    goto :goto_35

    .line 102
    :cond_2d
    instance-of v0, p3, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_44

    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateWindowSurfaceTexture(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J

    move-result-wide p1

    .line 111
    :goto_35
    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-nez p3, :cond_3e

    .line 112
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p1

    .line 114
    :cond_3e
    new-instance p3, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    return-object p3

    .line 106
    :cond_44
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "eglCreateWindowSurface() can only be called with an instance of Surface, SurfaceView, SurfaceHolder or SurfaceTexture at the moment."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public native whitelist eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
.end method

.method public native whitelist eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
.end method

.method public native whitelist eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public native whitelist eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public declared-synchronized whitelist eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;
    .registers 5

    monitor-enter p0

    .line 128
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentContext()J

    move-result-wide v0

    .line 129
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    .line 130
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_22

    monitor-exit p0

    return-object v0

    .line 132
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    iget-wide v2, v2, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1e

    .line 133
    new-instance v2, Lcom/google/android/gles_jni/EGLContextImpl;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    .line 134
    :cond_1e
    iget-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    .line 127
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public declared-synchronized whitelist eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .registers 5

    monitor-enter p0

    .line 138
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentDisplay()J

    move-result-wide v0

    .line 139
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    .line 140
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_22

    monitor-exit p0

    return-object v0

    .line 142
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    iget-wide v2, v2, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1e

    .line 143
    new-instance v2, Lcom/google/android/gles_jni/EGLDisplayImpl;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 144
    :cond_1e
    iget-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    .line 137
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public declared-synchronized whitelist eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 6

    monitor-enter p0

    .line 148
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentSurface(I)J

    move-result-wide v0

    .line 149
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_f

    .line 150
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_22

    monitor-exit p0

    return-object p1

    .line 152
    :cond_f
    :try_start_f
    iget-object p1, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    iget-wide v2, p1, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1e

    .line 153
    new-instance p1, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 154
    :cond_1e
    iget-object p1, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object p1

    .line 147
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public declared-synchronized whitelist eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .registers 6

    monitor-enter p0

    .line 118
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetDisplay(Ljava/lang/Object;)J

    move-result-wide v0

    .line 119
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_f

    .line 120
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_22

    monitor-exit p0

    return-object p1

    .line 122
    :cond_f
    :try_start_f
    iget-object p1, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    iget-wide v2, p1, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1e

    .line 123
    new-instance p1, Lcom/google/android/gles_jni/EGLDisplayImpl;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 124
    :cond_1e
    iget-object p1, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object p1

    .line 117
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public native whitelist eglGetError()I
.end method

.method public native whitelist eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
.end method

.method public native whitelist eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
.end method

.method public native whitelist eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z
.end method

.method public native whitelist eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;
.end method

.method public native whitelist eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z
.end method

.method public native blacklist eglReleaseThread()Z
.end method

.method public native whitelist eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
.end method

.method public native whitelist eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
.end method

.method public native whitelist eglWaitGL()Z
.end method

.method public native whitelist eglWaitNative(ILjava/lang/Object;)Z
.end method
