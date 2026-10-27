.class public final Landroid/hardware/camera2/CaptureResult$Builder;
.super Ljava/lang/Object;
.source "CaptureResult.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CaptureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mNativeMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureResult$Builder;->mNativeMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 455
    return-void
.end method

.method public constructor whitelist <init>(Landroid/hardware/camera2/CaptureResult;)V
    .registers 3

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureResult$Builder;->mNativeMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 463
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/camera2/CaptureResult;
    .registers 4

    .line 488
    new-instance v0, Landroid/hardware/camera2/CaptureResult;

    iget-object v1, p0, Landroid/hardware/camera2/CaptureResult$Builder;->mNativeMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;I)V

    return-object v0
.end method

.method public whitelist set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;TT;)",
            "Landroid/hardware/camera2/CaptureResult$Builder;"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Landroid/hardware/camera2/CaptureResult$Builder;->mNativeMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 478
    return-object p0
.end method
