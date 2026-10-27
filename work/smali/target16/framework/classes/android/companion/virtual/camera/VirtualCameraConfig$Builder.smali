.class public final Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualCameraConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/camera/VirtualCameraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

.field private blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private blacklist mLensFacing:I

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mPerFrameCameraMetadataEnabled:Z

.field private blacklist mSensorOrientation:I

.field private final blacklist mStreamConfigurations:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/companion/virtual/camera/VirtualCameraStreamConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mStreamConfigurations:Landroid/util/ArraySet;

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mSensorOrientation:I

    .line 307
    const/4 v1, -0x1

    iput v1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mLensFacing:I

    .line 308
    iput-boolean v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mPerFrameCameraMetadataEnabled:Z

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 317
    const-string v0, "Name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mName:Ljava/lang/String;

    .line 318
    return-void
.end method


# virtual methods
.method public whitelist addStreamConfig(IIII)Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;
    .registers 7

    .line 340
    const-string v0, ", must be greater than 0"

    if-lez p1, :cond_5b

    .line 345
    if-lez p2, :cond_3e

    .line 350
    invoke-static {p3}, Landroid/companion/virtual/camera/VirtualCameraConfig;->-$$Nest$smisFormatSupported(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 354
    if-lez p4, :cond_1d

    const/16 v0, 0x3c

    if-gt p4, v0, :cond_1d

    .line 360
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mStreamConfigurations:Landroid/util/ArraySet;

    new-instance v1, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 362
    return-object p0

    .line 356
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid maximumFramesPerSecond, must be greater than 0 and less than 60"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 351
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid format passed for stream config: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 346
    :cond_3e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid height passed for stream config: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 341
    :cond_5b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid width passed for stream config: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist build()Landroid/companion/virtual/camera/VirtualCameraConfig;
    .registers 11

    .line 498
    new-instance v0, Landroid/companion/virtual/camera/VirtualCameraConfig;

    iget-object v1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mStreamConfigurations:Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    iget v5, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mSensorOrientation:I

    iget v6, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mLensFacing:I

    iget-boolean v7, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mPerFrameCameraMetadataEnabled:Z

    iget-object v8, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/companion/virtual/camera/VirtualCameraConfig;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/concurrent/Executor;Landroid/companion/virtual/camera/VirtualCameraCallback;IIZLandroid/hardware/camera2/CameraCharacteristics;Landroid/companion/virtual/camera/VirtualCameraConfig-IA;)V

    return-object v0
.end method

.method public whitelist setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;
    .registers 3

    .line 464
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->virtualCameraMetadata()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 467
    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 468
    return-object p0

    .line 465
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "virtual_camera_metadata not enabled!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setLensFacing(I)Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;
    .registers 6

    .line 403
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    if-ne p1, v1, :cond_7

    goto :goto_9

    :cond_7
    move v2, v0

    goto :goto_a

    :cond_9
    :goto_9
    move v2, v1

    .line 405
    :goto_a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->externalVirtualCameras()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 406
    const/4 v3, 0x2

    if-ne p1, v3, :cond_14

    move v0, v1

    :cond_14
    or-int/2addr v2, v0

    .line 408
    :cond_15
    if-eqz v2, :cond_1a

    .line 411
    iput p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mLensFacing:I

    .line 412
    return-object p0

    .line 409
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported lens facing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPerFrameCameraMetadataEnabled(Z)Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;
    .registers 3

    .line 435
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->virtualCameraMetadata()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 438
    iput-boolean p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mPerFrameCameraMetadataEnabled:Z

    .line 439
    return-object p0

    .line 436
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "virtual_camera_metadata not enabled!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setSensorOrientation(I)Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;
    .registers 5

    .line 377
    if-eqz p1, :cond_28

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_28

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_28

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_f

    goto :goto_28

    .line 381
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sensor orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_28
    :goto_28
    iput p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mSensorOrientation:I

    .line 385
    return-object p0
.end method

.method public whitelist setVirtualCameraCallback(Ljava/util/concurrent/Executor;Landroid/companion/virtual/camera/VirtualCameraCallback;)Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;
    .registers 3

    .line 485
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 486
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/camera/VirtualCameraCallback;

    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    .line 487
    return-object p0
.end method
