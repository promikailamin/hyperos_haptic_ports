.class public interface abstract Lcom/android/server/camera/CameraActivitySceneStub;
.super Ljava/lang/Object;
.source "CameraActivitySceneStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/camera/CameraActivitySceneStub;
    .registers 1

    .line 13
    const-class v0, Lcom/android/server/camera/CameraActivitySceneStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/camera/CameraActivitySceneStub;

    return-object v0
.end method


# virtual methods
.method public abstract initSystemBooted()V
.end method
