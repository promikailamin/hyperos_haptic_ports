.class public final Landroid/companion/virtual/camera/VirtualCameraConfig;
.super Ljava/lang/Object;
.source "VirtualCameraConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;,
        Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;,
        Landroid/companion/virtual/camera/VirtualCameraConfig$SensorOrientation;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/camera/VirtualCameraConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT_VIRTUAL_CAMERA_CHARACTERISTICS:Landroid/hardware/camera2/CameraCharacteristics;

.field private static final blacklist LENS_FACING_UNKNOWN:I = -0x1

.field public static final whitelist SENSOR_ORIENTATION_0:I = 0x0

.field public static final whitelist SENSOR_ORIENTATION_180:I = 0xb4

.field public static final whitelist SENSOR_ORIENTATION_270:I = 0x10e

.field public static final whitelist SENSOR_ORIENTATION_90:I = 0x5a


# instance fields
.field private final blacklist mCallback:Landroid/companion/virtual/camera/IVirtualCameraCallback;

.field private final blacklist mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final blacklist mLensFacing:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPerFrameCameraMetadataEnabled:Z

.field private final blacklist mSensorOrientation:I

.field private final blacklist mStreamConfigurations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/companion/virtual/camera/VirtualCameraStreamConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisFormatSupported(I)Z
    .registers 1

    invoke-static {p0}, Landroid/companion/virtual/camera/VirtualCameraConfig;->isFormatSupported(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 115
    invoke-static {}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getDefaultVirtualCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sput-object v0, Landroid/companion/virtual/camera/VirtualCameraConfig;->DEFAULT_VIRTUAL_CAMERA_CHARACTERISTICS:Landroid/hardware/camera2/CameraCharacteristics;

    .line 585
    new-instance v0, Landroid/companion/virtual/camera/VirtualCameraConfig$1;

    invoke-direct {v0}, Landroid/companion/virtual/camera/VirtualCameraConfig$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/camera/VirtualCameraConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mName:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mCallback:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    .line 169
    const-class v0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    .line 172
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    .line 171
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    .line 170
    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mStreamConfigurations:Ljava/util/Set;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mSensorOrientation:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mLensFacing:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mPerFrameCameraMetadataEnabled:Z

    .line 177
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 178
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 179
    if-eqz p1, :cond_4b

    .line 180
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v0, p1}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    goto :goto_4e

    .line 182
    :cond_4b
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 184
    :goto_4e
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/camera/VirtualCameraConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/concurrent/Executor;Landroid/companion/virtual/camera/VirtualCameraCallback;IIZLandroid/hardware/camera2/CameraCharacteristics;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/companion/virtual/camera/VirtualCameraStreamConfig;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/companion/virtual/camera/VirtualCameraCallback;",
            "IIZ",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")V"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const-string v0, "Missing name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mName:Ljava/lang/String;

    .line 136
    const/4 p1, -0x1

    if-eqz p8, :cond_2c

    .line 137
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p8, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 139
    if-eqz v0, :cond_2b

    if-eq p6, p1, :cond_2b

    .line 140
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p6, :cond_23

    goto :goto_2b

    .line 141
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Different values are set for lensFacing and CameraCharacteristics.LENS_FACING"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_2b
    :goto_2b
    goto :goto_2e

    .line 145
    :cond_2c
    if-eq p6, p1, :cond_6e

    .line 149
    :goto_2e
    iput p6, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mLensFacing:I

    .line 150
    nop

    .line 151
    const-string p1, "Missing stream configurations"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mStreamConfigurations:Ljava/util/Set;

    .line 152
    iget-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mStreamConfigurations:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_66

    .line 156
    new-instance p1, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;

    .line 158
    const-string p2, "Missing callback"

    invoke-static {p4, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/companion/virtual/camera/VirtualCameraCallback;

    .line 159
    const-string p4, "Missing callback executor"

    invoke-static {p3, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/Executor;

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p7, p4}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;-><init>(Landroid/companion/virtual/camera/VirtualCameraCallback;Ljava/util/concurrent/Executor;ZLandroid/companion/virtual/camera/VirtualCameraConfig-IA;)V

    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mCallback:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    .line 161
    iput p5, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mSensorOrientation:I

    .line 162
    iput-boolean p7, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mPerFrameCameraMetadataEnabled:Z

    .line 163
    iput-object p8, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 164
    return-void

    .line 153
    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one stream configuration is needed to create a virtual camera."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_6e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Lens facing must be set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/concurrent/Executor;Landroid/companion/virtual/camera/VirtualCameraCallback;IIZLandroid/hardware/camera2/CameraCharacteristics;Landroid/companion/virtual/camera/VirtualCameraConfig-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/companion/virtual/camera/VirtualCameraConfig;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/concurrent/Executor;Landroid/companion/virtual/camera/VirtualCameraCallback;IIZLandroid/hardware/camera2/CameraCharacteristics;)V

    return-void
.end method

.method private static blacklist getDefaultVirtualCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .registers 26

    .line 608
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->virtualCameraMetadata()Z

    move-result v0

    if-nez v0, :cond_11

    .line 609
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics;

    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-object v0

    .line 612
    :cond_11
    const/16 v0, 0x26

    new-array v0, v0, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_READOUT_TIMESTAMP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v11, 0x9

    aput-object v1, v0, v11

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v12, 0xa

    aput-object v1, v0, v12

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_USE_CASES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v13, 0xb

    aput-object v1, v0, v13

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_AVAILABLE_TEST_PATTERN_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v14, 0xc

    aput-object v1, v0, v14

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v15, 0xd

    aput-object v1, v0, v15

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v16, 0xe

    aput-object v1, v0, v16

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v17, 0xf

    aput-object v1, v0, v17

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v18, 0x10

    aput-object v1, v0, v18

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v19, 0x11

    aput-object v1, v0, v19

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v20, 0x12

    aput-object v1, v0, v20

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v21, 0x13

    aput-object v1, v0, v21

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v22, 0x14

    aput-object v1, v0, v22

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v23, 0x15

    aput-object v1, v0, v23

    const/16 v1, 0x16

    sget-object v24, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v24, v0, v1

    const/16 v1, 0x17

    sget-object v24, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v24, v0, v1

    const/16 v1, 0x18

    sget-object v24, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v24, v0, v1

    const/16 v1, 0x19

    sget-object v24, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v24, v0, v1

    const/16 v1, 0x1a

    sget-object v24, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v24, v0, v1

    const/16 v1, 0x1b

    sget-object v24, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v24, v0, v1

    const/16 v1, 0x1c

    sget-object v24, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_CROPPING_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v24, v0, v1

    const/16 v1, 0x1d

    sget-object v24, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v24, v0, v1

    const/16 v1, 0x1e

    sget-object v24, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v24, v0, v1

    const/16 v1, 0x1f

    sget-object v24, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_MAX_FRAME_DURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v24, v0, v1

    const/16 v1, 0x20

    sget-object v24, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v24, v0, v1

    const/16 v1, 0x21

    sget-object v24, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v24, v0, v1

    const/16 v1, 0x22

    sget-object v24, Landroid/hardware/camera2/CameraCharacteristics;->SYNC_MAX_LATENCY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v24, v0, v1

    const/16 v1, 0x23

    sget-object v24, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v24, v0, v1

    const/16 v1, 0x24

    sget-object v24, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v24, v0, v1

    const/16 v1, 0x25

    sget-object v24, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v24, v0, v1

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 651
    const/16 v1, 0x18

    new-array v1, v1, [Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v2

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v3

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v4

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v5

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v6

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v7

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v8

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v9

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v10

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v11

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v12

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v13

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v14

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v15

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v16

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v17

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v18

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v19

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v20

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v21

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v22

    sget-object v24, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v24, v1, v23

    const/16 v24, 0x16

    sget-object v25, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v25, v1, v24

    const/16 v24, 0x17

    sget-object v25, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v25, v1, v24

    invoke-static {v1}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 677
    move/from16 v24, v4

    const/16 v4, 0x21

    new-array v4, v4, [Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v25, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v25, v4, v2

    sget-object v25, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v25, v4, v3

    sget-object v25, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v25, v4, v24

    sget-object v25, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v25, v4, v5

    sget-object v25, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v25, v4, v6

    sget-object v25, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v25, v4, v7

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v7, v4, v8

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v7, v4, v9

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v7, v4, v10

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v7, v4, v11

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v7, v4, v12

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v7, v4, v13

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v7, v4, v14

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v7, v4, v15

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v7, v4, v16

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v7, v4, v17

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v7, v4, v18

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v7, v4, v19

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v7, v4, v20

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v7, v4, v21

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v7, v4, v22

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v7, v4, v23

    const/16 v7, 0x16

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v4, v7

    const/16 v7, 0x17

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v4, v7

    const/16 v7, 0x18

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v4, v7

    const/16 v7, 0x19

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v4, v7

    const/16 v7, 0x1a

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v4, v7

    const/16 v7, 0x1b

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v4, v7

    const/16 v7, 0x1c

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->REQUEST_PIPELINE_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v4, v7

    const/16 v7, 0x1d

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v4, v7

    const/16 v7, 0x1e

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->STATISTICS_HOT_PIXEL_MAP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v4, v7

    const/16 v7, 0x1f

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v4, v7

    const/16 v7, 0x20

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v9, v4, v7

    invoke-static {v4}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 712
    nop

    .line 713
    nop

    .line 714
    nop

    .line 715
    nop

    .line 716
    nop

    .line 717
    const-wide/32 v9, 0x3b9aca00

    const/16 v7, 0x1e

    int-to-long v11, v7

    div-long v17, v9, v11

    .line 718
    nop

    .line 720
    new-instance v9, Landroid/util/Size;

    const/16 v12, 0x280

    const/16 v13, 0x1e0

    invoke-direct {v9, v12, v13}, Landroid/util/Size;-><init>(II)V

    .line 721
    new-array v10, v3, [Landroid/util/Range;

    new-instance v11, Landroid/util/Range;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v11, v14, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v11, v10, v2

    .line 723
    new-instance v7, Landroid/hardware/camera2/params/StreamConfiguration;

    const/16 v11, 0x23

    invoke-direct {v7, v11, v12, v13, v2}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    .line 725
    move/from16 v16, v13

    new-instance v13, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move v14, v11

    move v15, v12

    invoke-direct/range {v13 .. v18}, Landroid/hardware/camera2/params/StreamConfigurationDuration;-><init>(IIIJ)V

    .line 727
    move/from16 v11, v16

    move-object/from16 v16, v13

    move v13, v11

    move v11, v14

    move-object v14, v10

    new-instance v10, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v17, v14

    const-wide/16 v14, 0x0

    move/from16 v18, v6

    move-object/from16 v6, v17

    invoke-direct/range {v10 .. v15}, Landroid/hardware/camera2/params/StreamConfigurationDuration;-><init>(IIIJ)V

    .line 730
    new-instance v11, Landroid/hardware/camera2/CameraCharacteristics$Builder;

    invoke-direct {v11}, Landroid/hardware/camera2/CameraCharacteristics$Builder;-><init>()V

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 732
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 731
    invoke-virtual {v11, v14, v15}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v11

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 733
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v11

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 734
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v11

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v15, v3, [F

    const/high16 v17, 0x422c0000    # 43.0f

    aput v17, v15, v2

    .line 735
    invoke-virtual {v11, v14, v15}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v11

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 736
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v11

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_READOUT_TIMESTAMP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 738
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 737
    invoke-virtual {v11, v14, v15}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v11

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 740
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 739
    invoke-virtual {v11, v14, v15}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v11

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v15, Landroid/util/SizeF;

    const/high16 v12, 0x42100000    # 36.0f

    const/high16 v13, 0x41c00000    # 24.0f

    invoke-direct {v15, v12, v13}, Landroid/util/SizeF;-><init>(FF)V

    .line 741
    invoke-virtual {v11, v14, v15}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v11

    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    filled-new-array {v2}, [I

    move-result-object v13

    .line 743
    invoke-virtual {v11, v12, v13}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v11

    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    filled-new-array {v2}, [I

    move-result-object v13

    .line 745
    invoke-virtual {v11, v12, v13}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v11

    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    filled-new-array {v2}, [I

    move-result-object v13

    .line 747
    invoke-virtual {v11, v12, v13}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v11

    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_USE_CASES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v8, v8, [J

    fill-array-data v8, :array_438

    .line 749
    invoke-virtual {v11, v12, v8}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v8

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_AVAILABLE_TEST_PATTERN_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    filled-new-array {v2}, [I

    move-result-object v12

    .line 756
    invoke-virtual {v8, v11, v12}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v8

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 758
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v8

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    filled-new-array {v3}, [I

    move-result-object v12

    .line 759
    invoke-virtual {v8, v11, v12}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v8

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    filled-new-array {v2}, [I

    move-result-object v12

    .line 761
    invoke-virtual {v8, v11, v12}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v8

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    filled-new-array {v2}, [I

    move-result-object v12

    .line 763
    invoke-virtual {v8, v11, v12}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v8

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    filled-new-array {v2}, [I

    move-result-object v12

    .line 765
    invoke-virtual {v8, v11, v12}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v8

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    filled-new-array {v2}, [I

    move-result-object v12

    .line 767
    invoke-virtual {v8, v11, v12}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v8

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    filled-new-array {v3}, [I

    move-result-object v12

    .line 769
    invoke-virtual {v8, v11, v12}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v8

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    filled-new-array {v5}, [I

    move-result-object v12

    .line 771
    invoke-virtual {v8, v11, v12}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v8

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 773
    invoke-virtual {v8, v11, v6}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v6

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    filled-new-array {v2, v2, v2}, [I

    move-result-object v11

    .line 775
    invoke-virtual {v6, v8, v11}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v6

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v11, Landroid/util/Range;

    .line 776
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v6, v8, v11}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v6

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v11, Landroid/util/Rational;

    invoke-direct {v11, v2, v2}, Landroid/util/Rational;-><init>(II)V

    .line 777
    invoke-virtual {v6, v8, v11}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v6

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 778
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v6

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 779
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v6

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    filled-new-array {v3}, [I

    move-result-object v11

    .line 780
    invoke-virtual {v6, v8, v11}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v6

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v11, Landroid/util/Range;

    .line 782
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v6, v8, v11}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v6

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_CROPPING_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 784
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 783
    invoke-virtual {v6, v8, v11}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v6

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v11, v3, [Landroid/util/Size;

    aput-object v9, v11, v2

    .line 785
    invoke-virtual {v6, v8, v11}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v6

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 787
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v6

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_MAX_FRAME_DURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 788
    const-wide/32 v11, 0x3b9aca00

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v6

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    filled-new-array {v2, v5, v3}, [I

    move-result-object v5

    .line 789
    invoke-virtual {v6, v8, v5}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 790
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 791
    invoke-static/range {v24 .. v24}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SYNC_MAX_LATENCY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 793
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 792
    invoke-virtual {v5, v6, v8}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    filled-new-array {v2}, [I

    move-result-object v8

    .line 794
    invoke-virtual {v5, v6, v8}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v8, Landroid/graphics/Rect;

    const/16 v12, 0x280

    const/16 v13, 0x1e0

    invoke-direct {v8, v2, v2, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 796
    invoke-virtual {v5, v6, v8}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 798
    invoke-virtual {v5, v6, v9}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v8, v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v7, v8, v2

    .line 800
    invoke-virtual {v5, v6, v8}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v7, v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v16, v7, v2

    .line 802
    invoke-virtual {v5, v6, v7}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v3, v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v10, v3, v2

    .line 804
    invoke-virtual {v5, v6, v3}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v2

    .line 806
    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->setAvailableCharacteristicsKeys(Ljava/util/List;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v0

    .line 807
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->setAvailableCaptureRequestKeys(Ljava/util/List;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v0

    .line 808
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->setAvailableCaptureResultKeys(Ljava/util/List;)Landroid/hardware/camera2/CameraCharacteristics$Builder;

    move-result-object v0

    .line 809
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics$Builder;->build()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 730
    return-object v0

    nop

    :array_438
    .array-data 8
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private static blacklist isFormatSupported(I)Z
    .registers 1

    .line 599
    sparse-switch p0, :sswitch_data_8

    .line 601
    const/4 p0, 0x0

    goto :goto_6

    .line 600
    :sswitch_5
    const/4 p0, 0x1

    .line 599
    :goto_6
    return p0

    nop

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_5
        0x23 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;
    .registers 2

    .line 233
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mCallback:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    return-object v0
.end method

.method public whitelist getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .registers 3

    .line 276
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->virtualCameraMetadata()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 279
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0

    .line 277
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "virtual_camera_metadata not enabled!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLensFacing()I
    .registers 2

    .line 252
    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mLensFacing:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 212
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSensorOrientation()I
    .registers 2

    .line 243
    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mSensorOrientation:I

    return v0
.end method

.method public whitelist getStreamConfigs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/companion/virtual/camera/VirtualCameraStreamConfig;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mStreamConfigurations:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist isPerFrameCameraMetadataEnabled()Z
    .registers 3

    .line 262
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->virtualCameraMetadata()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 265
    iget-boolean v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mPerFrameCameraMetadataEnabled:Z

    return v0

    .line 263
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "virtual_camera_metadata not enabled!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualCameraConfig( name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lensFacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mLensFacing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sensorOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mSensorOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 193
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mCallback:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 195
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mStreamConfigurations:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    .line 196
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    .line 195
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 197
    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mSensorOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mLensFacing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-boolean v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mPerFrameCameraMetadataEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 200
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_35

    .line 201
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_39

    .line 203
    :cond_35
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 205
    :goto_39
    return-void
.end method
