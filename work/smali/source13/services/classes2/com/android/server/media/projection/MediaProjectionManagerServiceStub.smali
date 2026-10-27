.class public interface abstract Lcom/android/server/media/projection/MediaProjectionManagerServiceStub;
.super Ljava/lang/Object;
.source "MediaProjectionManagerServiceStub.java"


# direct methods
.method public static get()Lcom/android/server/media/projection/MediaProjectionManagerServiceStub;
    .registers 1

    .line 12
    const-class v0, Lcom/android/server/media/projection/MediaProjectionManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/projection/MediaProjectionManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract addMediaProjection(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
.end method

.method public abstract getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
.end method

.method public abstract handleForegroundServicesChanged(III)V
.end method

.method public isSupportMutilMediaProjection()Z
    .registers 2

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isValidMediaProjection(Landroid/os/IBinder;)Z
.end method

.method public abstract removeMediaProjection(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
.end method

.method public abstract stopActiveProjection()V
.end method

.method public abstract stopProjections()V
.end method
