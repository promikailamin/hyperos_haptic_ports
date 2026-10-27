.class public Landroid/hardware/camera2/impl/CameraMetadataNative;
.super Ljava/lang/Object;
.source "CameraMetadataNative.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$Key;
    }
.end annotation


# static fields
.field private static final greylist-max-o CELLID_PROCESS:Ljava/lang/String; = "CELLID"

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o FACE_LANDMARK_SIZE:I = 0x6

.field private static final greylist-max-o GPS_PROCESS:Ljava/lang/String; = "GPS"

.field private static final blacklist MANDATORY_STREAM_CONFIGURATIONS_10BIT:I = 0x3

.field private static final blacklist MANDATORY_STREAM_CONFIGURATIONS_CONCURRENT:I = 0x2

.field private static final blacklist MANDATORY_STREAM_CONFIGURATIONS_DEFAULT:I = 0x0

.field private static final blacklist MANDATORY_STREAM_CONFIGURATIONS_MAX_RESOLUTION:I = 0x1

.field private static final blacklist MANDATORY_STREAM_CONFIGURATIONS_PREVIEW_STABILIZATION:I = 0x5

.field private static final blacklist MANDATORY_STREAM_CONFIGURATIONS_USE_CASE:I = 0x4

.field public static final greylist-max-o NATIVE_JPEG_FORMAT:I = 0x21

.field public static final greylist-max-o NUM_TYPES:I = 0x6

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CameraMetadataJV"

.field public static final greylist-max-o TYPE_BYTE:I = 0x0

.field public static final greylist-max-o TYPE_DOUBLE:I = 0x4

.field public static final greylist-max-o TYPE_FLOAT:I = 0x2

.field public static final greylist-max-o TYPE_INT32:I = 0x1

.field public static final greylist-max-o TYPE_INT64:I = 0x3

.field public static final greylist-max-o TYPE_RATIONAL:I = 0x5

.field private static final greylist-max-o sGetCommandMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "*>;",
            "Landroid/hardware/camera2/impl/GetCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sSetCommandMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "*>;",
            "Landroid/hardware/camera2/impl/SetCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBufferSize:J

.field private blacklist mCameraId:I

.field private blacklist mDisplaySize:Landroid/util/Size;

.field private blacklist mHasMandatoryConcurrentStreams:Z

.field private greylist-max-r mMetadataPtr:J

