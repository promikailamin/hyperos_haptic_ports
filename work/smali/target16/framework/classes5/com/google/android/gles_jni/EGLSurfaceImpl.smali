.class public Lcom/google/android/gles_jni/EGLSurfaceImpl;
.super Ljavax/microedition/khronos/egl/EGLSurface;
.source "EGLSurfaceImpl.java"


# instance fields
.field blacklist mEGLSurface:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLSurface;-><init>()V

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    .line 25
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLSurface;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    .line 28
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 32
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 33
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1f

    .line 35
    :cond_12
    check-cast p1, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 37
    iget-wide v2, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    iget-wide v4, p1, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    return v0

    .line 33
    :cond_1f
    :goto_1f
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 47
    nop

    .line 48
    iget-wide v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    iget-wide v2, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 49
    return v1
.end method
