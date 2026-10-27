.class public interface abstract Lcom/android/server/biometrics/sensors/face/FaceServiceStub;
.super Ljava/lang/Object;
.source "FaceServiceStub.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FaceService"


# direct methods
.method public static getInstance()Lcom/android/server/biometrics/sensors/face/FaceServiceStub;
    .registers 1

    .line 12
    const-class v0, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;

    return-object v0
.end method


# virtual methods
.method public init()V
    .registers 3

    .line 16
    const-string v0, "FaceService"

    const-string/jumbo v1, "init FaceServiceStub."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method

.method public abstract setDetectArea(IIII)V
.end method

.method public abstract setEnrollArea(IIII)V
.end method

.method public abstract setEnrollStep(I)V
.end method

.method public abstract setEnrollSurface(Landroid/view/Surface;)V
.end method

.method public abstract setPreviewNotifyCallback()Z
.end method

.method public abstract stopGetFrame()V
.end method
