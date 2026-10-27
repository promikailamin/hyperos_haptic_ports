.class public final Lcom/xiaomi/media/imagecodec/ImageCodec;
.super Ljava/lang/Object;
.source "ImageCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mContextLock:Ljava/lang/Object;

.field private blacklist mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

.field private blacklist mNativeContext:J

.field private blacklist mOutputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/xiaomi/media/imagecodec/ImageCodec;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    .line 232
    const-string v0, "camera_imagecodec_jni.xiaomi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeClassInit()V

    .line 234
    return-void
.end method

.method private constructor blacklist <init>(Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;)V
    .registers 5
    .param p1, "inputSpec"    # Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mContextLock:Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctor(): E "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-object p1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctor(): X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public static blacklist create(III)Lcom/xiaomi/media/imagecodec/ImageCodec;
    .registers 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I

    .line 53
    const/4 v0, 0x1

    if-lt p0, v0, :cond_22

    if-lt p1, v0, :cond_22

    .line 56
    const/16 v0, 0x23

    if-eq p2, v0, :cond_16

    const/16 v0, 0x11

    if-ne p2, v0, :cond_e

    goto :goto_16

    .line 57
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The image format must be YUV_420_888 or NV21"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_16
    :goto_16
    new-instance v0, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;-><init>(IIILcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec-IA;)V

    .line 60
    .local v0, "inputSpec":Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;
    new-instance v1, Lcom/xiaomi/media/imagecodec/ImageCodec;

    invoke-direct {v1, v0}, Lcom/xiaomi/media/imagecodec/ImageCodec;-><init>(Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;)V

    return-object v1

    .line 54
    .end local v0    # "inputSpec":Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The image dimensions must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getImageOwner(Landroid/media/Image;)Ljava/lang/Object;
    .registers 6
    .param p1, "image"    # Landroid/media/Image;

    .line 159
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/media/Image;

    const-string v2, "getOwner"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 160
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 161
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_15} :catch_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_15} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_15} :catch_16

    return-object v0

    .line 162
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_16
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v2, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get the owner of the given image"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getVersionCode()I
    .registers 1

    .line 209
    invoke-static {}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeGetVersionCode()I

    move-result v0

    return v0
.end method

.method private blacklist isImageValid(Landroid/media/Image;)Z
    .registers 5
    .param p1, "image"    # Landroid/media/Image;

    .line 170
    :try_start_0
    const-class v0, Landroid/media/Image;

    const-string v1, "mIsImageValid"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 171
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_10} :catch_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_11

    return v1

    .line 173
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_11
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v1, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    const-string v2, "Failed to check if the given image is valid ot not"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    const/4 v0, 0x0

    return v0
.end method

.method private static native blacklist nativeClassInit()V
.end method

.method private native blacklist nativeCreate(Ljava/lang/Object;IIILandroid/view/Surface;)J
.end method

.method private native blacklist nativeDestroy(J)V
.end method

.method private native blacklist nativeDrainInputImage(JLandroid/media/Image;)V
.end method

.method private native blacklist nativeGetOutputSpec(JLcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;)V
.end method

.method private static native blacklist nativeGetVersionCode()I
.end method

.method private native blacklist nativeSetCodecQuality(JI)V
.end method

.method private native blacklist nativeSetFlipFlag(JI)V
.end method

.method private static blacklist postEventFromNative(Ljava/lang/Object;)V
    .registers 5
    .param p0, "selfRef"    # Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    const-string v1, "postEventFromNative(): E"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    move-object v1, p0

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 188
    .local v1, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/xiaomi/media/imagecodec/ImageCodec;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/media/imagecodec/ImageCodec;

    .line 189
    .local v2, "ic":Lcom/xiaomi/media/imagecodec/ImageCodec;
    if-nez v2, :cond_13

    .line 190
    return-void

    .line 192
    :cond_13
    const-string v3, "postEventFromNative(): X"

    invoke-static {v0, v3}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method


