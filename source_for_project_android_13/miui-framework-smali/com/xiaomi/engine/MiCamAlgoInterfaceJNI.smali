.class public Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;
.super Ljava/lang/Object;
.source "MiCamAlgoInterfaceJNI.java"


# static fields
.field private static final blacklist LIB_NAME:Ljava/lang/String; = "camera_algoup_jni.xiaomi"

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 21
    const-class v0, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->TAG:Ljava/lang/String;

    .line 30
    :try_start_8
    const-string v1, "start loading camera_algoup_jni.xiaomi"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string v1, "camera_algoup_jni.xiaomi"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    const-string v1, "static initializer: loadLibrary camera_algoup_jni.xiaomi"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_17} :catch_18

    .line 35
    goto :goto_35

    .line 33
    :catch_18
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not load library:camera_algoup_jni.xiaomi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/xiaomi/engine/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_35
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method static native blacklist createSessionByOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;Ljava/util/List;Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/engine/BufferFormat;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;",
            ")J"
        }
    .end annotation
.end method

.method static native blacklist createSessionWithSurfaces(Lcom/xiaomi/engine/BufferFormat;Ljava/util/List;Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/engine/BufferFormat;",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;",
            ")J"
        }
    .end annotation
.end method

.method static native blacklist deInit()I
.end method

.method static native blacklist destroySession(J)I
.end method

.method static native blacklist flush(J)I
.end method

.method public static native blacklist getVersionCode()I
.end method

.method static native blacklist init(Ljava/lang/String;)I
.end method

.method static native blacklist preProcess(JLcom/xiaomi/engine/PreProcessData;)I
.end method

.method static native blacklist processFrame(JLcom/xiaomi/engine/FrameData;Lcom/xiaomi/engine/TaskSession$FrameCallback;)I
.end method

.method static native blacklist processFrameWithSync(JLjava/util/List;Landroid/media/Image;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/xiaomi/engine/FrameData;",
            ">;",
            "Landroid/media/Image;",
            "I)I"
        }
    .end annotation
.end method

.method static native blacklist quickFinish(JJZ)I
.end method

.method static native blacklist setMiViInfo(Ljava/lang/String;)I
.end method
