.class public Lcom/google/android/gles_jni/EGLDisplayImpl;
.super Ljavax/microedition/khronos/egl/EGLDisplay;
.source "EGLDisplayImpl.java"


# instance fields
.field blacklist mEGLDisplay:J


# direct methods
.method public constructor blacklist <init>(J)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLDisplay;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    .line 26
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 30
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 31
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1f

    .line 33
    :cond_12
    check-cast p1, Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 35
    iget-wide v2, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    iget-wide v4, p1, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    return v0

    .line 31
    :cond_1f
    :goto_1f
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 45
    nop

    .line 46
    iget-wide v0, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    iget-wide v2, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 47
    return v1
.end method
