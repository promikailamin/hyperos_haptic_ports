.class public Lcom/xiaomi/camera/isp/IspInterface;
.super Ljava/lang/Object;
.source "IspInterface.java"


# static fields
.field private static blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mContextLock:Ljava/lang/Object;

.field private blacklist mEventHandler:Landroid/os/Handler;

.field private blacklist mInputStreamList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/camera/isp/IspStream;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNativeContext:J

.field private blacklist mPicOutputSurface:Landroid/view/Surface;

.field private blacklist mSettings:Landroid/os/Parcelable;

.field private blacklist mTuningOutputSurface:Landroid/view/Surface;

.field private blacklist mYuvOutputSurface:Landroid/view/Surface;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 29
    const-class v0, Lcom/xiaomi/camera/isp/IspInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "camera.debug.enable"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/camera/isp/IspInterface;->DEBUG:Z

    .line 240
    :try_start_16
    const-string v0, "camera_ispinterface_jni.xiaomi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 243
    goto :goto_24

    .line 241
    :catch_1c
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    const-string v2, "load library libcamera_ispinterface_jni.xiaomi.so failed"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_24
    invoke-static {}, Lcom/xiaomi/camera/isp/IspInterface;->nativeClassInit()V

    .line 245
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/ArrayList;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;ILandroid/os/Parcelable;Landroid/os/Handler;)V
    .registers 24
    .param p2, "picOutputSurface"    # Landroid/view/Surface;
    .param p3, "yuvOutputSurface"    # Landroid/view/Surface;
    .param p4, "tuningOutputSurface"    # Landroid/view/Surface;
    .param p5, "maxJpegSize"    # I
    .param p6, "settings"    # Landroid/os/Parcelable;
    .param p7, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/camera/isp/IspStream;",
            ">;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "I",
            "Landroid/os/Parcelable;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 73
    .local p1, "inputStreamList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/camera/isp/IspStream;>;"
    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v8, Lcom/xiaomi/camera/isp/IspInterface;->mContextLock:Ljava/lang/Object;

    .line 74
    sget-object v9, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ctor: E "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    move-object/from16 v10, p1

    iput-object v10, v8, Lcom/xiaomi/camera/isp/IspInterface;->mInputStreamList:Ljava/util/ArrayList;

    .line 76
    move-object/from16 v11, p2

    iput-object v11, v8, Lcom/xiaomi/camera/isp/IspInterface;->mPicOutputSurface:Landroid/view/Surface;

    .line 77
    move-object/from16 v12, p3

    iput-object v12, v8, Lcom/xiaomi/camera/isp/IspInterface;->mYuvOutputSurface:Landroid/view/Surface;

    .line 78
    move-object/from16 v13, p4

    iput-object v13, v8, Lcom/xiaomi/camera/isp/IspInterface;->mTuningOutputSurface:Landroid/view/Surface;

    .line 79
    move-object/from16 v14, p6

    iput-object v14, v8, Lcom/xiaomi/camera/isp/IspInterface;->mSettings:Landroid/os/Parcelable;

    .line 80
    move-object/from16 v15, p7

    iput-object v15, v8, Lcom/xiaomi/camera/isp/IspInterface;->mEventHandler:Landroid/os/Handler;

    .line 81
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, v8, Lcom/xiaomi/camera/isp/IspInterface;->mInputStreamList:Ljava/util/ArrayList;

    iget-object v3, v8, Lcom/xiaomi/camera/isp/IspInterface;->mPicOutputSurface:Landroid/view/Surface;

    iget-object v4, v8, Lcom/xiaomi/camera/isp/IspInterface;->mYuvOutputSurface:Landroid/view/Surface;

    iget-object v5, v8, Lcom/xiaomi/camera/isp/IspInterface;->mTuningOutputSurface:Landroid/view/Surface;

    iget-object v7, v8, Lcom/xiaomi/camera/isp/IspInterface;->mSettings:Landroid/os/Parcelable;

    move-object/from16 v0, p0

    move/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/camera/isp/IspInterface;->nativeCreate(Ljava/lang/Object;Ljava/util/ArrayList;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;ILandroid/os/Parcelable;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ctor: X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public static blacklist create(Ljava/util/ArrayList;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;ILandroid/os/Parcelable;Landroid/os/Handler;)Lcom/xiaomi/camera/isp/IspInterface;
    .registers 16
    .param p1, "picOutputSurface"    # Landroid/view/Surface;
    .param p2, "yuvOutputSurface"    # Landroid/view/Surface;
    .param p3, "tuningOutputSurface"    # Landroid/view/Surface;
    .param p4, "maxJpegSize"    # I
    .param p5, "settings"    # Landroid/os/Parcelable;
    .param p6, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/camera/isp/IspStream;",
            ">;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "I",
            "Landroid/os/Parcelable;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/xiaomi/camera/isp/IspInterface;"
        }
    .end annotation

    .line 59
    .local p0, "inputStreamList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/camera/isp/IspStream;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_14

    .line 63
    new-instance v0, Lcom/xiaomi/camera/isp/IspInterface;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/xiaomi/camera/isp/IspInterface;-><init>(Ljava/util/ArrayList;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;ILandroid/os/Parcelable;Landroid/os/Handler;)V

    return-object v0

    .line 60
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The inputStreamList is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getVersionCode()I
    .registers 1

    .line 163
    invoke-static {}, Lcom/xiaomi/camera/isp/IspInterface;->nativeGetVersionCode()I

    move-result v0

    return v0