.field private blacklist mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetAvailableFormats(Landroid/hardware/camera2/impl/CameraMetadataNative;)[I
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAvailableFormats()[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDeviceStateOrientationMap(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getDeviceStateOrientationMap()Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDynamicRangeProfiles(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/DynamicRangeProfiles;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getDynamicRangeProfiles()Landroid/hardware/camera2/params/DynamicRangeProfiles;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetExtendedSceneModeCapabilities(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/Capability;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getExtendedSceneModeCapabilities()[Landroid/hardware/camera2/params/Capability;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFaceRectangles(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/graphics/Rect;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getFaceRectangles()[Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFaces(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/Face;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getFaces()[Landroid/hardware/camera2/params/Face;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetGpsLocation(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/location/Location;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getGpsLocation()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLensShadingMap(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/LensShadingMap;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getLensShadingMap()Landroid/hardware/camera2/params/LensShadingMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMandatory10BitStreamCombinations(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatory10BitStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMandatoryConcurrentStreamCombinations(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryConcurrentStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMandatoryMaximumResolutionStreamCombinations(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryMaximumResolutionStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMandatoryPreviewStabilizationStreamCombinations(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryPreviewStabilizationStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMandatoryStreamCombinations(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMandatoryUseCaseStreamCombinations(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryUseCaseStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMaxNumOutputs(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMaxNumOutputs(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMaxRegions(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMaxRegions(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetOisSamples(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/OisSample;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getOisSamples()[Landroid/hardware/camera2/params/OisSample;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStreamConfigurationMap(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStreamConfigurationMapMaximumResolution(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getStreamConfigurationMapMaximumResolution()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTonemapCurve(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/TonemapCurve;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTonemapCurve()Landroid/hardware/camera2/params/TonemapCurve;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetAERegions(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setAERegions(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetAFRegions(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setAFRegions(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetAWBRegions(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setAWBRegions(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetAvailableFormats(Landroid/hardware/camera2/impl/CameraMetadataNative;[I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setAvailableFormats([I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetFaceRectangles(Landroid/hardware/camera2/impl/CameraMetadataNative;[Landroid/graphics/Rect;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setFaceRectangles([Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetFaces(Landroid/hardware/camera2/impl/CameraMetadataNative;[Landroid/hardware/camera2/params/Face;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setFaces([Landroid/hardware/camera2/params/Face;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetGpsLocation(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/location/Location;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setGpsLocation(Landroid/location/Location;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetScalerCropRegion(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/graphics/Rect;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setScalerCropRegion(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetTonemapCurve(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/params/TonemapCurve;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setTonemapCurve(Landroid/hardware/camera2/params/TonemapCurve;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 327
    const-string v0, "debug.camera.enable_log_framework"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    .line 328
    const-string v0, "debug.camera.enable_log_metadata_native"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    const/4 v1, 0x1

    :cond_12
    sput-boolean v1, Landroid/hardware/camera2/impl/CameraMetadataNative;->DEBUG:Z

    .line 436
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$1;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 665
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    .line 668
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 669
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$2;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$2;-><init>()V

    .line 668
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 677
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$3;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$3;-><init>()V

    .line 676
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 685
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$4;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$4;-><init>()V

    .line 684
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 693
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$5;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$5;-><init>()V

    .line 692
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 702
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$6;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$6;-><init>()V

    .line 701
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 711
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$7;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$7;-><init>()V

    .line 710
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_CONCURRENT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 720
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$8;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$8;-><init>()V

    .line 719
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_TEN_BIT_OUTPUT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 730
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$9;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$9;-><init>()V

    .line 729
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_MAXIMUM_RESOLUTION_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 740
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$10;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$10;-><init>()V

    .line 739
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_USE_CASE_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 750
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$11;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$11;-><init>()V

    .line 749
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_PREVIEW_STABILIZATION_OUTPUT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 759
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$12;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$12;-><init>()V

    .line 758
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 769
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$13;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$13;-><init>()V

    .line 768
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 777
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$14;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$14;-><init>()V

    .line 776
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 785
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$15;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$15;-><init>()V

    .line 784
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 793
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$16;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$16;-><init>()V

    .line 792
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 801
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$17;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$17;-><init>()V

    .line 800
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 809
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$18;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$18;-><init>()V

    .line 808
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 818
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$19;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$19;-><init>()V

    .line 817
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 826
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$20;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$20;-><init>()V

    .line 825
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_CORRECTION_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 834
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$21;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$21;-><init>()V

    .line 833
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_DEVICE_STATE_SENSOR_ORIENTATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 843
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$22;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$22;-><init>()V

    .line 842
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 852
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$23;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$23;-><init>()V

    .line 851
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 861
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$24;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$24;-><init>()V

    .line 860
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 870
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$25;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$25;-><init>()V

    .line 869
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 879
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$26;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$26;-><init>()V

    .line 878
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    .line 1865
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$27;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$27;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$28;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$28;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$29;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$29;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$30;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$30;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$31;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$31;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1898
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$32;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$32;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1905
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$33;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$33;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$34;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$34;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1919
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$35;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$35;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2417
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->registerAllMarshalers()V

    .line 2418
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 5

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2050
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    .line 2051
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    .line 2052
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    .line 2053
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    .line 2054
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 390
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeAllocate()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    .line 391
    cmp-long v0, v2, v0

    if-eqz v0, :cond_25

    .line 394
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->updateNativeAllocation()V

    .line 395
    return-void

    .line 392
    :cond_25
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Failed to allocate native CameraMetadata"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 6
    .param p1, "other"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2050
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    .line 2051
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    .line 2052
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    .line 2053
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    .line 2054
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 402
    iget-wide v2, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeAllocateCopy(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    .line 403
    cmp-long v0, v2, v0

    if-eqz v0, :cond_27

    .line 406
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->updateNativeAllocation()V

    .line 407
    return-void

    .line 404
    :cond_27
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Failed to allocate native CameraMetadata"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs blacklist areValuesAllNull([Ljava/lang/Object;)Z
    .registers 5
    .param p0, "objs"    # [Ljava/lang/Object;

    .line 2377
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_d

    aget-object v3, p0, v2

    .line 2378
    .local v3, "o":Ljava/lang/Object;
    if-eqz v3, :cond_a

    return v1

    .line 2377
    .end local v3    # "o":Ljava/lang/Object;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2380
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o close()V
    .registers 6

    .line 614
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeClose(J)V

    .line 615
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    .line 617
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_18

    .line 618
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget-wide v3, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    invoke-virtual {v2, v3, v4}, Ldalvik/system/VMRuntime;->registerNativeFree(J)V

    .line 620
    :cond_18
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    .line 621
    return-void
.end method

.method private greylist-max-o getAvailableFormats()[I
    .registers 5

    .line 890
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 891
    .local v0, "availableFormats":[I
    if-eqz v0, :cond_1b

    .line 892
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 894
    aget v2, v0, v1

    const/16 v3, 0x21

    if-ne v2, v3, :cond_18

    .line 895
    const/16 v2, 0x100

    aput v2, v0, v1

    .line 892
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 900
    .end local v1    # "i":I
    :cond_1b
    return-object v0
.end method

.method private greylist-max-o getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 624
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 632
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 628
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 637
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 638
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v0

    .local v0, "tag":I
    goto :goto_18

    .line 640
    .end local v0    # "tag":I
    :cond_b
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKeyLocal(JLjava/lang/String;)I

    move-result v0

    .line 641
    .restart local v0    # "tag":I
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->cacheTag(I)V

    .line 643
    :goto_18
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readValues(I)[B

    move-result-object v1

    .line 644
    .local v1, "values":[B
    if-nez v1, :cond_37

    .line 647
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->-$$Nest$fgetmFallbackName(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_26

    .line 648
    return-object v3

    .line 650
    :cond_26
    iget-wide v4, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->-$$Nest$fgetmFallbackName(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKeyLocal(JLjava/lang/String;)I

    move-result v0

    .line 651
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readValues(I)[B

    move-result-object v1

    .line 652
    if-nez v1, :cond_37

    .line 653
    return-object v3

    .line 657
    :cond_37
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v2, v3, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTagLocal(JI)I

    move-result v2

    .line 658
    .local v2, "nativeType":I
    invoke-static {p1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v3

    .line 659
    .local v3, "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TT;>;"
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 660
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private blacklist getDeviceStateOrientationMap()Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;
    .registers 3

    .line 1095
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_DEVICE_STATE_ORIENTATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1098
    .local v0, "mapArray":[J
    if-nez v0, :cond_c

    .line 1099
    const/4 v1, 0x0

    return-object v1

    .line 1102
    :cond_c
    new-instance v1, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;-><init>([J)V

    .line 1103
    .local v1, "map":Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;
    return-object v1
.end method

.method private blacklist getDynamicRangeProfiles()Landroid/hardware/camera2/params/DynamicRangeProfiles;
    .registers 3

    .line 1107
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1110
    .local v0, "profileArray":[J
    if-nez v0, :cond_c

    .line 1111
    const/4 v1, 0x0

    return-object v1

    .line 1114
    :cond_c
    new-instance v1, Landroid/hardware/camera2/params/DynamicRangeProfiles;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/DynamicRangeProfiles;-><init>([J)V

    return-object v1
.end method

.method private blacklist getExtendedSceneModeCapabilities()[Landroid/hardware/camera2/params/Capability;
    .registers 26

    .line 1767
    move-object/from16 v0, p0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_MAX_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1768
    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1769
    .local v1, "maxSizes":[I
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_ZOOM_RATIO_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 1771
    .local v2, "zoomRanges":[F
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    .line 1772
    .local v3, "zoomRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1774
    .local v4, "maxDigitalZoom":F
    if-nez v1, :cond_2a

    .line 1775
    const/4 v5, 0x0

    return-object v5

    .line 1777
    :cond_2a
    array-length v5, v1

    rem-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_c7

    .line 1781
    array-length v5, v1

    div-int/lit8 v5, v5, 0x3

    .line 1782
    .local v5, "numExtendedSceneModes":I
    const/4 v6, 0x0

    .line 1783
    .local v6, "numExtendedSceneModeZoomRanges":I
    const/4 v7, 0x1

    if-eqz v2, :cond_53

    .line 1784
    array-length v8, v2

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_4b

    .line 1788
    array-length v8, v2

    div-int/lit8 v6, v8, 0x2

    .line 1789
    sub-int v8, v5, v6

    if-ne v8, v7, :cond_43

    goto :goto_53

    .line 1790
    :cond_43
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "Number of extended scene mode zoom ranges must be 1 less than number of supported modes"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 1785
    :cond_4b
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "availableExtendedSceneModeZoomRanges must be tuples of [minZoom, maxZoom]"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 1795
    :cond_53
    :goto_53
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1796
    .local v8, "modeOffMinZoomRatio":F
    move v9, v4

    .line 1797
    .local v9, "modeOffMaxZoomRatio":F
    if-eqz v3, :cond_6c

    .line 1798
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 1799
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 1802
    :cond_6c
    new-array v15, v5, [Landroid/hardware/camera2/params/Capability;

    .line 1803
    .local v15, "capabilities":[Landroid/hardware/camera2/params/Capability;
    const/4 v10, 0x0

    .local v10, "i":I
    const/4 v11, 0x0

    move v14, v10

    move v13, v11

    .end local v10    # "i":I
    .local v13, "j":I
    .local v14, "i":I
    :goto_72
    if-ge v14, v5, :cond_c4

    .line 1804
    mul-int/lit8 v10, v14, 0x3

    aget v22, v1, v10

    .line 1805
    .local v22, "mode":I
    mul-int/lit8 v10, v14, 0x3

    add-int/2addr v10, v7

    aget v23, v1, v10

    .line 1806
    .local v23, "width":I
    mul-int/lit8 v10, v14, 0x3

    add-int/lit8 v10, v10, 0x2

    aget v24, v1, v10

    .line 1807
    .local v24, "height":I
    if-eqz v22, :cond_a6

    if-ge v13, v6, :cond_a6

    .line 1809
    new-instance v10, Landroid/hardware/camera2/params/Capability;

    mul-int/lit8 v11, v13, 0x2

    aget v20, v2, v11

    mul-int/lit8 v11, v13, 0x2

    add-int/2addr v11, v7

    aget v21, v2, v11

    move-object/from16 v16, v10

    move/from16 v17, v22

    move/from16 v18, v23

    move/from16 v19, v24

    invoke-direct/range {v16 .. v21}, Landroid/hardware/camera2/params/Capability;-><init>(IIIFF)V

    aput-object v10, v15, v14

    .line 1811
    add-int/lit8 v13, v13, 0x1

    move/from16 v18, v14

    move-object/from16 v19, v15

    goto :goto_bf

    .line 1813
    :cond_a6
    new-instance v16, Landroid/hardware/camera2/params/Capability;

    move-object/from16 v10, v16

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v17, v13

    .end local v13    # "j":I
    .local v17, "j":I
    move/from16 v13, v24

    move/from16 v18, v14

    .end local v14    # "i":I
    .local v18, "i":I
    move v14, v8

    move-object/from16 v19, v15

    .end local v15    # "capabilities":[Landroid/hardware/camera2/params/Capability;
    .local v19, "capabilities":[Landroid/hardware/camera2/params/Capability;
    move v15, v9

    invoke-direct/range {v10 .. v15}, Landroid/hardware/camera2/params/Capability;-><init>(IIIFF)V

    aput-object v16, v19, v18

    move/from16 v13, v17

    .line 1803
    .end local v17    # "j":I
    .end local v22    # "mode":I
    .end local v23    # "width":I
    .end local v24    # "height":I
    .restart local v13    # "j":I
    :goto_bf
    add-int/lit8 v14, v18, 0x1

    move-object/from16 v15, v19

    .end local v18    # "i":I
    .restart local v14    # "i":I
    goto :goto_72

    .end local v19    # "capabilities":[Landroid/hardware/camera2/params/Capability;
    .restart local v15    # "capabilities":[Landroid/hardware/camera2/params/Capability;
    :cond_c4
    move-object/from16 v19, v15

    .line 1818
    .end local v13    # "j":I
    .end local v14    # "i":I
    .end local v15    # "capabilities":[Landroid/hardware/camera2/params/Capability;
    .restart local v19    # "capabilities":[Landroid/hardware/camera2/params/Capability;
    return-object v19

    .line 1778
    .end local v5    # "numExtendedSceneModes":I
    .end local v6    # "numExtendedSceneModeZoomRanges":I
    .end local v8    # "modeOffMinZoomRatio":F
    .end local v9    # "modeOffMaxZoomRatio":F
    .end local v19    # "capabilities":[Landroid/hardware/camera2/params/Capability;
    :cond_c7
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "availableExtendedSceneModeMaxSizes must be tuples of [mode, width, height]"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
.end method

.method private greylist-max-o getFaceRectangles()[Landroid/graphics/Rect;
    .registers 10

    .line 1062
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    .line 1063
    .local v0, "faceRectangles":[Landroid/graphics/Rect;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    .line 1065
    :cond_c
    array-length v1, v0

    new-array v1, v1, [Landroid/graphics/Rect;

    .line 1066
    .local v1, "fixedFaceRectangles":[Landroid/graphics/Rect;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, v0

    if-ge v2, v3, :cond_37

    .line 1067
    new-instance v3, Landroid/graphics/Rect;

    aget-object v4, v0, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    aget-object v5, v0, v2

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aget-object v6, v0, v2

    iget v6, v6, Landroid/graphics/Rect;->right:I

    aget-object v7, v0, v2

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    aget-object v7, v0, v2

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    aget-object v8, v0, v2

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    .line 1066
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1073
    .end local v2    # "i":I
    :cond_37
    return-object v1
.end method

.method private greylist-max-o getFaces()[Landroid/hardware/camera2/params/Face;
    .registers 24

    .line 968
    move-object/from16 v0, p0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 969
    .local v1, "faceDetectMode":Ljava/lang/Integer;
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_SCORES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 970
    .local v2, "faceScores":[B
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/graphics/Rect;

    .line 971
    .local v3, "faceRectangles":[Landroid/graphics/Rect;
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 972
    .local v4, "faceIds":[I
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_LANDMARKS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 974
    .local v5, "faceLandmarks":[I
    const/4 v6, 0x5

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v9, 0x1

    aput-object v2, v7, v9

    const/4 v10, 0x2

    aput-object v3, v7, v10

    const/4 v11, 0x3

    aput-object v4, v7, v11

    const/4 v12, 0x4

    aput-object v5, v7, v12

    invoke-static {v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 975
    const/4 v6, 0x0

    return-object v6

    .line 978
    :cond_44
    const-string v7, "CameraMetadataJV"

    if-nez v1, :cond_52

    .line 979
    const-string v13, "Face detect mode metadata is null, assuming the mode is SIMPLE"

    invoke-static {v7, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_8b

    .line 981
    :cond_52
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-le v13, v10, :cond_5d

    .line 983
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_8b

    .line 985
    :cond_5d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_66

    .line 986
    new-array v6, v8, [Landroid/hardware/camera2/params/Face;

    return-object v6

    .line 988
    :cond_66
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v13, v9, :cond_8b

    .line 989
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v13, v10, :cond_8b

    .line 990
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown face detect mode: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    new-array v6, v8, [Landroid/hardware/camera2/params/Face;

    return-object v6

    .line 996
    :cond_8b
    :goto_8b
    if-eqz v2, :cond_188

    if-nez v3, :cond_91

    goto/16 :goto_188

    .line 1000
    :cond_91
    array-length v13, v2

    array-length v14, v3

    if-eq v13, v14, :cond_ae

    .line 1001
    new-array v13, v10, [Ljava/lang/Object;

    array-length v14, v2

    .line 1002
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v8

    array-length v14, v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    .line 1001
    const-string v14, "Face score size(%d) doesn match face rectangle size(%d)!"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_ae
    array-length v13, v2

    array-length v14, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1008
    .local v13, "numFaces":I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v10, :cond_fe

    .line 1009
    if-eqz v4, :cond_f5

    if-nez v5, :cond_bf

    goto :goto_f5

    .line 1014
    :cond_bf
    array-length v14, v4

    if-ne v14, v13, :cond_c7

    array-length v14, v5

    mul-int/lit8 v15, v13, 0x6

    if-eq v14, v15, :cond_e8

    .line 1016
    :cond_c7
    new-array v14, v11, [Ljava/lang/Object;

    array-length v15, v4

    .line 1018
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v8

    array-length v8, v5

    mul-int/lit8 v8, v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v14, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v14, v10

    .line 1016
    const-string v8, "Face id size(%d), or face landmark size(%d) don\'tmatch face number(%d)!"

    invoke-static {v8, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_e8
    array-length v7, v4

    invoke-static {v13, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1022
    .end local v13    # "numFaces":I
    .local v7, "numFaces":I
    array-length v8, v5

    div-int/lit8 v8, v8, 0x6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v13

    .end local v7    # "numFaces":I
    .restart local v13    # "numFaces":I
    goto :goto_fe

    .line 1010
    :cond_f5
    :goto_f5
    const-string v8, "Expect face ids and landmarks to be non-null for FULL mode,fallback to SIMPLE mode"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1026
    :cond_fe
    :goto_fe
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    .local v7, "faceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/Face;>;"
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v14, 0x64

    if-ne v8, v9, :cond_126

    .line 1028
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_10c
    if-ge v6, v13, :cond_125

    .line 1029
    aget-byte v8, v2, v6

    if-gt v8, v14, :cond_122

    aget-byte v8, v2, v6

    if-lt v8, v9, :cond_122

    .line 1031
    new-instance v8, Landroid/hardware/camera2/params/Face;

    aget-object v10, v3, v6

    aget-byte v11, v2, v6

    invoke-direct {v8, v10, v11}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    :cond_122
    add-int/lit8 v6, v6, 0x1

    goto :goto_10c

    .end local v6    # "i":I
    :cond_125
    goto :goto_17e

    .line 1036
    :cond_126
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_127
    if-ge v8, v13, :cond_17e

    .line 1037
    aget-byte v15, v2, v8

    if-gt v15, v14, :cond_178

    aget-byte v15, v2, v8

    if-lt v15, v9, :cond_178

    aget v15, v4, v8

    if-ltz v15, :cond_178

    .line 1040
    new-instance v15, Landroid/graphics/Point;

    mul-int/lit8 v16, v8, 0x6

    aget v14, v5, v16

    mul-int/lit8 v16, v8, 0x6

    add-int/lit8 v16, v16, 0x1

    aget v9, v5, v16

    invoke-direct {v15, v14, v9}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v20, v15

    .line 1042
    .local v20, "leftEye":Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/Point;

    mul-int/lit8 v14, v8, 0x6

    add-int/2addr v14, v10

    aget v14, v5, v14

    mul-int/lit8 v15, v8, 0x6

    add-int/2addr v15, v11

    aget v15, v5, v15

    invoke-direct {v9, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v21, v9

    .line 1044
    .local v21, "rightEye":Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/Point;

    mul-int/lit8 v14, v8, 0x6

    add-int/2addr v14, v12

    aget v14, v5, v14

    mul-int/lit8 v15, v8, 0x6

    add-int/2addr v15, v6

    aget v15, v5, v15

    invoke-direct {v9, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v22, v9

    .line 1046
    .local v22, "mouth":Landroid/graphics/Point;
    new-instance v9, Landroid/hardware/camera2/params/Face;

    aget-object v17, v3, v8

    aget-byte v18, v2, v8

    aget v19, v4, v8

    move-object/from16 v16, v9

    invoke-direct/range {v16 .. v22}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 1048
    .local v9, "face":Landroid/hardware/camera2/params/Face;
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    .end local v9    # "face":Landroid/hardware/camera2/params/Face;
    .end local v20    # "leftEye":Landroid/graphics/Point;
    .end local v21    # "rightEye":Landroid/graphics/Point;
    .end local v22    # "mouth":Landroid/graphics/Point;
    :cond_178
    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    const/16 v14, 0x64

    goto :goto_127

    .line 1052
    .end local v8    # "i":I
    :cond_17e
    :goto_17e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/hardware/camera2/params/Face;

    .line 1053
    .local v6, "faces":[Landroid/hardware/camera2/params/Face;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1054
    return-object v6

    .line 999
    .end local v6    # "faces":[Landroid/hardware/camera2/params/Face;
    .end local v7    # "faceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/Face;>;"
    .end local v13    # "numFaces":I
    :cond_188
    :goto_188
    new-array v6, v8, [Landroid/hardware/camera2/params/Face;

    return-object v6
.end method

.method private greylist-max-o getGpsLocation()Landroid/location/Location;
    .registers 13

    .line 1118
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1119
    .local v0, "processingMethod":Ljava/lang/String;
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 1120
    .local v1, "coords":[D
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1122
    .local v2, "timeStamp":Ljava/lang/Long;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const/4 v6, 0x2

    aput-object v2, v3, v6

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1123
    const/4 v3, 0x0

    return-object v3

    .line 1126
    :cond_2c
    new-instance v3, Landroid/location/Location;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->translateProcessToLocationProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v3, "l":Landroid/location/Location;
    const-string v7, "CameraMetadataJV"

    if-eqz v2, :cond_44

    .line 1129
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setTime(J)V

    goto :goto_49

    .line 1131
    :cond_44
    const-string v8, "getGpsLocation - No timestamp for GPS location."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :goto_49
    if-eqz v1, :cond_5b

    .line 1135
    aget-wide v7, v1, v4

    invoke-virtual {v3, v7, v8}, Landroid/location/Location;->setLatitude(D)V

    .line 1136
    aget-wide v4, v1, v5

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 1137
    aget-wide v4, v1, v6

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setAltitude(D)V

    goto :goto_60

    .line 1139
    :cond_5b
    const-string v4, "getGpsLocation - No coordinates for GPS location"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :goto_60
    return-object v3
.end method

.method private greylist-max-o getLensShadingMap()Landroid/hardware/camera2/params/LensShadingMap;
    .registers 6

    .line 1077
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 1078
    .local v0, "lsmArray":[F
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 1081
    .local v1, "s":Landroid/util/Size;
    const/4 v2, 0x0

    if-nez v0, :cond_14

    .line 1082
    return-object v2

    .line 1085
    :cond_14
    if-nez v1, :cond_1e

    .line 1086
    const-string v3, "CameraMetadataJV"

    const-string v4, "getLensShadingMap - Lens shading map size was null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    return-object v2

    .line 1090
    :cond_1e
    new-instance v2, Landroid/hardware/camera2/params/LensShadingMap;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Landroid/hardware/camera2/params/LensShadingMap;-><init>([FII)V

    .line 1091
    .local v2, "map":Landroid/hardware/camera2/params/LensShadingMap;
    return-object v2
.end method

.method private blacklist getMandatory10BitStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 2

    .line 1519
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMandatoryConcurrentStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 2

    .line 1523
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    if-nez v0, :cond_6

    .line 1524
    const/4 v0, 0x0

    return-object v0

    .line 1526
    :cond_6
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMandatoryMaximumResolutionStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 2

    .line 1530
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isUltraHighResolutionSensor()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1531
    const/4 v0, 0x0

    return-object v0

    .line 1533
    :cond_8
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMandatoryPreviewStabilizationStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 2

    .line 1545
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMandatoryStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 2

    .line 1537
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 14
    .param p1, "mandatoryStreamsType"    # I

    .line 1479
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1480
    .local v0, "capabilities":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1481
    .local v1, "caps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1482
    array-length v2, v0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_22

    aget v4, v0, v3

    .line 1483
    .local v4, "c":I
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1482
    .end local v4    # "c":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1485
    :cond_22
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1486
    .local v10, "hwLevel":I
    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;

    iget v3, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    .line 1487
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v7

    .line 1488
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getStreamConfigurationMapMaximumResolution()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v8

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isPreviewStabilizationSupported()Z

    move-result v9

    move-object v2, v11

    move v4, v10

    move-object v6, v1

    invoke-direct/range {v2 .. v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;-><init>(IILandroid/util/Size;Ljava/util/List;Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/StreamConfigurationMap;Z)V

    .line 1490
    .local v2, "build":Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;
    const/4 v3, 0x0

    .line 1491
    .local v3, "combs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    packed-switch p1, :pswitch_data_80

    .line 1508
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryStreamCombinations()Ljava/util/List;

    move-result-object v3

    goto :goto_68

    .line 1505
    :pswitch_4f
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryPreviewStabilizedStreamCombinations()Ljava/util/List;

    move-result-object v3

    .line 1506
    goto :goto_68

    .line 1502
    :pswitch_54
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryStreamUseCaseCombinations()Ljava/util/List;

    move-result-object v3

    .line 1503
    goto :goto_68

    .line 1499
    :pswitch_59
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatory10BitStreamCombinations()Ljava/util/List;

    move-result-object v3

    .line 1500
    goto :goto_68

    .line 1493
    :pswitch_5e
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryConcurrentStreamCombinations()Ljava/util/List;

    move-result-object v3

    .line 1494
    goto :goto_68

    .line 1496
    :pswitch_63
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryMaximumResolutionStreamCombinations()Ljava/util/List;

    move-result-object v3

    .line 1497
    nop

    .line 1510
    :goto_68
    if-eqz v3, :cond_7e

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7e

    .line 1511
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination;

    .line 1512
    .local v4, "combArray":[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination;

    .line 1513
    return-object v4

    .line 1515
    .end local v4    # "combArray":[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    :cond_7e
    const/4 v4, 0x0

    return-object v4

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_63
        :pswitch_5e
        :pswitch_59
        :pswitch_54
        :pswitch_4f
    .end packed-switch
.end method

.method private blacklist getMandatoryUseCaseStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 2

    .line 1541
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;I)Landroid/hardware/camera2/marshal/Marshaler;
    .registers 3
    .param p1, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT;>;"
        }
    .end annotation

    .line 2322
    .local p0, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTypeReference()Landroid/hardware/camera2/utils/TypeReference;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getMaxNumOutputs(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1683
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    const/4 v0, 0x0

    .line 1684
    .local v0, "RAW":I
    const/4 v1, 0x1

    .line 1685
    .local v1, "PROC":I
    const/4 v2, 0x2

    .line 1688
    .local v2, "PROC_STALLING":I
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 1690
    .local v3, "maxNumOutputs":[I
    if-nez v3, :cond_f

    .line 1691
    const/4 v4, 0x0

    return-object v4

    .line 1694
    :cond_f
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1695
    const/4 v4, 0x0

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 1696
    :cond_1f
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1697
    const/4 v4, 0x1

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 1698
    :cond_2f
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1699
    const/4 v4, 0x2

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 1701
    :cond_3f
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method private greylist-max-o getMaxRegions(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1660
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    const/4 v0, 0x0

    .line 1661
    .local v0, "AE":I
    const/4 v1, 0x1

    .line 1662
    .local v1, "AWB":I
    const/4 v2, 0x2

    .line 1665
    .local v2, "AF":I
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 1667
    .local v3, "maxRegions":[I
    if-nez v3, :cond_f

    .line 1668
    const/4 v4, 0x0

    return-object v4

    .line 1671
    :cond_f
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1672
    const/4 v4, 0x0

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 1673
    :cond_1f
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1674
    const/4 v4, 0x1

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 1675
    :cond_2f
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1676
    const/4 v4, 0x2

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 1678
    :cond_3f
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public static greylist-max-o getNativeType(IJ)I
    .registers 4
    .param p0, "tag"    # I
    .param p1, "vendorId"    # J

    .line 2256
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTag(IJ)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getOisSamples()[Landroid/hardware/camera2/params/OisSample;
    .registers 11

    .line 1723
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_TIMESTAMPS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1724
    .local v0, "timestamps":[J
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_X_SHIFTS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 1725
    .local v1, "xShifts":[F
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_Y_SHIFTS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 1727
    .local v2, "yShifts":[F
    if-nez v0, :cond_32

    .line 1728
    if-nez v1, :cond_29

    .line 1732
    if-nez v2, :cond_20

    .line 1736
    const/4 v3, 0x0

    return-object v3

    .line 1733
    :cond_20
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "timestamps is null but yShifts is not"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1729
    :cond_29
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "timestamps is null but xShifts is not"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1739
    :cond_32
    if-eqz v1, :cond_9c

    .line 1743
    if-eqz v2, :cond_93

    .line 1747
    array-length v3, v1

    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v3, v4, :cond_76

    .line 1753
    array-length v3, v2

    array-length v4, v0

    if-ne v3, v4, :cond_59

    .line 1759
    array-length v3, v0

    new-array v3, v3, [Landroid/hardware/camera2/params/OisSample;

    .line 1760
    .local v3, "samples":[Landroid/hardware/camera2/params/OisSample;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_45
    array-length v5, v0

    if-ge v4, v5, :cond_58

    .line 1761
    new-instance v5, Landroid/hardware/camera2/params/OisSample;

    aget-wide v6, v0, v4

    aget v8, v1, v4

    aget v9, v2, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/hardware/camera2/params/OisSample;-><init>(JFF)V

    aput-object v5, v3, v4

    .line 1760
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 1763
    .end local v4    # "i":I
    :cond_58
    return-object v3

    .line 1754
    .end local v3    # "samples":[Landroid/hardware/camera2/params/OisSample;
    :cond_59
    new-instance v3, Ljava/lang/AssertionError;

    new-array v4, v6, [Ljava/lang/Object;

    array-length v6, v0

    .line 1755
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    array-length v5, v2

    .line 1756
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 1754
    const-string/jumbo v5, "timestamps has %d entries but yShifts has %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1748
    :cond_76
    new-instance v3, Ljava/lang/AssertionError;

    new-array v4, v6, [Ljava/lang/Object;

    array-length v6, v0

    .line 1749
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    array-length v5, v1

    .line 1750
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 1748
    const-string/jumbo v5, "timestamps has %d entries but xShifts has %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1744
    :cond_93
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "timestamps is not null but yShifts is"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1740
    :cond_9c
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "timestamps is not null but xShifts is"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private greylist-max-o getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;
    .registers 34

    .line 1550
    move-object/from16 v0, p0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1552
    .local v1, "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1554
    .local v2, "minFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1556
    .local v3, "stallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1558
    .local v4, "depthConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1560
    .local v21, "depthMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v22, v5

    check-cast v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1562
    .local v22, "depthStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v23, v5

    check-cast v23, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1564
    .local v23, "dynamicDepthConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v24, v5

    check-cast v24, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1566
    .local v24, "dynamicDepthMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v25, v5

    check-cast v25, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1568
    .local v25, "dynamicDepthStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v26, v5

    check-cast v26, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1570
    .local v26, "heicConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v27, v5

    check-cast v27, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1572
    .local v27, "heicMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v28, v5

    check-cast v28, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1574
    .local v28, "heicStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v29, v5

    check-cast v29, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 1576
    .local v29, "highSpeedVideoConfigurations":[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v30, v5

    check-cast v30, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 1578
    .local v30, "inputOutputFormatsMap":Landroid/hardware/camera2/params/ReprocessFormatsMap;
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isBurstSupported()Z

    move-result v31

    .line 1581
    .local v31, "listHighResolution":Z
    invoke-static {}, Landroid/hardware/camera2/impl/CameraExtStub;->isCustomStreamConfigurationEnabled()Z

    move-result v5

    if-eqz v5, :cond_de

    .line 1582
    iget v5, v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 1583
    .local v5, "cameraIdStr":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1585
    .local v6, "configurationList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    invoke-static {v6, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1586
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v2

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    .local v7, "minFrameDurationList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    invoke-static {v7, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1589
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v3

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1591
    .local v8, "stallDurationList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    invoke-static {v8, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1592
    const/4 v9, 0x0

    .line 1593
    .local v9, "changed":Z
    iget-object v10, v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mPackageName:Ljava/lang/String;

    invoke-static {v10, v5, v6, v7, v8}, Landroid/hardware/camera2/impl/CameraExtStub;->addMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v10

    or-int/2addr v9, v10

    .line 1595
    iget-object v10, v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mPackageName:Ljava/lang/String;

    invoke-static {v10, v5, v6, v7, v8}, Landroid/hardware/camera2/impl/CameraExtStub;->limitMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v10

    or-int/2addr v9, v10

    .line 1597
    if-eqz v9, :cond_de

    .line 1598
    const/4 v10, 0x0

    new-array v11, v10, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-interface {v6, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object v1, v11

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1599
    new-array v11, v10, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-interface {v7, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object v2, v11

    check-cast v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1600
    new-array v10, v10, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-interface {v8, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v3, v10

    check-cast v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1605
    .end local v5    # "cameraIdStr":Ljava/lang/String;
    .end local v6    # "configurationList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .end local v7    # "minFrameDurationList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    .end local v8    # "stallDurationList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    .end local v9    # "changed":Z
    :cond_de
    new-instance v32, Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-object/from16 v5, v32

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    move-object/from16 v16, v27

    move-object/from16 v17, v28

    move-object/from16 v18, v29

    move-object/from16 v19, v30

    move/from16 v20, v31

    invoke-direct/range {v5 .. v20}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V

    return-object v32
.end method

.method private blacklist getStreamConfigurationMapMaximumResolution()Landroid/hardware/camera2/params/StreamConfigurationMap;
    .registers 35

    .line 1616
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isUltraHighResolutionSensor()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1617
    const/4 v1, 0x0

    return-object v1

    .line 1619
    :cond_a
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    .local v1, "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    move-object v3, v1

    .line 1621
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .local v19, "minFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    move-object/from16 v4, v19

    .line 1623
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .local v20, "stallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    move-object/from16 v5, v20

    .line 1625
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, [Landroid/hardware/camera2/params/StreamConfiguration;

    .local v21, "depthConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    move-object/from16 v6, v21

    .line 1627
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .local v22, "depthMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    move-object/from16 v7, v22

    .line 1629
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .local v23, "depthStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    move-object/from16 v8, v23

    .line 1631
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, [Landroid/hardware/camera2/params/StreamConfiguration;

    .local v24, "dynamicDepthConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    move-object/from16 v9, v24

    .line 1633
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .local v25, "dynamicDepthMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    move-object/from16 v10, v25

    .line 1635
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .local v26, "dynamicDepthStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    move-object/from16 v11, v26

    .line 1637
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, [Landroid/hardware/camera2/params/StreamConfiguration;

    .local v27, "heicConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    move-object/from16 v12, v27

    .line 1639
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .local v28, "heicMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    move-object/from16 v13, v28

    .line 1641
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .local v29, "heicStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    move-object/from16 v14, v29

    .line 1643
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .local v30, "highSpeedVideoConfigurations":[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    move-object/from16 v15, v30

    .line 1645
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .local v31, "inputOutputFormatsMap":Landroid/hardware/camera2/params/ReprocessFormatsMap;
    move-object/from16 v16, v31

    .line 1648
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isBurstSupported()Z

    move-result v32

    .local v32, "listHighResolution":Z
    move/from16 v17, v32

    .line 1649
    new-instance v33, Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-object/from16 v2, v33

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    return-object v33
.end method

.method public static greylist-max-o getTag(Ljava/lang/String;)I
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .line 2231
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKey(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getTag(Ljava/lang/String;J)I
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "vendorId"    # J

    .line 2243
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKey(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getTonemapCurve()Landroid/hardware/camera2/params/TonemapCurve;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/hardware/camera2/params/TonemapCurve;"
        }
    .end annotation

    .line 1706
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 1707
    .local v0, "red":[F
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 1708
    .local v1, "green":[F
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 1710
    .local v2, "blue":[F
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2c

    .line 1711
    return-object v4

    .line 1714
    :cond_2c
    if-eqz v0, :cond_39

    if-eqz v1, :cond_39

    if-nez v2, :cond_33

    goto :goto_39

    .line 1718
    :cond_33
    new-instance v3, Landroid/hardware/camera2/params/TonemapCurve;

    invoke-direct {v3, v0, v1, v2}, Landroid/hardware/camera2/params/TonemapCurve;-><init>([F[F[F)V

    .line 1719
    .local v3, "tc":Landroid/hardware/camera2/params/TonemapCurve;
    return-object v3

    .line 1715
    .end local v3    # "tc":Landroid/hardware/camera2/params/TonemapCurve;
    :cond_39
    :goto_39
    const-string v3, "CameraMetadataJV"

    const-string v5, "getTonemapCurve - missing tone curve components"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    return-object v4
.end method

.method private blacklist isBurstSupported()Z
    .registers 2

    .line 1455
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isCapabilitySupported(I)Z
    .registers 7
    .param p1, "capabilityRequested"    # I

    .line 1433
    const/4 v0, 0x0

    .line 1435
    .local v0, "ret":Z
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1436
    .local v1, "capabilities":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_16

    aget v4, v1, v3

    .line 1437
    .local v4, "capability":I
    if-ne p1, v4, :cond_13

    .line 1438
    const/4 v0, 0x1

    .line 1439
    goto :goto_16

    .line 1436
    .end local v4    # "capability":I
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1443
    :cond_16
    :goto_16
    return v0
.end method

.method private blacklist isPreviewStabilizationSupported()Z
    .registers 7

    .line 1460
    const/4 v0, 0x0

    .line 1462
    .local v0, "ret":Z
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1463
    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1464
    .local v1, "videoStabilizationModes":[I
    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 1465
    return v2

    .line 1467
    :cond_d
    array-length v3, v1

    :goto_e
    if-ge v2, v3, :cond_1a

    aget v4, v1, v2

    .line 1468
    .local v4, "mode":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_17

    .line 1469
    const/4 v0, 0x1

    .line 1470
    goto :goto_1a

    .line 1467
    .end local v4    # "mode":I
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1474
    :cond_1a
    :goto_1a
    return v0
.end method

.method public static greylist-max-o move(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 2
    .param p0, "other"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 418
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 419
    .local v0, "newObject":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->swap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 420
    return-object v0
.end method

.method private static native greylist-max-o nativeAllocate()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeAllocateCopy(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static synchronized native blacklist nativeClose(J)V
.end method

.method private static synchronized native blacklist nativeDump(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static synchronized native blacklist nativeGetAllVendorKeys(JLjava/lang/Class;)Ljava/util/ArrayList;
.end method

.method private static synchronized native blacklist nativeGetBufferSize(J)J
.end method

.method private static synchronized native blacklist nativeGetEntryCount(J)I
.end method

.method private static native greylist-max-o nativeGetTagFromKey(Ljava/lang/String;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static synchronized native greylist-max-r nativeGetTagFromKeyLocal(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeGetTypeFromTag(IJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static synchronized native greylist-max-r nativeGetTypeFromTagLocal(JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private static synchronized native blacklist nativeIsEmpty(J)Z
.end method

.method private static synchronized native blacklist nativeReadFromParcel(Landroid/os/Parcel;J)V
.end method

.method private static synchronized native greylist-max-r nativeReadValues(IJ)[B
.end method

.method private static native blacklist nativeSetVendorId(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetupGlobalVendorTagDescriptor()I
.end method

.method private static synchronized native blacklist nativeSwap(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method private static native blacklist nativeUpdate(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static synchronized native blacklist nativeWriteToParcel(Landroid/os/Parcel;J)V
.end method

.method private static synchronized native blacklist nativeWriteValues(I[BJ)V
.end method

.method private blacklist parseRecommendedConfigurations([Landroid/hardware/camera2/params/RecommendedStreamConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Z)V
    .registers 37
    .param p1, "configurations"    # [Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .param p2, "fullMap"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .param p3, "isDepth"    # Z
    .param p7, "supportsPrivate"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/params/RecommendedStreamConfiguration;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;>;[Z)V"
        }
    .end annotation

    .line 1174
    .local p4, "streamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    .local p5, "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .local p6, "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1175
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1176
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1177
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_16
    if-ge v6, v5, :cond_33

    .line 1178
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 1183
    .end local v6    # "i":I
    :cond_33
    array-length v6, v0

    const/4 v7, 0x0

    move v8, v7

    :goto_36
    if-ge v8, v6, :cond_13c

    aget-object v9, v0, v8

    .line 1184
    .local v9, "c":Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    invoke-virtual {v9}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->getWidth()I

    move-result v14

    .line 1185
    .local v14, "width":I
    invoke-virtual {v9}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->getHeight()I

    move-result v15

    .line 1186
    .local v15, "height":I
    invoke-virtual {v9}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->getFormat()I

    move-result v13

    .line 1188
    .local v13, "internalFormat":I
    if-eqz p3, :cond_4d

    invoke-static {v13}, Landroid/hardware/camera2/params/StreamConfigurationMap;->depthFormatToPublic(I)I

    move-result v10

    goto :goto_51

    .line 1189
    :cond_4d
    invoke-static {v13}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    move-result v10

    :goto_51
    move v12, v10

    .line 1190
    .local v12, "publicFormat":I
    new-instance v10, Landroid/util/Size;

    invoke-direct {v10, v14, v15}, Landroid/util/Size;-><init>(II)V

    move-object v11, v10

    .line 1191
    .local v11, "sz":Landroid/util/Size;
    invoke-virtual {v9}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->getUsecaseBitmap()I

    move-result v10

    .line 1193
    .local v10, "usecaseBitmap":I
    invoke-virtual {v9}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->isInput()Z

    move-result v16

    if-nez v16, :cond_102

    .line 1194
    const/16 v16, 0x0

    .line 1195
    .local v16, "minDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    const/16 v17, 0x0

    .line 1197
    .local v17, "stallDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    new-instance v5, Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-direct {v5, v13, v14, v15, v7}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    .line 1200
    .local v5, "streamConfiguration":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v1, v12, v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v18

    .line 1201
    .local v18, "minFrameDuration":J
    const-wide/16 v20, 0x0

    cmp-long v22, v18, v20

    if-lez v22, :cond_91

    .line 1202
    new-instance v22, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move v7, v10

    .end local v10    # "usecaseBitmap":I
    .local v7, "usecaseBitmap":I
    move-object/from16 v10, v22

    move-object v0, v11

    .end local v11    # "sz":Landroid/util/Size;
    .local v0, "sz":Landroid/util/Size;
    move v11, v13

    move/from16 v23, v6

    move v6, v12

    .end local v12    # "publicFormat":I
    .local v6, "publicFormat":I
    move v12, v14

    move/from16 v24, v13

    .end local v13    # "internalFormat":I
    .local v24, "internalFormat":I
    move v13, v15

    move/from16 v25, v14

    move/from16 v26, v15

    .end local v14    # "width":I
    .end local v15    # "height":I
    .local v25, "width":I
    .local v26, "height":I
    move-wide/from16 v14, v18

    invoke-direct/range {v10 .. v15}, Landroid/hardware/camera2/params/StreamConfigurationDuration;-><init>(IIIJ)V

    move-object/from16 v16, v22

    move-object/from16 v14, v16

    goto :goto_9e

    .line 1201
    .end local v0    # "sz":Landroid/util/Size;
    .end local v6    # "publicFormat":I
    .end local v7    # "usecaseBitmap":I
    .end local v24    # "internalFormat":I
    .end local v25    # "width":I
    .end local v26    # "height":I
    .restart local v10    # "usecaseBitmap":I
    .restart local v11    # "sz":Landroid/util/Size;
    .restart local v12    # "publicFormat":I
    .restart local v13    # "internalFormat":I
    .restart local v14    # "width":I
    .restart local v15    # "height":I
    :cond_91
    move/from16 v23, v6

    move v7, v10

    move-object v0, v11

    move v6, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v15

    .end local v10    # "usecaseBitmap":I
    .end local v11    # "sz":Landroid/util/Size;
    .end local v12    # "publicFormat":I
    .end local v13    # "internalFormat":I
    .end local v14    # "width":I
    .end local v15    # "height":I
    .restart local v0    # "sz":Landroid/util/Size;
    .restart local v6    # "publicFormat":I
    .restart local v7    # "usecaseBitmap":I
    .restart local v24    # "internalFormat":I
    .restart local v25    # "width":I
    .restart local v26    # "height":I
    move-object/from16 v14, v16

    .line 1206
    .end local v16    # "minDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .local v14, "minDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :goto_9e
    invoke-virtual {v1, v6, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    move-result-wide v27

    .line 1207
    .local v27, "stallDuration":J
    cmp-long v10, v27, v20

    if-lez v10, :cond_bd

    .line 1208
    new-instance v16, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v10, v16

    move/from16 v11, v24

    move/from16 v12, v25

    move/from16 v13, v26

    move-object/from16 v22, v0

    move-object v0, v14

    .end local v14    # "minDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .local v0, "minDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .local v22, "sz":Landroid/util/Size;
    move-wide/from16 v14, v27

    invoke-direct/range {v10 .. v15}, Landroid/hardware/camera2/params/StreamConfigurationDuration;-><init>(IIIJ)V

    move-object/from16 v17, v16

    move-object/from16 v10, v17

    goto :goto_c2

    .line 1207
    .end local v22    # "sz":Landroid/util/Size;
    .local v0, "sz":Landroid/util/Size;
    .restart local v14    # "minDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_bd
    move-object/from16 v22, v0

    move-object v0, v14

    .end local v14    # "minDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .local v0, "minDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .restart local v22    # "sz":Landroid/util/Size;
    move-object/from16 v10, v17

    .line 1212
    .end local v17    # "stallDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .local v10, "stallDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :goto_c2
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_c3
    const/16 v12, 0x20

    if-ge v11, v12, :cond_101

    .line 1213
    const/4 v13, 0x1

    shl-int v14, v13, v11

    and-int v13, v7, v14

    if-eqz v13, :cond_fe

    .line 1214
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1215
    .local v13, "sc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    cmp-long v14, v18, v20

    if-lez v14, :cond_e4

    .line 1218
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 1219
    .local v14, "scd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    .end local v14    # "scd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    :cond_e4
    cmp-long v14, v27, v20

    if-lez v14, :cond_f1

    .line 1223
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 1224
    .local v14, "scs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    .end local v14    # "scs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    :cond_f1
    if-eqz p7, :cond_fe

    aget-boolean v14, p7, v11

    if-nez v14, :cond_fe

    const/16 v14, 0x22

    if-ne v6, v14, :cond_fe

    .line 1229
    const/4 v14, 0x1

    aput-boolean v14, p7, v11

    .line 1212
    .end local v13    # "sc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    :cond_fe
    add-int/lit8 v11, v11, 0x1

    goto :goto_c3

    .line 1233
    .end local v0    # "minDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v5    # "streamConfiguration":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v10    # "stallDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v11    # "i":I
    .end local v18    # "minFrameDuration":J
    .end local v27    # "stallDuration":J
    :cond_101
    goto :goto_12a

    .line 1234
    .end local v6    # "publicFormat":I
    .end local v7    # "usecaseBitmap":I
    .end local v22    # "sz":Landroid/util/Size;
    .end local v24    # "internalFormat":I
    .end local v25    # "width":I
    .end local v26    # "height":I
    .local v10, "usecaseBitmap":I
    .local v11, "sz":Landroid/util/Size;
    .restart local v12    # "publicFormat":I
    .local v13, "internalFormat":I
    .local v14, "width":I
    .restart local v15    # "height":I
    :cond_102
    move/from16 v23, v6

    move v7, v10

    move-object/from16 v22, v11

    move v6, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v15

    const/16 v12, 0x20

    .end local v10    # "usecaseBitmap":I
    .end local v11    # "sz":Landroid/util/Size;
    .end local v12    # "publicFormat":I
    .end local v13    # "internalFormat":I
    .end local v14    # "width":I
    .end local v15    # "height":I
    .restart local v6    # "publicFormat":I
    .restart local v7    # "usecaseBitmap":I
    .restart local v22    # "sz":Landroid/util/Size;
    .restart local v24    # "internalFormat":I
    .restart local v25    # "width":I
    .restart local v26    # "height":I
    const/16 v0, 0x10

    if-ne v7, v0, :cond_134

    .line 1239
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1241
    .local v0, "sc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    new-instance v5, Landroid/hardware/camera2/params/StreamConfiguration;

    move/from16 v13, v24

    move/from16 v10, v25

    move/from16 v11, v26

    const/4 v14, 0x1

    .end local v24    # "internalFormat":I
    .end local v25    # "width":I
    .end local v26    # "height":I
    .local v10, "width":I
    .local v11, "height":I
    .restart local v13    # "internalFormat":I
    invoke-direct {v5, v13, v10, v11, v14}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    .end local v0    # "sc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .end local v6    # "publicFormat":I
    .end local v7    # "usecaseBitmap":I
    .end local v9    # "c":Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .end local v10    # "width":I
    .end local v11    # "height":I
    .end local v13    # "internalFormat":I
    .end local v22    # "sz":Landroid/util/Size;
    :goto_12a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p1

    move v5, v12

    move/from16 v6, v23

    const/4 v7, 0x0

    goto/16 :goto_36

    .line 1235
    .restart local v6    # "publicFormat":I
    .restart local v7    # "usecaseBitmap":I
    .restart local v9    # "c":Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .restart local v22    # "sz":Landroid/util/Size;
    .restart local v24    # "internalFormat":I
    .restart local v25    # "width":I
    .restart local v26    # "height":I
    :cond_134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Recommended input stream configurations should only be advertised in the ZSL use case!"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1245
    .end local v6    # "publicFormat":I
    .end local v7    # "usecaseBitmap":I
    .end local v9    # "c":Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .end local v22    # "sz":Landroid/util/Size;
    .end local v24    # "internalFormat":I
    .end local v25    # "width":I
    .end local v26    # "height":I
    :cond_13c
    return-void
.end method

.method private static greylist-max-o registerAllMarshalers()V
    .registers 5

    .line 2328
    sget-boolean v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->DEBUG:Z

    const-string v1, "CameraMetadataJV"

    if-eqz v0, :cond_b

    .line 2329
    const-string v0, "Shall register metadata marshalers"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    :cond_b
    const/16 v0, 0x15

    new-array v0, v0, [Landroid/hardware/camera2/marshal/MarshalQueryable;

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v2, 0x2

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;-><init>()V

    aput-object v4, v0, v2

    const/4 v2, 0x3

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;-><init>()V

    aput-object v4, v0, v2

    const/4 v2, 0x4

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;-><init>()V

    aput-object v4, v0, v2

    const/4 v2, 0x5

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;-><init>()V

    aput-object v4, v0, v2

    const/4 v2, 0x6

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSize;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSize;-><init>()V

    aput-object v4, v0, v2

    const/4 v2, 0x7

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0x8

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0x9

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0xa

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0xb

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0xc

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0xd

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0xe

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0xf

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0x10

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0x11

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0x12

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0x13

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRecommendedStreamConfiguration;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRecommendedStreamConfiguration;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0x14

    new-instance v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;

    invoke-direct {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;-><init>()V

    aput-object v4, v0, v2

    .line 2363
    .local v0, "queryList":[Landroid/hardware/camera2/marshal/MarshalQueryable;
    array-length v2, v0

    :goto_c5
    if-ge v3, v2, :cond_cf

    aget-object v4, v0, v3

    .line 2364
    .local v4, "query":Landroid/hardware/camera2/marshal/MarshalQueryable;
    invoke-static {v4}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    .line 2363
    .end local v4    # "query":Landroid/hardware/camera2/marshal/MarshalQueryable;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c5

    .line 2366
    :cond_cf
    sget-boolean v2, Landroid/hardware/camera2/impl/CameraMetadataNative;->DEBUG:Z

    if-eqz v2, :cond_d8

    .line 2367
    const-string v2, "Registered metadata marshalers"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    :cond_d8
    return-void
.end method

.method private blacklist setAERegions(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .line 2017
    .local p1, "aeRegions":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_4

    .line 2018
    const/4 v0, 0x0

    return v0

    .line 2020
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS_SET:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2021
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2022
    return v1
.end method

.method private blacklist setAFRegions(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .line 2005
    .local p1, "afRegions":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_4

    .line 2006
    const/4 v0, 0x0

    return v0

    .line 2008
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS_SET:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2012
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2013
    return v1
.end method

.method private blacklist setAWBRegions(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .line 2026
    .local p1, "awbRegions":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_4

    .line 2027
    const/4 v0, 0x0

    return v0

    .line 2029
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS_SET:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2030
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2031
    return v1
.end method

.method private greylist-max-o setAvailableFormats([I)Z
    .registers 7
    .param p1, "value"    # [I

    .line 1929
    move-object v0, p1

    .line 1930
    .local v0, "availableFormat":[I
    if-nez p1, :cond_5

    .line 1932
    const/4 v1, 0x0

    return v1

    .line 1935
    :cond_5
    array-length v1, v0

    new-array v1, v1, [I

    .line 1936
    .local v1, "newValues":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v3, v0

    if-ge v2, v3, :cond_1d

    .line 1937
    aget v3, v0, v2

    aput v3, v1, v2

    .line 1938
    aget v3, v0, v2

    const/16 v4, 0x100

    if-ne v3, v4, :cond_1a

    .line 1939
    const/16 v3, 0x21

    aput v3, v1, v2

    .line 1936
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1943
    .end local v2    # "i":I
    :cond_1d
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 1944
    const/4 v2, 0x1

    return v2
.end method

.method private greylist-max-o setBase(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1822
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 1823
    return-void
.end method

.method private greylist-max-o setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1830
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 1831
    return-void
.end method

.method private greylist-max-o setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1826
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 1827
    return-void
.end method

.method private greylist-max-o setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1835
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1836
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v0

    .local v0, "tag":I
    goto :goto_18

    .line 1838
    .end local v0    # "tag":I
    :cond_b
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKeyLocal(JLjava/lang/String;)I

    move-result v0

    .line 1839
    .restart local v0    # "tag":I
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->cacheTag(I)V

    .line 1841
    :goto_18
    if-nez p2, :cond_1f

    .line 1843
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeValues(I[B)V

    .line 1844
    return-void

    .line 1847
    :cond_1f
    iget-wide v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v1, v2, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTagLocal(JI)I

    move-result v1

    .line 1848
    .local v1, "nativeType":I
    invoke-static {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v2

    .line 1849
    .local v2, "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TT;>;"
    invoke-virtual {v2, p2}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result v3

    .line 1852
    .local v3, "size":I
    new-array v4, v3, [B

    .line 1854
    .local v4, "values":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1855
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, p2, v5}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    .line 1857
    invoke-virtual {p0, v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeValues(I[B)V

    .line 1858
    return-void
.end method

.method private greylist-max-o setFaceRectangles([Landroid/graphics/Rect;)Z
    .registers 10
    .param p1, "faceRects"    # [Landroid/graphics/Rect;

    .line 1960
    if-nez p1, :cond_4

    .line 1961
    const/4 v0, 0x0

    return v0

    .line 1964
    :cond_4
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Rect;

    .line 1965
    .local v0, "newFaceRects":[Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_2f

    .line 1966
    new-instance v2, Landroid/graphics/Rect;

    aget-object v3, p1, v1

    iget v3, v3, Landroid/graphics/Rect;->left:I

    aget-object v4, p1, v1

    iget v4, v4, Landroid/graphics/Rect;->top:I

    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->right:I

    aget-object v6, p1, v1

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    aget-object v6, p1, v1

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    aget-object v7, p1, v1

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v0, v1

    .line 1965
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1973
    .end local v1    # "i":I
    :cond_2f
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 1974
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o setFaces([Landroid/hardware/camera2/params/Face;)Z
    .registers 15
    .param p1, "faces"    # [Landroid/hardware/camera2/params/Face;

    .line 904
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 905
    return v0

    .line 908
    :cond_4
    array-length v1, p1

    .line 911
    .local v1, "numFaces":I
    const/4 v2, 0x1

    .line 912
    .local v2, "fullMode":Z
    array-length v3, p1

    move v4, v0

    :goto_8
    if-ge v4, v3, :cond_24

    aget-object v5, p1, v4

    .line 913
    .local v5, "face":Landroid/hardware/camera2/params/Face;
    if-nez v5, :cond_19

    .line 914
    add-int/lit8 v1, v1, -0x1

    .line 915
    const-string v6, "CameraMetadataJV"

    const-string/jumbo v7, "setFaces - null face detected, skipping"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    goto :goto_21

    .line 919
    :cond_19
    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_21

    .line 920
    const/4 v2, 0x0

    .line 912
    .end local v5    # "face":Landroid/hardware/camera2/params/Face;
    :cond_21
    :goto_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 924
    :cond_24
    new-array v3, v1, [Landroid/graphics/Rect;

    .line 925
    .local v3, "faceRectangles":[Landroid/graphics/Rect;
    new-array v4, v1, [B

    .line 926
    .local v4, "faceScores":[B
    const/4 v5, 0x0

    .line 927
    .local v5, "faceIds":[I
    const/4 v6, 0x0

    .line 929
    .local v6, "faceLandmarks":[I
    if-eqz v2, :cond_32

    .line 930
    new-array v5, v1, [I

    .line 931
    mul-int/lit8 v7, v1, 0x6

    new-array v6, v7, [I

    .line 934
    :cond_32
    const/4 v7, 0x0

    .line 935
    .local v7, "i":I
    array-length v8, p1

    :goto_34
    if-ge v0, v8, :cond_a4

    aget-object v9, p1, v0

    .line 936
    .local v9, "face":Landroid/hardware/camera2/params/Face;
    if-nez v9, :cond_3b

    .line 937
    goto :goto_a1

    .line 940
    :cond_3b
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    aput-object v10, v3, v7

    .line 941
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v4, v7

    .line 943
    if-eqz v2, :cond_9f

    .line 944
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v10

    aput v10, v5, v7

    .line 946
    const/4 v10, 0x0

    .line 948
    .local v10, "j":I
    mul-int/lit8 v11, v7, 0x6

    add-int/lit8 v12, v10, 0x1

    .end local v10    # "j":I
    .local v12, "j":I
    add-int/2addr v11, v10

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    aput v10, v6, v11

    .line 949
    mul-int/lit8 v10, v7, 0x6

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "j":I
    .local v11, "j":I
    add-int/2addr v10, v12

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    aput v12, v6, v10

    .line 950
    mul-int/lit8 v10, v7, 0x6

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "j":I
    .restart local v12    # "j":I
    add-int/2addr v10, v11

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    aput v11, v6, v10

    .line 951
    mul-int/lit8 v10, v7, 0x6

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "j":I
    .restart local v11    # "j":I
    add-int/2addr v10, v12

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    aput v12, v6, v10

    .line 952
    mul-int/lit8 v10, v7, 0x6

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "j":I
    .restart local v12    # "j":I
    add-int/2addr v10, v11

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    aput v11, v6, v10

    .line 953
    mul-int/lit8 v10, v7, 0x6

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "j":I
    .restart local v11    # "j":I
    add-int/2addr v10, v12

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    aput v12, v6, v10

    .line 956
    .end local v11    # "j":I
    :cond_9f
    add-int/lit8 v7, v7, 0x1

    .line 935
    .end local v9    # "face":Landroid/hardware/camera2/params/Face;
    :goto_a1
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 959
    :cond_a4
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 960
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 961
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_LANDMARKS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 962
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_SCORES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 964
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o setGpsLocation(Landroid/location/Location;)Z
    .registers 9
    .param p1, "l"    # Landroid/location/Location;

    .line 1146
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1147
    return v0

    .line 1150
    :cond_4
    const/4 v1, 0x3

    new-array v1, v1, [D

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v1, v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const/4 v0, 0x1

    aput-wide v2, v1, v0

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 1151
    .local v1, "coords":[D
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->translateLocationProviderToProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1153
    .local v2, "processMethod":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 1155
    .local v3, "timestamp":J
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1156
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v5, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1158
    if-nez v2, :cond_43

    .line 1159
    const-string v5, "CameraMetadataJV"

    const-string/jumbo v6, "setGpsLocation - No process method, Location is not from a GPS or NETWORKprovider"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 1162
    :cond_43
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v5, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1164
    :goto_48
    return v0
.end method

.method private blacklist setScalerCropRegion(Landroid/graphics/Rect;)Z
    .registers 5
    .param p1, "cropRegion"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 1996
    if-nez p1, :cond_4

    .line 1997
    const/4 v0, 0x0

    return v0

    .line 1999
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION_SET:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2000
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2001
    return v1
.end method

.method private greylist-max-o setTonemapCurve(Landroid/hardware/camera2/params/TonemapCurve;)Z
    .registers 7
    .param p1, "tc"    # Landroid/hardware/camera2/params/TonemapCurve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/params/TonemapCurve;",
            ")Z"
        }
    .end annotation

    .line 1978
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1979
    return v0

    .line 1982
    :cond_4
    const/4 v1, 0x3

    new-array v1, v1, [[F

    .line 1983
    .local v1, "curve":[[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    const/4 v3, 0x2

    if-gt v2, v3, :cond_1d

    .line 1984
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    move-result v3

    .line 1985
    .local v3, "pointCount":I
    mul-int/lit8 v4, v3, 0x2

    new-array v4, v4, [F

    aput-object v4, v1, v2

    .line 1986
    aget-object v4, v1, v2

    invoke-virtual {p1, v2, v4, v0}, Landroid/hardware/camera2/params/TonemapCurve;->copyColorCurve(I[FI)V

    .line 1983
    .end local v3    # "pointCount":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1988
    .end local v2    # "i":I
    :cond_1d
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;

    aget-object v0, v1, v0

    invoke-direct {p0, v2, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1989
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    aget-object v4, v1, v2

    invoke-direct {p0, v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1990
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;

    aget-object v3, v1, v3

    invoke-direct {p0, v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1992
    return v2
.end method

.method public static greylist-max-o setupGlobalVendorTagDescriptor()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 536
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSetupGlobalVendorTagDescriptor()I

    move-result v0

    .line 537
    .local v0, "err":I
    if-nez v0, :cond_7

    .line 540
    return-void

    .line 538
    :cond_7
    new-instance v1, Landroid/os/ServiceSpecificException;

    const-string v2, "Failure to set up global vendor tags"

    invoke-direct {v1, v0, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o translateLocationProviderToProcess(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "provider"    # Ljava/lang/String;

    .line 361
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 362
    return-object v0

    .line 364
    :cond_4
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_2c

    :cond_c
    goto :goto_21

    :sswitch_d
    const-string/jumbo v2, "network"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v1, 0x1

    goto :goto_21

    :sswitch_18
    const-string v2, "gps"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v1, 0x0

    :goto_21
    packed-switch v1, :pswitch_data_36

    .line 370
    return-object v0

    .line 368
    :pswitch_25
    const-string v0, "CELLID"

    return-object v0

    .line 366
    :pswitch_28
    const-string v0, "GPS"

    return-object v0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x190aa -> :sswitch_18
        0x6de15a2e -> :sswitch_d
    .end sparse-switch

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
    .end packed-switch
.end method

.method private static greylist-max-o translateProcessToLocationProvider(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "process"    # Ljava/lang/String;

    .line 375
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 376
    return-object v0

    .line 378
    :cond_4
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_2c

    :cond_c
    goto :goto_20

    :sswitch_d
    const-string v2, "CELLID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v1, 0x1

    goto :goto_20

    :sswitch_17
    const-string v2, "GPS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v1, 0x0

    :goto_20
    packed-switch v1, :pswitch_data_36

    .line 384
    return-object v0

    .line 382
    :pswitch_24
    const-string/jumbo v0, "network"

    return-object v0

    .line 380
    :pswitch_28
    const-string v0, "gps"

    return-object v0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x1148a -> :sswitch_17
        0x7644b9fd -> :sswitch_d
    .end sparse-switch

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_28
        :pswitch_24
    .end packed-switch
.end method

.method public static blacklist update(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 6
    .param p0, "dst"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "src"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 433
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    iget-wide v2, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeUpdate(JJ)V

    .line 434
    return-void
.end method

.method private blacklist updateNativeAllocation()V
    .registers 9

    .line 2035
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetBufferSize(J)J

    move-result-wide v0

    .line 2037
    .local v0, "currentBufferSize":J
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2a

    .line 2038
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1b

    .line 2039
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget-wide v6, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    invoke-virtual {v2, v6, v7}, Ldalvik/system/VMRuntime;->registerNativeFree(J)V

    .line 2042
    :cond_1b
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    .line 2044
    cmp-long v2, v0, v4

    if-lez v2, :cond_2a

    .line 2045
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget-wide v3, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    invoke-virtual {v2, v3, v4}, Ldalvik/system/VMRuntime;->registerNativeAllocation(J)V

    .line 2048
    :cond_2a
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dumpToLog()V
    .registers 4

    .line 2300
    :try_start_0
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeDump(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2303
    goto :goto_e

    .line 2301
    :catch_6
    move-exception v0

    .line 2302
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "CameraMetadataJV"

    const-string v2, "Dump logging failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2304
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2309
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 2311
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2312
    nop

    .line 2313
    return-void

    .line 2311
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2312
    throw v0
.end method

.method public greylist-max-o get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
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

    .line 466
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    invoke-static {}, Landroid/hardware/camera2/impl/CameraExtStub;->isCustomStreamConfigurationEnabled()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 467
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "CameraMetadataJV"

    if-eq p1, v0, :cond_65

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-ne p1, v0, :cond_11

    goto :goto_65

    .line 474
    :cond_11
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-ne p1, v0, :cond_3b

    .line 475
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/hardware/camera2/impl/CameraExtStub;->getLimitedSensorSize(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 476
    .local v0, "size":Landroid/util/Size;
    if-eqz v0, :cond_3a

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SENSOR_INFO_PIXEL_ARRAY_SIZE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-object v0

    .line 476
    .end local v0    # "size":Landroid/util/Size;
    :cond_3a
    goto :goto_64

    .line 480
    :cond_3b
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-ne p1, v0, :cond_64

    .line 481
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/hardware/camera2/impl/CameraExtStub;->getLimitedSensorIso(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Range;

    move-result-object v0

    .line 482
    .local v0, "iso":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_98

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SENSOR_INFO_SENSITIVITY_RANGE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-object v0

    .line 480
    .end local v0    # "iso":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_64
    :goto_64
    goto :goto_98

    .line 469
    :cond_65
    :goto_65
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/hardware/camera2/impl/CameraExtStub;->getLimitedSensorSize(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 470
    .local v0, "size":Landroid/util/Size;
    if-eqz v0, :cond_98

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SENSOR_INFO_ACTIVE_ARRAY_SIZE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    .line 489
    .end local v0    # "size":Landroid/util/Size;
    :cond_98
    :goto_98
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 503
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 496
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 513
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    const-string v0, "key must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 516
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/GetCommand;

    .line 517
    .local v0, "g":Landroid/hardware/camera2/impl/GetCommand;
    if-eqz v0, :cond_14

    .line 518
    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/impl/GetCommand;->getValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 520
    :cond_14
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)",
            "Ljava/util/ArrayList<",
            "TK;>;"
        }
    .end annotation

    .line 2216
    .local p1, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    if-eqz p1, :cond_9

    .line 2219
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetAllVendorKeys(JLjava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 2217
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public greylist-max-o getEntryCount()I
    .registers 3

    .line 2188
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetEntryCount(J)I

    move-result v0

    return v0
.end method

.method public blacklist getMetadataPtr()J
    .registers 3

    .line 2207
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    return-wide v0
.end method

.method public blacklist getMultiResolutionStreamConfigurationMap()Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
    .registers 2

    .line 2111
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    return-object v0
.end method

.method public blacklist getPhysicalCameraIds()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2392
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 2393
    .local v0, "availableCapabilities":[I
    if-eqz v0, :cond_46

    .line 2398
    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_17

    .line 2400
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 2402
    :cond_17
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LOGICAL_MULTI_CAMERA_PHYSICAL_IDS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 2404
    .local v1, "physicalCamIds":[B
    const/4 v2, 0x0

    .line 2406
    .local v2, "physicalCamIdString":Ljava/lang/String;
    :try_start_20
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_27} :catch_3d

    move-object v2, v3

    .line 2409
    nop

    .line 2410
    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2412
    .local v3, "physicalCameraIdArray":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    .line 2413
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2412
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    return-object v4

    .line 2407
    .end local v3    # "physicalCameraIdArray":[Ljava/lang/String;
    :catch_3d
    move-exception v3

    .line 2408
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "android.logicalCam.physicalIds must be UTF-8 string"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 2394
    .end local v1    # "physicalCamIds":[B
    .end local v2    # "physicalCamIdString":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_46
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "android.request.availableCapabilities must be non-null in the characteristics"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public blacklist getRecommendedStreamConfigurations()Ljava/util/ArrayList;
    .registers 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;",
            ">;"
        }
    .end annotation

    .line 1286
    move-object/from16 v9, p0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_RECOMMENDED_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v9, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    .line 1288
    .local v10, "configurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_RECOMMENDED_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v9, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    .line 1290
    .local v11, "depthConfigurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    const/4 v12, 0x0

    if-nez v10, :cond_1a

    if-nez v11, :cond_1a

    .line 1291
    return-object v12

    .line 1294
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v13

    .line 1295
    .local v13, "fullMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 1298
    .local v14, "recommendedConfigurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 1300
    .local v15, "streamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 1302
    .local v8, "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 1304
    .local v7, "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    const/16 v0, 0x20

    new-array v6, v0, [Z

    .line 1307
    .local v6, "supportsPrivate":[Z
    const-string v5, "CameraMetadataJV"

    if-eqz v10, :cond_5c

    .line 1308
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v13

    move-object v12, v5

    move-object v5, v15

    move-object/from16 v16, v6

    .end local v6    # "supportsPrivate":[Z
    .local v16, "supportsPrivate":[Z
    move-object v6, v8

    move-object/from16 v17, v7

    .end local v7    # "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .local v17, "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    move-object/from16 v18, v8

    .end local v8    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .local v18, "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    move-object/from16 v8, v16

    :try_start_4e
    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->parseRecommendedConfigurations([Landroid/hardware/camera2/params/RecommendedStreamConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Z)V
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_63

    .line 1311
    :catch_52
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1312
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Failed parsing the recommended stream configurations!"

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    const/4 v1, 0x0

    return-object v1

    .line 1307
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v16    # "supportsPrivate":[Z
    .end local v17    # "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .end local v18    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v6    # "supportsPrivate":[Z
    .restart local v7    # "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v8    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    :cond_5c
    move-object v12, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .line 1314
    .end local v6    # "supportsPrivate":[Z
    .end local v7    # "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .end local v8    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v16    # "supportsPrivate":[Z
    .restart local v17    # "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v18    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    :goto_63
    nop

    .line 1316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    .line 1318
    .local v8, "depthStreamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 1320
    .local v7, "depthStreamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    .line 1322
    .local v6, "depthStreamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    if-eqz v11, :cond_9a

    .line 1324
    const/4 v4, 0x1

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v13

    move-object v5, v8

    move-object/from16 v20, v6

    .end local v6    # "depthStreamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .local v20, "depthStreamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    move-object v6, v7

    move-object/from16 v21, v7

    .end local v7    # "depthStreamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .local v21, "depthStreamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    move-object/from16 v7, v20

    move-object/from16 v22, v13

    move-object v13, v8

    .end local v8    # "depthStreamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    .local v13, "depthStreamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    .local v22, "fullMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    move-object/from16 v8, v19

    :try_start_8c
    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->parseRecommendedConfigurations([Landroid/hardware/camera2/params/RecommendedStreamConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Z)V
    :try_end_8f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8c .. :try_end_8f} :catch_90

    .line 1330
    goto :goto_a1

    .line 1327
    :catch_90
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1328
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Failed parsing the recommended depth stream configurations!"

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    const/4 v1, 0x0

    return-object v1

    .line 1322
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v20    # "depthStreamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .end local v21    # "depthStreamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .end local v22    # "fullMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v6    # "depthStreamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v7    # "depthStreamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v8    # "depthStreamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    .local v13, "fullMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_9a
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v13

    move-object v13, v8

    .line 1333
    .end local v6    # "depthStreamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .end local v7    # "depthStreamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .end local v8    # "depthStreamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    .local v13, "depthStreamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    .restart local v20    # "depthStreamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v21    # "depthStreamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v22    # "fullMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :goto_a1
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_RECOMMENDED_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v9, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 1335
    .local v1, "inputOutputFormatsMap":Landroid/hardware/camera2/params/ReprocessFormatsMap;
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v9, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 1337
    .local v2, "highSpeedVideoConfigurations":[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isBurstSupported()Z

    move-result v3

    .line 1338
    .local v3, "listHighResolution":Z
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1340
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b9
    if-ge v4, v0, :cond_209

    .line 1341
    new-instance v5, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;

    const/4 v6, 0x0

    invoke-direct {v5, v9, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData-IA;)V

    .line 1342
    .local v5, "scData":Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;
    if-eqz v10, :cond_df

    .line 1343
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1344
    move-object/from16 v7, v18

    .end local v18    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .local v7, "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    move-object/from16 v12, v17

    .end local v17    # "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .local v12, "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/util/ArrayList;

    .line 1343
    invoke-virtual {v9, v6, v8, v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->initializeStreamConfigurationData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;)V

    goto :goto_e3

    .line 1342
    .end local v7    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .end local v12    # "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v17    # "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v18    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    :cond_df
    move-object/from16 v12, v17

    move-object/from16 v7, v18

    .line 1347
    .end local v17    # "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .end local v18    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v7    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v12    # "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    :goto_e3
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;

    const/4 v6, 0x0

    invoke-direct {v0, v9, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData-IA;)V

    .line 1348
    .local v0, "depthScData":Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;
    if-eqz v11, :cond_10b

    .line 1349
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1350
    move-object/from16 v8, v21

    .end local v21    # "depthStreamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .local v8, "depthStreamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v7

    .end local v7    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .local v19, "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    move-object/from16 v7, v17

    check-cast v7, Ljava/util/ArrayList;

    move-object/from16 v8, v20

    .end local v20    # "depthStreamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .local v8, "depthStreamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v21    # "depthStreamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v8    # "depthStreamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v20    # "depthStreamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    move-object/from16 v8, v17

    check-cast v8, Ljava/util/ArrayList;

    .line 1349
    invoke-virtual {v9, v6, v7, v8, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->initializeStreamConfigurationData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;)V

    goto :goto_10d

    .line 1348
    .end local v19    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v7    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    :cond_10b
    move-object/from16 v19, v7

    .line 1353
    .end local v7    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v19    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    :goto_10d
    iget-object v6, v5, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    if-eqz v6, :cond_116

    iget-object v6, v5, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v6, v6

    if-nez v6, :cond_121

    :cond_116
    iget-object v6, v0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    if-eqz v6, :cond_1fa

    iget-object v6, v0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v6, v6

    if-nez v6, :cond_121

    goto/16 :goto_1fa

    .line 1363
    :cond_121
    const/4 v6, 0x0

    .line 1364
    .local v6, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    packed-switch v4, :pswitch_data_20a

    .line 1411
    :pswitch_125
    new-instance v7, Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-object/from16 v23, v7

    iget-object v8, v5, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    move-object/from16 v24, v8

    iget-object v8, v5, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v25, v8

    iget-object v8, v5, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v26, v8

    iget-object v8, v0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    move-object/from16 v27, v8

    iget-object v8, v0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v28, v8

    iget-object v8, v0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v29, v8

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    aget-boolean v39, v16, v4

    move/from16 v38, v3

    invoke-direct/range {v23 .. v39}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    move-object v6, v7

    goto/16 :goto_1ee

    .line 1397
    :pswitch_15b
    new-instance v7, Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-object/from16 v23, v7

    iget-object v8, v5, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    move-object/from16 v24, v8

    iget-object v8, v5, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v25, v8

    iget-object v8, v5, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v26, v8

    iget-object v8, v0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    move-object/from16 v27, v8

    iget-object v8, v0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v28, v8

    iget-object v8, v0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v29, v8

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    aget-boolean v39, v16, v4

    move-object/from16 v37, v1

    move/from16 v38, v3

    invoke-direct/range {v23 .. v39}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    move-object v6, v7

    .line 1409
    goto :goto_1ee

    .line 1383
    :pswitch_190
    new-instance v7, Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-object/from16 v23, v7

    iget-object v8, v5, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    move-object/from16 v24, v8

    iget-object v8, v5, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v25, v8

    iget-object v8, v5, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v26, v8

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    aget-boolean v39, v16, v4

    move-object/from16 v36, v2

    move/from16 v38, v3

    invoke-direct/range {v23 .. v39}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    move-object v6, v7

    .line 1395
    goto :goto_1ee

    .line 1369
    :pswitch_1bf
    new-instance v7, Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-object/from16 v23, v7

    iget-object v8, v5, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    move-object/from16 v24, v8

    iget-object v8, v5, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v25, v8

    iget-object v8, v5, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v26, v8

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    aget-boolean v39, v16, v4

    move/from16 v38, v3

    invoke-direct/range {v23 .. v39}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    move-object v6, v7

    .line 1381
    nop

    .line 1425
    :goto_1ee
    new-instance v7, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;

    aget-boolean v8, v16, v4

    invoke-direct {v7, v6, v4, v8}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;-><init>(Landroid/hardware/camera2/params/StreamConfigurationMap;IZ)V

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto :goto_1ff

    .line 1357
    .end local v6    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_1fa
    :goto_1fa
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    nop

    .line 1340
    .end local v0    # "depthScData":Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;
    .end local v5    # "scData":Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;
    :goto_1ff
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v17, v12

    move-object/from16 v18, v19

    const/16 v0, 0x20

    goto/16 :goto_b9

    .line 1429
    .end local v4    # "i":I
    .end local v12    # "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .end local v19    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v17    # "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v18    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    :cond_209
    return-object v14

    :pswitch_data_20a
    .packed-switch 0x0
        :pswitch_1bf
        :pswitch_190
        :pswitch_1bf
        :pswitch_125
        :pswitch_15b
        :pswitch_1bf
        :pswitch_1bf
    .end packed-switch
.end method

.method public blacklist initializeStreamConfigurationData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;)V
    .registers 7
    .param p4, "scData"    # Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;",
            ")V"
        }
    .end annotation

    .line 1256
    .local p1, "sc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .local p2, "scd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    .local p3, "scs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    if-eqz p4, :cond_57

    if-nez p1, :cond_5

    goto :goto_57

    .line 1260
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v0, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1261
    iget-object v0, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v0, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1263
    const/4 v0, 0x0

    if-eqz p2, :cond_33

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 1264
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v1, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1265
    iget-object v1, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v1, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_37

    .line 1267
    :cond_33
    new-array v1, v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v1, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1270
    :goto_37
    if-eqz p3, :cond_52

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_52

    .line 1271
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1272
    iget-object v0, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_56

    .line 1274
    :cond_52
    new-array v0, v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1276
    :goto_56
    return-void

    .line 1257
    :cond_57
    :goto_57
    return-void
.end method

.method public greylist-max-o isEmpty()Z
    .registers 3

    .line 2197
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeIsEmpty(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isUltraHighResolutionSensor()Z
    .registers 2

    .line 1450
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 524
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {p1, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadFromParcel(Landroid/os/Parcel;J)V

    .line 525
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->updateNativeAllocation()V

    .line 526
    return-void
.end method

.method public greylist-max-o readValues(I)[B
    .registers 4
    .param p1, "tag"    # I

    .line 2287
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {p1, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadValues(IJ)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 579
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 580
    return-void
.end method

.method public greylist-max-o set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 571
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 572
    return-void
.end method

.method public greylist-max-o set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 575
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 576
    return-void
.end method

.method public greylist-max-o set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 561
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/SetCommand;

    .line 562
    .local v0, "s":Landroid/hardware/camera2/impl/SetCommand;
    if-eqz v0, :cond_e

    .line 563
    invoke-interface {v0, p0, p2}, Landroid/hardware/camera2/impl/SetCommand;->setValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)V

    .line 564
    return-void

    .line 567
    :cond_e
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 568
    return-void
.end method

.method public blacklist setAppName(Ljava/lang/String;)V
    .registers 4
    .param p1, "appName"    # Ljava/lang/String;

    .line 353
    sget-boolean v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAppName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMetadataJV"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_1d
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mPackageName:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public blacklist setCameraId(I)V
    .registers 2
    .param p1, "cameraId"    # I

    .line 2064
    iput p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    .line 2065
    return-void
.end method

.method public blacklist setDisplaySize(Landroid/util/Size;)V
    .registers 2
    .param p1, "displaySize"    # Landroid/util/Size;

    .line 2087
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    .line 2088
    return-void
.end method

.method public blacklist setHasMandatoryConcurrentStreams(Z)V
    .registers 2
    .param p1, "hasMandatoryConcurrentStreams"    # Z

    .line 2076
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    .line 2077
    return-void
.end method

.method public blacklist setMultiResolutionStreamConfigurationMap(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 2099
    .local p1, "multiResolutionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    new-instance v0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    invoke-direct {v0, p1}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 2101
    return-void
.end method

.method public blacklist setVendorId(J)V
    .registers 5
    .param p1, "vendorId"    # J

    .line 2181
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSetVendorId(JJ)V

    .line 2182
    return-void
.end method

.method public greylist-max-o swap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 6
    .param p1, "other"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 2166
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    iget-wide v2, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSwap(JJ)V

    .line 2167
    iget v0, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    .line 2168
    iget-boolean v0, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    .line 2169
    iget-object v0, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    .line 2170
    iget-object v0, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 2171
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->updateNativeAllocation()V

    .line 2172
    invoke-direct {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->updateNativeAllocation()V

    .line 2173
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 458
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {p1, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeWriteToParcel(Landroid/os/Parcel;J)V

    .line 459
    return-void
.end method

.method public greylist-max-o writeValues(I[B)V
    .registers 5
    .param p1, "tag"    # I
    .param p2, "src"    # [B

    .line 2271
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {p1, p2, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeWriteValues(I[BJ)V

    .line 2272
    return-void
.end method
