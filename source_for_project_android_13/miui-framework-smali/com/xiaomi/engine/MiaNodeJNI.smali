.class public Lcom/xiaomi/engine/MiaNodeJNI;
.super Ljava/lang/Object;
.source "MiaNodeJNI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/engine/MiaNodeJNI$InstanceHolder;
    }
.end annotation


# static fields
.field private static final blacklist LIB_NAME:Ljava/lang/String; = "camera_mianode_jni.xiaomi"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist mObjLock:Ljava/lang/Object;

.field private static blacklist sInitialized:Z

.field private static blacklist sType:I


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdeInitialize(Lcom/xiaomi/engine/MiaNodeJNI;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/engine/MiaNodeJNI;->deInitialize(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsType()I
    .registers 1

    sget v0, Lcom/xiaomi/engine/MiaNodeJNI;->sType:I

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/xiaomi/engine/MiaNodeJNI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/engine/MiaNodeJNI;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/engine/MiaNodeJNI;->sType:I

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/engine/MiaNodeJNI;->mObjLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MiaNodeLifeCycle"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/engine/MiaNodeJNI;->mHandlerThread:Landroid/os/HandlerThread;

    .line 40
    :try_start_c
    sget-object v0, Lcom/xiaomi/engine/MiaNodeJNI;->TAG:Ljava/lang/String;

    const-string v1, "start loading camera_mianode_jni.xiaomi"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v1, "camera_mianode_jni.xiaomi"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    const-string v1, "static initializer: loadLibrary camera_mianode_jni.xiaomi"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_c .. :try_end_1d} :catch_1e

    .line 45
    goto :goto_3b

    .line 43
    :catch_1e
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/xiaomi/engine/MiaNodeJNI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not load library:camera_mianode_jni.xiaomi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/xiaomi/engine/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_3b
    iget-object v0, p0, Lcom/xiaomi/engine/MiaNodeJNI;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/engine/MiaNodeJNI;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/engine/MiaNodeJNI;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/xiaomi/engine/MiaNodeJNI-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/engine/MiaNodeJNI;-><init>()V

    return-void
.end method

.method private static native blacklist deInit(I)I
.end method

.method private blacklist deInitialize(I)V
    .registers 6
    .param p1, "nodeType"    # I

    .line 79
    sget-object v0, Lcom/xiaomi/engine/MiaNodeJNI;->mObjLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    sget-boolean v1, Lcom/xiaomi/engine/MiaNodeJNI;->sInitialized:Z

    if-eqz v1, :cond_2b

    .line 81
    invoke-static {p1}, Lcom/xiaomi/engine/MiaNodeJNI;->deInit(I)I

    .line 82
    sget-object v1, Lcom/xiaomi/engine/MiaNodeJNI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiaNode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been deInitialized"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaomi/engine/MiaNodeJNI;->sInitialized:Z

    .line 85
    :cond_2b
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public static blacklist getInstance()Lcom/xiaomi/engine/MiaNodeJNI;
    .registers 1

    .line 35
    sget-object v0, Lcom/xiaomi/engine/MiaNodeJNI$InstanceHolder;->INSTANCE:Lcom/xiaomi/engine/MiaNodeJNI;

    return-object v0
.end method

.method private static native blacklist init(I)I
.end method

.method private blacklist initialize(I)V
    .registers 9
    .param p1, "nodeType"    # I

    .line 61
    sget-object v0, Lcom/xiaomi/engine/MiaNodeJNI;->mObjLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 63
    .local v1, "startTime":J
    sget-boolean v3, Lcom/xiaomi/engine/MiaNodeJNI;->sInitialized:Z

    if-eqz v3, :cond_14

    sget v3, Lcom/xiaomi/engine/MiaNodeJNI;->sType:I

    if-eq v3, p1, :cond_14

    if-eqz v3, :cond_14

    .line 64
    invoke-direct {p0, v3}, Lcom/xiaomi/engine/MiaNodeJNI;->deInitialize(I)V

    .line 67
    :cond_14
    sget-boolean v3, Lcom/xiaomi/engine/MiaNodeJNI;->sInitialized:Z

    if-nez v3, :cond_47

    .line 68
    sput p1, Lcom/xiaomi/engine/MiaNodeJNI;->sType:I

    .line 69
    invoke-static {p1}, Lcom/xiaomi/engine/MiaNodeJNI;->init(I)I

    .line 71
    sget-object v3, Lcom/xiaomi/engine/MiaNodeJNI;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiaNode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has been initialized, cost :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-static {v3, v4}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v3, 0x1

    sput-boolean v3, Lcom/xiaomi/engine/MiaNodeJNI;->sInitialized:Z

    .line 75
    .end local v1    # "startTime":J
    :cond_47
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method private static native blacklist processRequest(Ljava/util/List;Landroid/media/Image;IZ)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/engine/FrameData;",
            ">;",
            "Landroid/media/Image;",
            "IZ)I"
        }
    .end annotation
.end method

.method private blacklist tryToCloseNode()V
    .registers 5

    .line 51
    iget-object v0, p0, Lcom/xiaomi/engine/MiaNodeJNI;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/xiaomi/engine/MiaNodeJNI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/engine/MiaNodeJNI$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/engine/MiaNodeJNI$1;-><init>(Lcom/xiaomi/engine/MiaNodeJNI;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    return-void
.end method


# virtual methods
.method public blacklist process(Ljava/util/List;Landroid/media/Image;IZ)I
    .registers 13
    .param p2, "resultImage"    # Landroid/media/Image;
    .param p3, "nodeType"    # I
    .param p4, "dualCamera"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/engine/FrameData;",
            ">;",
            "Landroid/media/Image;",
            "IZ)I"
        }
    .end annotation

    .line 101
    .local p1, "frameDataList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/engine/FrameData;>;"
    sget-object v0, Lcom/xiaomi/engine/MiaNodeJNI;->mObjLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    sget-boolean v1, Lcom/xiaomi/engine/MiaNodeJNI;->sInitialized:Z

    if-nez v1, :cond_a

    .line 103
    invoke-direct {p0, p3}, Lcom/xiaomi/engine/MiaNodeJNI;->initialize(I)V

    .line 105
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 106
    .local v1, "startTime":J
    sget-object v3, Lcom/xiaomi/engine/MiaNodeJNI;->TAG:Ljava/lang/String;

    const-string v4, "processRequest: start"

    invoke-static {v3, v4}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {p1, p2, p3, p4}, Lcom/xiaomi/engine/MiaNodeJNI;->processRequest(Ljava/util/List;Landroid/media/Image;IZ)I

    move-result v4

    .line 109
    .local v4, "baseIndex":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processRequest: end, cost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/xiaomi/engine/MiaNodeJNI;->tryToCloseNode()V

    .line 112
    monitor-exit v0

    return v4

    .line 113
    .end local v1    # "startTime":J
    .end local v4    # "baseIndex":I
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method
