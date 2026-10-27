.class public final Landroid/hardware/camera2/CameraCharacteristics;
.super Landroid/hardware/camera2/CameraMetadata;
.source "CameraCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraCharacteristics$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/CameraMetadata<",
        "Landroid/hardware/camera2/CameraCharacteristics$Key<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final whitelist AUTOMOTIVE_LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist AUTOMOTIVE_LOCATION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/Capability;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_MAX_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_ZOOM_RATIO_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final blacklist CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_POST_RAW_SENSITIVITY_BOOST_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEPTH_AVAILABLE_RECOMMENDED_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/RecommendedStreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEPTH_DEPTH_IS_EXCLUSIVE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DISTORTION_CORRECTION_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist EDGE_AVAILABLE_EDGE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLASH_INFO_STRENGTH_DEFAULT_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLASH_INFO_STRENGTH_MAXIMUM_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HEIC_AVAILABLE_HEIC_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HEIC_AVAILABLE_HEIC_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HOT_PIXEL_AVAILABLE_HOT_PIXEL_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist INFO_DEVICE_STATE_ORIENTATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[J>;"
        }
    .end annotation
.end field

.field public static final whitelist INFO_DEVICE_STATE_SENSOR_ORIENTATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INFO_VERSION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist LED_AVAILABLE_LEDS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_DISTORTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_DISTORTION_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_INFO_AVAILABLE_FILTER_DENSITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_INFO_FOCUS_DISTANCE_CALIBRATION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_INFO_HYPERFOCAL_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_INTRINSIC_CALIBRATION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_INTRINSIC_CALIBRATION_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_POSE_REFERENCE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_POSE_ROTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_POSE_TRANSLATION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final whitelist LENS_RADIAL_DISTORTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist LOGICAL_MULTI_CAMERA_PHYSICAL_IDS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final whitelist LOGICAL_MULTI_CAMERA_SENSOR_SYNC_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist QUIRKS_USE_PARTIAL_RESULT:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist REPROCESS_MAX_CAPTURE_STALL:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_AVAILABLE_CHARACTERISTICS_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/DynamicRangeProfiles;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[J>;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_AVAILABLE_PHYSICAL_CAMERA_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_AVAILABLE_SESSION_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_CHARACTERISTIC_KEYS_NEEDING_PERMISSION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_MAX_NUM_INPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_RECOMMENDED_TEN_BIT_DYNAMIC_RANGE_PROFILE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ReprocessFormatsMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ReprocessFormatsMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_JPEG_MIN_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[J>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_JPEG_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_PROCESSED_MIN_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[J>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_PROCESSED_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_RECOMMENDED_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ReprocessFormatsMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_RECOMMENDED_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/RecommendedStreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_AVAILABLE_ROTATE_AND_CROP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_AVAILABLE_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_AVAILABLE_STREAM_USE_CASES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[J>;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_CROPPING_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_DEFAULT_SECURE_IMAGE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_MANDATORY_CONCURRENT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_MANDATORY_MAXIMUM_RESOLUTION_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_MANDATORY_PREVIEW_STABILIZATION_OUTPUT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_MANDATORY_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_MANDATORY_TEN_BIT_OUTPUT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_MANDATORY_USE_CASE_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_MULTI_RESOLUTION_STREAM_SUPPORTED:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCALER_PHYSICAL_CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_AVAILABLE_TEST_PATTERN_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_BLACK_LEVEL_PATTERN:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/BlackLevelPattern;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_CALIBRATION_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ColorSpaceTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_CALIBRATION_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ColorSpaceTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_COLOR_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ColorSpaceTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_COLOR_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ColorSpaceTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_FORWARD_MATRIX1:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ColorSpaceTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_FORWARD_MATRIX2:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ColorSpaceTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_ACTIVE_ARRAY_SIZE_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_BINNING_FACTOR:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_LENS_SHADING_APPLIED:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_MAX_FRAME_DURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/SizeF;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_PIXEL_ARRAY_SIZE_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_INFO_WHITE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_OPTICAL_BLACK_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_REFERENCE_ILLUMINANT1:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSOR_REFERENCE_ILLUMINANT2:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SHADING_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist STATISTICS_INFO_AVAILABLE_HOT_PIXEL_MAP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[Z>;"
        }
    .end annotation
.end field

.field public static final whitelist STATISTICS_INFO_AVAILABLE_LENS_SHADING_MAP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist STATISTICS_INFO_AVAILABLE_OIS_DATA_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SYNC_MAX_LATENCY:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "CameraCharacteristics"

.field public static final whitelist TONEMAP_AVAILABLE_TONE_MAP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final whitelist TONEMAP_MAX_CURVE_POINTS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAvailablePhysicalRequestKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mAvailableRequestKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mAvailableResultKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mAvailableSessionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist mFoldStateListener:Landroid/hardware/camera2/CameraManager$DeviceStateListener;

.field private blacklist mFoldedDeviceState:Z

.field private greylist-max-o mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist mKeysNeedingPermission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final greylist-max-r mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

.field private blacklist mRecommendedConfigurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFoldedDeviceState(Landroid/hardware/camera2/CameraCharacteristics;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/camera2/CameraCharacteristics;->mFoldedDeviceState:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 738
    const-class v0, [J

    const-class v1, [F

    const-class v2, [I

    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.colorCorrection.availableAberrationModes"

    invoke-direct {v3, v4, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 757
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.control.aeAvailableAntibandingModes"

    invoke-direct {v3, v4, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 783
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.control.aeAvailableModes"

    invoke-direct {v3, v4, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 829
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v4, Landroid/hardware/camera2/CameraCharacteristics$2;

    invoke-direct {v4}, Landroid/hardware/camera2/CameraCharacteristics$2;-><init>()V

    const-string v5, "android.control.aeAvailableTargetFpsRanges"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 850
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v4, Landroid/hardware/camera2/CameraCharacteristics$3;

    invoke-direct {v4}, Landroid/hardware/camera2/CameraCharacteristics$3;-><init>()V

    const-string v5, "android.control.aeCompensationRange"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 868
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v4, Landroid/util/Rational;

    const-string v5, "android.control.aeCompensationStep"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 893
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.control.afAvailableModes"

    invoke-direct {v3, v4, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 917
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.control.availableEffects"

    invoke-direct {v3, v4, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 941
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.control.availableSceneModes"

    invoke-direct {v3, v4, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 956
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.control.availableVideoStabilizationModes"

    invoke-direct {v3, v4, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 981
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.control.awbAvailableModes"

    invoke-direct {v3, v4, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1001
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.control.maxRegions"

    invoke-direct {v3, v4, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1019
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "android.control.maxRegionsAe"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1036
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "android.control.maxRegionsAwb"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1053
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "android.control.maxRegionsAf"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1109
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v4, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    const-string v5, "android.control.availableHighSpeedVideoConfigurations"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1122
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v5, "android.control.aeLockAvailable"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1135
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v5, "android.control.awbLockAvailable"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1152
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.control.availableModes"

    invoke-direct {v3, v4, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1173
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v4, Landroid/hardware/camera2/CameraCharacteristics$4;

    invoke-direct {v4}, Landroid/hardware/camera2/CameraCharacteristics$4;-><init>()V

    const-string v5, "android.control.postRawSensitivityBoostRange"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_POST_RAW_SENSITIVITY_BOOST_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1205
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.control.availableExtendedSceneModeMaxSizes"

    invoke-direct {v3, v4, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_MAX_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1225
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.control.availableExtendedSceneModeZoomRatioRanges"

    invoke-direct {v3, v4, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_ZOOM_RATIO_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1258
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v4, [Landroid/hardware/camera2/params/Capability;

    const-string v5, "android.control.availableExtendedSceneModeCapabilities"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1279
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v4, Landroid/hardware/camera2/CameraCharacteristics$5;

    invoke-direct {v4}, Landroid/hardware/camera2/CameraCharacteristics$5;-><init>()V

    const-string v5, "android.control.zoomRatioRange"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1298
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v4, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    const-string v5, "android.control.availableHighSpeedVideoConfigurationsMaximumResolution"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1319
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.edge.availableEdgeModes"

    invoke-direct {v3, v4, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->EDGE_AVAILABLE_EDGE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1332
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v5, "android.flash.info.available"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1346
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "android.flash.info.strengthMaximumLevel"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_STRENGTH_MAXIMUM_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1369
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "android.flash.info.strengthDefaultLevel"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_STRENGTH_DEFAULT_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1384
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.hotPixel.availableHotPixelModes"

    invoke-direct {v3, v4, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->HOT_PIXEL_AVAILABLE_HOT_PIXEL_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1412
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v4, [Landroid/util/Size;

    const-string v5, "android.jpeg.availableThumbnailSizes"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1433
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.lens.info.availableApertures"

    invoke-direct {v3, v4, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1455
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.lens.info.availableFilterDensities"

    invoke-direct {v3, v4, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FILTER_DENSITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1474
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.lens.info.availableFocalLengths"

    invoke-direct {v3, v4, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1494
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.lens.info.availableOpticalStabilization"

    invoke-direct {v3, v4, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1517
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v5, "android.lens.info.hyperfocalDistance"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_HYPERFOCAL_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1539
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v5, "android.lens.info.minimumFocusDistance"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1556
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v4, Landroid/util/Size;

    const-string v5, "android.lens.info.shadingMapSize"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1597
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "android.lens.info.focusDistanceCalibration"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_FOCUS_DISTANCE_CALIBRATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1617
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "android.lens.facing"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1661
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.lens.poseRotation"

    invoke-direct {v3, v4, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_POSE_ROTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1708
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.lens.poseTranslation"

    invoke-direct {v3, v4, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_POSE_TRANSLATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1782
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.lens.intrinsicCalibration"

    invoke-direct {v3, v4, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INTRINSIC_CALIBRATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1830
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.lens.radialDistortion"

    invoke-direct {v3, v4, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_RADIAL_DISTORTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1858
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "android.lens.poseReference"

    invoke-direct {v3, v5, v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_POSE_REFERENCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1900
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.lens.distortion"

    invoke-direct {v3, v4, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_DISTORTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1920
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.lens.distortionMaximumResolution"

    invoke-direct {v3, v4, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_DISTORTION_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1942
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v4, "android.lens.intrinsicCalibrationMaximumResolution"

    invoke-direct {v3, v4, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INTRINSIC_CALIBRATION_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1964
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.noiseReduction.availableNoiseReductionModes"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1983
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v4, "android.quirks.usePartialResult"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->QUIRKS_USE_PARTIAL_RESULT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2020
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.request.maxNumOutputStreams"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2051
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "android.request.maxNumOutputRaw"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2088
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "android.request.maxNumOutputProc"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2115
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "android.request.maxNumOutputProcStalling"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2142
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "android.request.maxNumInputStreams"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_INPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2167
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v4, "android.request.pipelineMaxDepth"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2191
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "android.request.partialResultCount"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2264
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.request.availableCapabilities"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2282
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.request.availableRequestKeys"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2307
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.request.availableResultKeys"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2319
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.request.availableCharacteristicsKeys"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CHARACTERISTICS_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2365
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.request.availableSessionKeys"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_SESSION_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2386
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.request.availablePhysicalCameraRequestKeys"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_PHYSICAL_CAMERA_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2401
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.request.characteristicKeysNeedingPermission"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_CHARACTERISTIC_KEYS_NEEDING_PERMISSION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2421
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/hardware/camera2/params/DynamicRangeProfiles;

    const-string v4, "android.request.availableDynamicRangeProfiles"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2465
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.request.availableDynamicRangeProfilesMap"

    invoke-direct {v1, v3, v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2481
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v4, "android.request.recommendedTenBitDynamicRangeProfile"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_RECOMMENDED_TEN_BIT_DYNAMIC_RANGE_PROFILE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2496
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.scaler.availableFormats"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2518
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.scaler.availableJpegMinDurations"

    invoke-direct {v1, v3, v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_JPEG_MIN_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2536
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, [Landroid/util/Size;

    const-string v4, "android.scaler.availableJpegSizes"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_JPEG_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2563
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v4, "android.scaler.availableMaxDigitalZoom"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2583
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.scaler.availableProcessedMinDurations"

    invoke-direct {v1, v3, v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_PROCESSED_MIN_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2607
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, [Landroid/util/Size;

    const-string v4, "android.scaler.availableProcessedSizes"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_PROCESSED_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2691
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    const-string v4, "android.scaler.availableInputOutputFormatsMap"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2869
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    const-string v4, "android.scaler.availableStreamConfigurations"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2889
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const-string v4, "android.scaler.availableMinFrameDurations"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2958
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const-string v4, "android.scaler.availableStallDurations"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3101
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-string v4, "android.scaler.streamConfigurationMap"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3148
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "android.scaler.croppingType"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_CROPPING_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3163
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, [Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    const-string v4, "android.scaler.availableRecommendedStreamConfigurations"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_RECOMMENDED_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3179
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    const-string v4, "android.scaler.availableRecommendedInputOutputFormatsMap"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_RECOMMENDED_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3215
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination;

    const-string v4, "android.scaler.mandatoryStreamCombinations"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3238
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination;

    const-string v4, "android.scaler.mandatoryConcurrentStreamCombinations"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_CONCURRENT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3255
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.scaler.availableRotateAndCropModes"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_ROTATE_AND_CROP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3278
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/util/Size;

    const-string v4, "android.scaler.defaultSecureImageSize"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_DEFAULT_SECURE_IMAGE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3306
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    const-string v4, "android.scaler.physicalCameraMultiResolutionStreamConfigurations"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_PHYSICAL_CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3346
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    const-string v4, "android.scaler.multiResolutionStreamConfigurationMap"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3365
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    const-string v4, "android.scaler.availableStreamConfigurationsMaximumResolution"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3390
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const-string v4, "android.scaler.availableMinFrameDurationsMaximumResolution"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3407
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const-string v4, "android.scaler.availableStallDurationsMaximumResolution"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3428
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-string v4, "android.scaler.streamConfigurationMapMaximumResolution"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3444
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    const-string v4, "android.scaler.availableInputOutputFormatsMapMaximumResolution"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3472
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination;

    const-string v4, "android.scaler.mandatoryMaximumResolutionStreamCombinations"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_MAXIMUM_RESOLUTION_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3498
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination;

    const-string v4, "android.scaler.mandatoryTenBitOutputStreamCombinations"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_TEN_BIT_OUTPUT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3522
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination;

    const-string v4, "android.scaler.mandatoryPreviewStabilizationOutputStreamCombinations"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_PREVIEW_STABILIZATION_OUTPUT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3551
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "android.scaler.multiResolutionStreamSupported"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_SUPPORTED:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3612
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.scaler.availableStreamUseCases"

    invoke-direct {v1, v3, v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_USE_CASES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3635
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination;

    const-string v4, "android.scaler.mandatoryUseCaseStreamCombinations"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_USE_CASE_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3674
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/graphics/Rect;

    const-string v4, "android.sensor.info.activeArraySize"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3694
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$6;

    invoke-direct {v3}, Landroid/hardware/camera2/CameraCharacteristics$6;-><init>()V

    const-string v4, "android.sensor.info.sensitivityRange"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3729
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "android.sensor.info.colorFilterArrangement"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3750
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics$7;

    invoke-direct {v3}, Landroid/hardware/camera2/CameraCharacteristics$7;-><init>()V

    const-string v4, "android.sensor.info.exposureTimeRange"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3775
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v4, "android.sensor.info.maxFrameDuration"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_MAX_FRAME_DURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3790
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/util/SizeF;

    const-string v4, "android.sensor.info.physicalSize"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3816
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/util/Size;

    const-string v4, "android.sensor.info.pixelArraySize"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3845
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "android.sensor.info.whiteLevel"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_WHITE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3866
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "android.sensor.info.timestampSource"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3884
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "android.sensor.info.lensShadingApplied"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_LENS_SHADING_APPLIED:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3950
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/graphics/Rect;

    const-string v4, "android.sensor.info.preCorrectionActiveArraySize"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3974
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/graphics/Rect;

    const-string v4, "android.sensor.info.activeArraySizeMaximumResolution"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4000
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/util/Size;

    const-string v4, "android.sensor.info.pixelArraySizeMaximumResolution"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4023
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/graphics/Rect;

    const-string v4, "android.sensor.info.preCorrectionActiveArraySizeMaximumResolution"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4045
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/util/Size;

    const-string v4, "android.sensor.info.binningFactor"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_BINNING_FACTOR:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4116
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "android.sensor.referenceIlluminant1"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_REFERENCE_ILLUMINANT1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4142
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v4, "android.sensor.referenceIlluminant2"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_REFERENCE_ILLUMINANT2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4165
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/hardware/camera2/params/ColorSpaceTransform;

    const-string v4, "android.sensor.calibrationTransform1"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_CALIBRATION_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4191
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/hardware/camera2/params/ColorSpaceTransform;

    const-string v4, "android.sensor.calibrationTransform2"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_CALIBRATION_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4218
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/hardware/camera2/params/ColorSpaceTransform;

    const-string v4, "android.sensor.colorTransform1"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_COLOR_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4247
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/hardware/camera2/params/ColorSpaceTransform;

    const-string v4, "android.sensor.colorTransform2"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_COLOR_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4272
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/hardware/camera2/params/ColorSpaceTransform;

    const-string v4, "android.sensor.forwardMatrix1"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_FORWARD_MATRIX1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4299
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/hardware/camera2/params/ColorSpaceTransform;

    const-string v4, "android.sensor.forwardMatrix2"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_FORWARD_MATRIX2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4334
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/hardware/camera2/params/BlackLevelPattern;

    const-string v4, "android.sensor.blackLevelPattern"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_BLACK_LEVEL_PATTERN:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4354
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "android.sensor.maxAnalogSensitivity"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4385
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "android.sensor.orientation"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4400
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.sensor.availableTestPatternModes"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_AVAILABLE_TEST_PATTERN_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4427
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, [Landroid/graphics/Rect;

    const-string v4, "android.sensor.opticalBlackRegions"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_OPTICAL_BLACK_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4444
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.shading.availableModes"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SHADING_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4459
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.statistics.info.availableFaceDetectModes"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4473
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "android.statistics.info.maxFaceCount"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4490
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, [Z

    const-string v4, "android.statistics.info.availableHotPixelMapModes"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_HOT_PIXEL_MAP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4508
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.statistics.info.availableLensShadingMapModes"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_LENS_SHADING_MAP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4524
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.statistics.info.availableOisDataModes"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_OIS_DATA_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4546
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "android.tonemap.maxCurvePoints"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->TONEMAP_MAX_CURVE_POINTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4571
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.tonemap.availableToneMapModes"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->TONEMAP_AVAILABLE_TONE_MAP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4585
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.led.availableLeds"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LED_AVAILABLE_LEDS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4674
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "android.info.supportedHardwareLevel"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4687
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Ljava/lang/String;

    const-string v4, "android.info.version"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_VERSION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4711
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v3, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;

    const-string v4, "android.info.deviceStateSensorOrientationMap"

    invoke-direct {v1, v4, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_DEVICE_STATE_SENSOR_ORIENTATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4727
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "android.info.deviceStateOrientations"

    invoke-direct {v1, v3, v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_DEVICE_STATE_ORIENTATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4755
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "android.sync.maxLatency"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SYNC_MAX_LATENCY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4791
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "android.reprocess.maxCaptureStall"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REPROCESS_MAX_CAPTURE_STALL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4817
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    const-string v3, "android.depth.availableDepthStreamConfigurations"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4843
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const-string v3, "android.depth.availableDepthMinFrameDurations"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4866
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const-string v3, "android.depth.availableDepthStallDurations"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4890
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "android.depth.depthIsExclusive"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_DEPTH_IS_EXCLUSIVE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4905
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    const-string v3, "android.depth.availableRecommendedDepthStreamConfigurations"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_RECOMMENDED_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4926
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    const-string v3, "android.depth.availableDynamicDepthStreamConfigurations"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4943
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const-string v3, "android.depth.availableDynamicDepthMinFrameDurations"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4958
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const-string v3, "android.depth.availableDynamicDepthStallDurations"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4975
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    const-string v3, "android.depth.availableDepthStreamConfigurationsMaximumResolution"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4996
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const-string v3, "android.depth.availableDepthMinFrameDurationsMaximumResolution"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5013
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const-string v3, "android.depth.availableDepthStallDurationsMaximumResolution"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5029
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    const-string v3, "android.depth.availableDynamicDepthStreamConfigurationsMaximumResolution"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5046
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const-string v3, "android.depth.availableDynamicDepthMinFrameDurationsMaximumResolution"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5063
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const-string v3, "android.depth.availableDynamicDepthStallDurationsMaximumResolution"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5083
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [B

    const-string v3, "android.logicalMultiCamera.physicalIds"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LOGICAL_MULTI_CAMERA_PHYSICAL_IDS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5116
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "android.logicalMultiCamera.sensorSyncType"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LOGICAL_MULTI_CAMERA_SENSOR_SYNC_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5132
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.distortionCorrection.availableModes"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DISTORTION_CORRECTION_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5153
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    const-string v3, "android.heic.availableHeicStreamConfigurations"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5177
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const-string v3, "android.heic.availableHeicMinFrameDurations"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5200
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const-string v3, "android.heic.availableHeicStallDurations"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5211
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    const-string v3, "android.heic.availableHeicStreamConfigurationsMaximumResolution"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5226
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const-string v3, "android.heic.availableHeicMinFrameDurationsMaximumResolution"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5241
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const-string v3, "android.heic.availableHeicStallDurationsMaximumResolution"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5308
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "android.automotive.lens.facing"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->AUTOMOTIVE_LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5370
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "android.automotive.location"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/CameraCharacteristics;->AUTOMOTIVE_LOCATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 3
    .param p1, "properties"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 229
    invoke-direct {p0}, Landroid/hardware/camera2/CameraMetadata;-><init>()V

    .line 208
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mLock:Ljava/lang/Object;

    .line 212
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/CameraCharacteristics$1;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    .line 230
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->move(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 231
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->setNativeInstance(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 232
    return-void
.end method

.method private blacklist overrideProperty(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 272
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_DEVICE_STATE_ORIENTATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 273
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 274
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_DEVICE_STATE_SENSOR_ORIENTATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 275
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;

    .line 276
    .local v0, "deviceStateSensorOrientationMap":Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;
    iget-object v1, p0, Landroid/hardware/camera2/CameraCharacteristics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    nop

    .line 278
    :try_start_24
    iget-boolean v2, p0, Landroid/hardware/camera2/CameraCharacteristics;->mFoldedDeviceState:Z

    if-eqz v2, :cond_2b

    const-wide/16 v2, 0x4

    goto :goto_2d

    .line 279
    :cond_2b
    const-wide/16 v2, 0x0

    .line 277
    :goto_2d
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;->getSensorOrientation(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 280
    .local v2, "ret":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_3d

    .line 281
    monitor-exit v1

    return-object v2

    .line 283
    :cond_3d
    const-string v3, "CameraCharacteristics"

    const-string v4, "No valid device state to orientation mapping! Using default!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    nop

    .end local v2    # "ret":Ljava/lang/Integer;
    monitor-exit v1

    goto :goto_4a

    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_24 .. :try_end_49} :catchall_47

    throw v2

    .line 288
    .end local v0    # "deviceStateSensorOrientationMap":Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;
    :cond_4a
    :goto_4a
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 307
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->overrideProperty(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 308
    .local v0, "propertyOverride":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_e

    :cond_8
    iget-object v1, p0, Landroid/hardware/camera2/CameraCharacteristics;->mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    :goto_e
    return-object v1
.end method

.method public whitelist getAvailableCaptureRequestKeys()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation

    .line 608
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableRequestKeys:Ljava/util/List;

    if-nez v0, :cond_25

    .line 609
    const-class v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 610
    .local v0, "crKey":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    .line 612
    .local v1, "crKeyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 613
    .local v2, "filterTags":[I
    if-eqz v2, :cond_1d

    .line 617
    const-class v3, Landroid/hardware/camera2/CaptureRequest;

    const/4 v4, 0x1

    .line 618
    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableRequestKeys:Ljava/util/List;

    goto :goto_25

    .line 614
    :cond_1d
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "android.request.availableRequestKeys must be non-null in the characteristics"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 621
    .end local v0    # "crKey":Ljava/lang/Object;
    .end local v1    # "crKeyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    .end local v2    # "filterTags":[I
    :cond_25
    :goto_25
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableRequestKeys:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getAvailableCaptureResultKeys()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;>;"
        }
    .end annotation

    .line 641
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableResultKeys:Ljava/util/List;

    if-nez v0, :cond_25

    .line 642
    const-class v0, Landroid/hardware/camera2/CaptureResult$Key;

    .line 643
    .local v0, "crKey":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    .line 645
    .local v1, "crKeyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureResult$Key<*>;>;"
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 646
    .local v2, "filterTags":[I
    if-eqz v2, :cond_1d

    .line 650
    const-class v3, Landroid/hardware/camera2/CaptureResult;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableResultKeys:Ljava/util/List;

    goto :goto_25

    .line 647
    :cond_1d
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "android.request.availableResultKeys must be non-null in the characteristics"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 653
    .end local v0    # "crKey":Ljava/lang/Object;
    .end local v1    # "crKeyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureResult$Key<*>;>;"
    .end local v2    # "filterTags":[I
    :cond_25
    :goto_25
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableResultKeys:Ljava/util/List;

    return-object v0
.end method

.method blacklist getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;
    .registers 12
    .param p3, "filterTags"    # [I
    .param p4, "includeSynthetic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TKey:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TTKey;>;[IZ)",
            "Ljava/util/List<",
            "TTKey;>;"
        }
    .end annotation

    .line 677
    .local p1, "metadataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TTKey;>;"
    const-class v0, Landroid/hardware/camera2/CameraMetadata;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 680
    const-class v0, Landroid/hardware/camera2/CameraMetadata;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 685
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/camera2/CameraCharacteristics;->getKeys(Ljava/lang/Class;Ljava/lang/Class;Landroid/hardware/camera2/CameraMetadata;[IZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 687
    .local v0, "staticKeyList":Ljava/util/List;, "Ljava/util/List<TTKey;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 681
    .end local v0    # "staticKeyList":Ljava/util/List;, "Ljava/util/List<TTKey;>;"
    :cond_1f
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "metadataClass must be a subclass of CameraMetadata"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 678
    :cond_28
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "metadataClass must be a strict subclass of CameraMetadata"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist getAvailablePhysicalCameraRequestKeys()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailablePhysicalRequestKeys:Ljava/util/List;

    if-nez v0, :cond_1e

    .line 577
    const-class v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 578
    .local v0, "crKey":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    .line 580
    .local v1, "crKeyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_PHYSICAL_CAMERA_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 581
    .local v2, "filterTags":[I
    if-nez v2, :cond_15

    .line 582
    const/4 v3, 0x0

    return-object v3

    .line 584
    :cond_15
    const-class v3, Landroid/hardware/camera2/CaptureRequest;

    const/4 v4, 0x0

    .line 585
    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailablePhysicalRequestKeys:Ljava/util/List;

    .line 588
    .end local v0    # "crKey":Ljava/lang/Object;
    .end local v1    # "crKeyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    .end local v2    # "filterTags":[I
    :cond_1e
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailablePhysicalRequestKeys:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getAvailableSessionKeys()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableSessionKeys:Ljava/util/List;

    if-nez v0, :cond_1e

    .line 541
    const-class v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 542
    .local v0, "crKey":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    .line 544
    .local v1, "crKeyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_SESSION_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 545
    .local v2, "filterTags":[I
    if-nez v2, :cond_15

    .line 546
    const/4 v3, 0x0

    return-object v3

    .line 548
    :cond_15
    const-class v3, Landroid/hardware/camera2/CaptureRequest;

    const/4 v4, 0x0

    .line 549
    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableSessionKeys:Ljava/util/List;

    .line 552
    .end local v0    # "crKey":Ljava/lang/Object;
    .end local v1    # "crKeyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    .end local v2    # "filterTags":[I
    :cond_1e
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mAvailableSessionKeys:Ljava/util/List;

    return-object v0
.end method

.method blacklist getDeviceStateListener()Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    .registers 2

    .line 258
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    return-object v0
.end method

.method protected greylist-max-o getKeyClass()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;>;"
        }
    .end annotation

    .line 328
    const-class v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 329
    .local v0, "thisClass":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    return-object v1
.end method

.method public whitelist getKeys()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;>;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mKeys:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 340
    return-object v0

    .line 343
    :cond_5
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CHARACTERISTICS_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 344
    .local v0, "filterTags":[I
    if-eqz v0, :cond_27

    .line 349
    nop

    .line 350
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getKeyClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p0

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/camera2/CameraCharacteristics;->getKeys(Ljava/lang/Class;Ljava/lang/Class;Landroid/hardware/camera2/CameraMetadata;[IZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 349
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/CameraCharacteristics;->mKeys:Ljava/util/List;

    .line 351
    return-object v1

    .line 345
    :cond_27
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "android.request.availableCharacteristicsKeys must be non-null in the characteristics"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public whitelist getKeysNeedingPermission()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;>;"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mKeysNeedingPermission:Ljava/util/List;

    if-nez v0, :cond_28

    .line 378
    const-class v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 379
    .local v0, "crKey":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    .line 382
    .local v1, "crKeyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_CHARACTERISTIC_KEYS_NEEDING_PERMISSION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 383
    .local v2, "filterTags":[I
    if-nez v2, :cond_1f

    .line 384
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/camera2/CameraCharacteristics;->mKeysNeedingPermission:Ljava/util/List;

    .line 386
    return-object v3

    .line 388
    :cond_1f
    const-class v3, Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v4, 0x0

    .line 389
    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/camera2/CameraCharacteristics;->mKeysNeedingPermission:Ljava/util/List;

    .line 392
    .end local v0    # "crKey":Ljava/lang/Object;
    .end local v1    # "crKeyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    .end local v2    # "filterTags":[I
    :cond_28
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mKeysNeedingPermission:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 3

    .line 239
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v1, p0, Landroid/hardware/camera2/CameraCharacteristics;->mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-object v0
.end method

.method public whitelist getPhysicalCameraIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 712
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o getProtected(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;)TT;"
        }
    .end annotation

    .line 318
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<*>;"
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist getProtected(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 57
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->getProtected(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getRecommendedStreamConfigurationMap(I)Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;
    .registers 6
    .param p1, "usecase"    # I

    .line 476
    if-ltz p1, :cond_6

    const/16 v0, 0x8

    if-le p1, v0, :cond_e

    :cond_6
    const/16 v0, 0x18

    if-lt p1, v0, :cond_27

    const/16 v0, 0x20

    if-ge p1, v0, :cond_27

    .line 480
    :cond_e
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mRecommendedConfigurations:Ljava/util/ArrayList;

    if-nez v0, :cond_1e

    .line 481
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getRecommendedStreamConfigurations()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mRecommendedConfigurations:Ljava/util/ArrayList;

    .line 482
    if-nez v0, :cond_1e

    .line 483
    const/4 v0, 0x0

    return-object v0

    .line 487
    :cond_1e
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mRecommendedConfigurations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;

    return-object v0

    .line 490
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Invalid use case: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAppName(Ljava/lang/String;)V
    .registers 3
    .param p1, "appName"    # Ljava/lang/String;

    .line 251
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics;->mProperties:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setAppName(Ljava/lang/String;)V

    .line 252
    return-void
.end method
