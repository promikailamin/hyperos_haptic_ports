.class public final Landroid/hardware/camera2/extension/CameraConfiguration;
.super Ljava/lang/Object;
.source "CameraConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private blacklist mPostViewOutputSurface:Landroid/hardware/camera2/extension/CameraOutputSurface;

.field private blacklist mPreviewOutputSurface:Landroid/hardware/camera2/extension/CameraOutputSurface;

.field private blacklist mStillCaptureOutputSurface:Landroid/hardware/camera2/extension/CameraOutputSurface;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/extension/CameraOutputSurface;Landroid/hardware/camera2/extension/CameraOutputSurface;Landroid/hardware/camera2/extension/CameraOutputSurface;)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/hardware/camera2/extension/CameraConfiguration;->mPreviewOutputSurface:Landroid/hardware/camera2/extension/CameraOutputSurface;

    .line 45
    iput-object p2, p0, Landroid/hardware/camera2/extension/CameraConfiguration;->mStillCaptureOutputSurface:Landroid/hardware/camera2/extension/CameraOutputSurface;

    .line 46
    iput-object p3, p0, Landroid/hardware/camera2/extension/CameraConfiguration;->mPostViewOutputSurface:Landroid/hardware/camera2/extension/CameraOutputSurface;

    .line 47
    return-void
.end method


# virtual methods
.method public blacklist getPostViewOutputSurface()Landroid/hardware/camera2/extension/CameraOutputSurface;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraConfiguration;->mPostViewOutputSurface:Landroid/hardware/camera2/extension/CameraOutputSurface;

    return-object v0
.end method

.method public blacklist getPreviewOutputSurface()Landroid/hardware/camera2/extension/CameraOutputSurface;
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraConfiguration;->mPreviewOutputSurface:Landroid/hardware/camera2/extension/CameraOutputSurface;

    return-object v0
.end method

.method public blacklist getStillCaptureOutputSurface()Landroid/hardware/camera2/extension/CameraOutputSurface;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraConfiguration;->mStillCaptureOutputSurface:Landroid/hardware/camera2/extension/CameraOutputSurface;

    return-object v0
.end method