# virtual methods
.method public blacklist drainInputImage(Landroid/media/Image;)V
    .registers 7
    .param p1, "image"    # Landroid/media/Image;

    .line 99
    if-eqz p1, :cond_ab

    .line 103
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    iget v1, v1, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->width:I

    if-ne v0, v1, :cond_80

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    iget v1, v1, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->height:I

    if-ne v0, v1, :cond_80

    .line 107
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    iget v1, v1, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->format:I

    if-ne v0, v1, :cond_63

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.ImageReader$SurfaceImage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 116
    invoke-direct {p0, p1}, Lcom/xiaomi/media/imagecodec/ImageCodec;->isImageValid(Landroid/media/Image;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 120
    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_39
    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_44

    .line 123
    invoke-direct {p0, v1, v2, p1}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeDrainInputImage(JLandroid/media/Image;)V
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_4a

    .line 126
    :cond_44
    :try_start_44
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 127
    nop

    .line 128
    monitor-exit v0

    .line 129
    return-void

    .line 126
    :catchall_4a
    move-exception v1

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 127
    nop

    .end local p0    # "this":Lcom/xiaomi/media/imagecodec/ImageCodec;
    .end local p1    # "image":Landroid/media/Image;
    throw v1

    .line 128
    .restart local p0    # "this":Lcom/xiaomi/media/imagecodec/ImageCodec;
    .restart local p1    # "image":Landroid/media/Image;
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_50

    throw v1

    .line 117
    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only images from ImageReader can be fed to ImageCodec, other image source is not supported yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid input image format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid input image dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_ab
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input image must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getInputSpec()Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    return-object v0
.end method

.method public blacklist getOutputSpec()Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;
    .registers 6

    .line 136
    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mOutputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    if-nez v1, :cond_26

    .line 138
    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1e

    .line 141
    new-instance v1, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;-><init>(IIILcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec-IA;)V

    iput-object v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mOutputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    .line 142
    iget-wide v2, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    invoke-direct {p0, v2, v3, v1}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeGetOutputSpec(JLcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;)V

    goto :goto_26

    .line 139
    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ImageCodec is not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/xiaomi/media/imagecodec/ImageCodec;
    throw v1

    .line 144
    .restart local p0    # "this":Lcom/xiaomi/media/imagecodec/ImageCodec;
    :cond_26
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_2a

    .line 145
    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mOutputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    return-object v0

    .line 144
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public blacklist release()V
    .registers 5

    .line 149
    sget-object v0, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release(): E "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mContextLock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_1f
    iget-wide v2, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeDestroy(J)V

    .line 152
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    .line 153
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_44

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release(): X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 153
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0
.end method

.method public blacklist setFlip(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .line 90
    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_3
    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_15

    .line 94
    if-eqz p1, :cond_f

    const/4 v3, 0x1

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    invoke-direct {p0, v1, v2, v3}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeSetFlipFlag(JI)V

    .line 95
    monitor-exit v0

    .line 96
    return-void

    .line 92
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ImageCodec is not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/xiaomi/media/imagecodec/ImageCodec;
    .end local p1    # "enabled":Z
    throw v1

    .line 95
    .restart local p0    # "this":Lcom/xiaomi/media/imagecodec/ImageCodec;
    .restart local p1    # "enabled":Z
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public blacklist setOutputSurface(Landroid/view/Surface;)V
    .registers 8
    .param p1, "surface"    # Landroid/view/Surface;

    .line 70
    if-eqz p1, :cond_1c

    .line 73
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    iget v2, v0, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->width:I

    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    iget v3, v0, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->height:I

    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    iget v4, v0, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->format:I

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeCreate(Ljava/lang/Object;IIILandroid/view/Surface;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    .line 75
    return-void

    .line 71
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given output surface must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setQuality(I)V
    .registers 7
    .param p1, "quality"    # I

    .line 78
    if-ltz p1, :cond_21

    const/16 v0, 0x64

    if-gt p1, v0, :cond_21

    .line 81
    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_9
    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_16

    .line 85
    invoke-direct {p0, v1, v2, p1}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeSetCodecQuality(JI)V

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 83
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ImageCodec is not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/xiaomi/media/imagecodec/ImageCodec;
    .end local p1    # "quality":I
    throw v1

    .line 86
    .restart local p0    # "this":Lcom/xiaomi/media/imagecodec/ImageCodec;
    .restart local p1    # "quality":I
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw v1

    .line 79
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