.end method

.method private static native blacklist nativeClassInit()V
.end method

.method private native blacklist nativeCreate(Ljava/lang/Object;Ljava/util/ArrayList;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;ILandroid/os/Parcelable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/camera/isp/IspStream;",
            ">;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "I",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation
.end method

.method private native blacklist nativeDestroy()V
.end method

.method private static native blacklist nativeGetVersionCode()I
.end method

.method private native blacklist nativeQueryFeatureSetting(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;)Lcom/xiaomi/camera/imagecodec/FeatureSetting;
.end method

.method private native blacklist nativeRawToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V
.end method

.method private native blacklist nativeRawToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V
.end method

.method private native blacklist nativeSetFlipFlag(I)V
.end method

.method private native blacklist nativeYuvToHeif(Lcom/xiaomi/camera/isp/IspRequest;)V
.end method

.method private native blacklist nativeYuvToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V
.end method

.method private native blacklist nativeYuvToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V
.end method

.method private static blacklist postEventFromNative(Ljava/lang/Object;I)V
    .registers 7
    .param p0, "selfRef"    # Ljava/lang/Object;
    .param p1, "msgType"    # I

    .line 174
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 175
    .local v0, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/xiaomi/camera/isp/IspInterface;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/isp/IspInterface;

    .line 176
    .local v1, "client":Lcom/xiaomi/camera/isp/IspInterface;
    if-nez v1, :cond_24

    .line 177
    sget-object v2, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postEventFromNative: skip message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void

    .line 181
    :cond_24
    iget-object v2, v1, Lcom/xiaomi/camera/isp/IspInterface;->mEventHandler:Landroid/os/Handler;

    if-eqz v2, :cond_45

    .line 182
    sget-object v2, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postEventFromNative: send message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v2, v1, Lcom/xiaomi/camera/isp/IspInterface;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 185
    :cond_45
    return-void
.end method

.method private static blacklist postEventFromNativeWithAttachment(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 8
    .param p0, "selfRef"    # Ljava/lang/Object;
    .param p1, "msgType"    # I
    .param p2, "attachment"    # Ljava/lang/Object;

    .line 189
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 190
    .local v0, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/xiaomi/camera/isp/IspInterface;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/isp/IspInterface;

    .line 191
    .local v1, "client":Lcom/xiaomi/camera/isp/IspInterface;
    if-nez v1, :cond_24

    .line 192
    sget-object v2, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postEventFromNativeWithAttachment: skip message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    .line 196
    :cond_24
    iget-object v2, v1, Lcom/xiaomi/camera/isp/IspInterface;->mEventHandler:Landroid/os/Handler;

    if-eqz v2, :cond_4d

    .line 197
    sget-object v2, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postEventFromNativeWithAttachment: send message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 199
    .local v2, "msg":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->what:I

    .line 200
    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 201
    iget-object v3, v1, Lcom/xiaomi/camera/isp/IspInterface;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 203
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4d
    return-void
.end method


# virtual methods
.method public blacklist getInputStreamId(III)J
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 87
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mInputStreamList:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/isp/IspStream;

    .line 89
    .local v1, "stream":Lcom/xiaomi/camera/isp/IspStream;
    iget v2, v1, Lcom/xiaomi/camera/isp/IspStream;->width:I

    if-ne p1, v2, :cond_23

    iget v2, v1, Lcom/xiaomi/camera/isp/IspStream;->height:I

    if-ne p2, v2, :cond_23

    iget v2, v1, Lcom/xiaomi/camera/isp/IspStream;->format:I

    if-ne p3, v2, :cond_23

    .line 90
    iget-wide v2, v1, Lcom/xiaomi/camera/isp/IspStream;->streamId:J

    return-wide v2

    .line 92
    .end local v1    # "stream":Lcom/xiaomi/camera/isp/IspStream;
    :cond_23
    goto :goto_8

    .line 95
    :cond_24
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mInputStreamList:Ljava/util/ArrayList;

    if-nez v0, :cond_3a

    .line 96
    const-string v0, "getInputStreamId: input stream has not been initialized"

    .line 97
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-boolean v1, Lcom/xiaomi/camera/isp/IspInterface;->DEBUG:Z

    if-nez v1, :cond_34

    .line 101
    .end local v0    # "msg":Ljava/lang/String;
    goto :goto_63

    .line 99
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_34
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3a
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 102
    const-string v2, "getInputStreamId: no stream found with [width=%d height=%d format=%d]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0    # "msg":Ljava/lang/String;
    sget-object v1, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-boolean v1, Lcom/xiaomi/camera/isp/IspInterface;->DEBUG:Z

    if-nez v1, :cond_66

    .line 110
    .end local v0    # "msg":Ljava/lang/String;
    :goto_63
    const-wide/16 v0, 0x0

    return-wide v0

    .line 107
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_66
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist queryFeatureSetting(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;)Lcom/xiaomi/camera/imagecodec/FeatureSetting;
    .registers 3
    .param p1, "param"    # Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    .line 132
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeQueryFeatureSetting(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;)Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    move-result-object v0

    return-object v0
.end method

.method public blacklist rawToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V
    .registers 2
    .param p1, "ispRequest"    # Lcom/xiaomi/camera/isp/IspRequest;

    .line 118
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeRawToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V

    .line 119
    return-void
.end method

.method public blacklist rawToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V
    .registers 2
    .param p1, "ispRequest"    # Lcom/xiaomi/camera/isp/IspRequest;

    .line 126
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeRawToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V

    .line 127
    return-void
.end method

.method public blacklist release()V
    .registers 4

    .line 142
    sget-object v0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: E "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterface;->mContextLock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_1f
    invoke-direct {p0}, Lcom/xiaomi/camera/isp/IspInterface;->nativeDestroy()V

    .line 145
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_3e

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 145
    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public blacklist setFlip(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 136
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    if-eqz p1, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    :try_start_8
    invoke-direct {p0, v1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeSetFlipFlag(I)V

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist yuvToHeif(Lcom/xiaomi/camera/isp/IspRequest;)V
    .registers 2
    .param p1, "ispRequest"    # Lcom/xiaomi/camera/isp/IspRequest;

    .line 129
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeYuvToHeif(Lcom/xiaomi/camera/isp/IspRequest;)V

    return-void
.end method

.method public blacklist yuvToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V
    .registers 2
    .param p1, "ispRequest"    # Lcom/xiaomi/camera/isp/IspRequest;

    .line 114
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeYuvToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V

    .line 115
    return-void
.end method

.method public blacklist yuvToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V
    .registers 2
    .param p1, "ispRequest"    # Lcom/xiaomi/camera/isp/IspRequest;

    .line 122
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeYuvToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V

    .line 123
    return-void
.end method
