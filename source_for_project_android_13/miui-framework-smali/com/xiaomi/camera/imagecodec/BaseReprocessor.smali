.class public abstract Lcom/xiaomi/camera/imagecodec/BaseReprocessor;
.super Ljava/lang/Object;
.source "BaseReprocessor.java"

# interfaces
.implements Lcom/xiaomi/camera/imagecodec/Reprocessor;


# instance fields
.field protected blacklist mIsMFNRSupported:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist customize(Ljava/util/HashMap;)V
    .registers 4
    .param p1, "settings"    # Ljava/util/HashMap;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "customize"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public blacklist getVersionCode()I
    .registers 2

    .line 53
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist isMFNRSupported()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->mIsMFNRSupported:Z

    return v0
.end method

.method public blacklist queryFeatureSetting(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)Lcom/xiaomi/camera/imagecodec/FeatureSetting;
    .registers 7
    .param p1, "io"    # Lcom/xiaomi/camera/isp/IspInterfaceIO;
    .param p2, "settings"    # Landroid/os/Parcelable;
    .param p3, "param"    # Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;
    .param p4, "doQuery"    # Z

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "queryFeatureSetting"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist queueImageToPool(Landroid/media/Image;)Landroid/media/Image;
    .registers 9
    .param p1, "inputImage"    # Landroid/media/Image;

    .line 33
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    .line 34
    .local v0, "timestamp":J
    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v2

    .line 35
    .local v2, "imageFormat":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->queueImage(Landroid/media/Image;)V

    .line 36
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImage(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;J)Landroid/media/Image;

    move-result-object v3

    .line 37
    .local v3, "image":Landroid/media/Image;
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->holdImage(Landroid/media/Image;)V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queueImageToPool: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-object v3
.end method

.method public blacklist setVirtualCameraIds(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "backCameraId"    # Ljava/lang/String;
    .param p2, "frontCameraId"    # Ljava/lang/String;

    .line 21
    return-void
.end method
