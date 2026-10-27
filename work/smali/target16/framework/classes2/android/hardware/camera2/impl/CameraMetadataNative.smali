.class public Landroid/hardware/camera2/impl/CameraMetadataNative;
.super Ljava/lang/Object;
.source "CameraMetadataNative.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraMetadataNative$Key;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;
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

.field private static final greylist-max-o DEBUG:Z = false

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


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetAvailableFormats(Landroid/hardware/camera2/impl/CameraMetadataNative;)[I
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAvailableFormats()[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetColorSpaceProfiles(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/ColorSpaceProfiles;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getColorSpaceProfiles()Landroid/hardware/camera2/params/ColorSpaceProfiles;

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

.method static bridge synthetic blacklist -$$Nest$mgetLensIntrinsicSamples(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/LensIntrinsicsSample;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getLensIntrinsicSamples()[Landroid/hardware/camera2/params/LensIntrinsicsSample;

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

.method static bridge synthetic blacklist -$$Nest$mgetSharedSessionConfiguration(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/SharedSessionConfiguration;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getSharedSessionConfiguration()Landroid/hardware/camera2/params/SharedSessionConfiguration;

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

.method static bridge synthetic blacklist -$$Nest$msetLensIntrinsicsSamples(Landroid/hardware/camera2/impl/CameraMetadataNative;[Landroid/hardware/camera2/params/LensIntrinsicsSample;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setLensIntrinsicsSamples([Landroid/hardware/camera2/params/LensIntrinsicsSample;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetLensShadingMap(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/params/LensShadingMap;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setLensShadingMap(Landroid/hardware/camera2/params/LensShadingMap;)Z

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

    .line 432
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$1;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 642
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    .line 645
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 646
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$2;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$2;-><init>()V

    .line 645
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 654
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$3;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$3;-><init>()V

    .line 653
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 662
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$4;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$4;-><init>()V

    .line 661
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 670
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$5;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$5;-><init>()V

    .line 669
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 679
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$6;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$6;-><init>()V

    .line 678
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 688
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$7;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$7;-><init>()V

    .line 687
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_CONCURRENT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 697
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$8;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$8;-><init>()V

    .line 696
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_TEN_BIT_OUTPUT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 707
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$9;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$9;-><init>()V

    .line 706
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_MAXIMUM_RESOLUTION_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 717
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$10;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$10;-><init>()V

    .line 716
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_USE_CASE_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 727
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$11;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$11;-><init>()V

    .line 726
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_PREVIEW_STABILIZATION_OUTPUT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 736
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$12;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$12;-><init>()V

    .line 735
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 746
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$13;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$13;-><init>()V

    .line 745
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 754
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$14;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$14;-><init>()V

    .line 753
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 762
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$15;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$15;-><init>()V

    .line 761
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 770
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$16;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$16;-><init>()V

    .line 769
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 778
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$17;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$17;-><init>()V

    .line 777
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 786
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$18;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$18;-><init>()V

    .line 785
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 795
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$19;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$19;-><init>()V

    .line 794
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 803
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$20;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$20;-><init>()V

    .line 802
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_CORRECTION_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 811
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$21;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$21;-><init>()V

    .line 810
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_DEVICE_STATE_SENSOR_ORIENTATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 820
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$22;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$22;-><init>()V

    .line 819
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 829
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$23;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$23;-><init>()V

    .line 828
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_COLOR_SPACE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 838
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$24;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$24;-><init>()V

    .line 837
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 847
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$25;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$25;-><init>()V

    .line 846
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 856
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$26;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$26;-><init>()V

    .line 855
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 865
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$27;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$27;-><init>()V

    .line 864
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_INTRINSICS_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 874
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$28;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$28;-><init>()V

    .line 873
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SHARED_SESSION_CONFIGURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 883
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$29;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$29;-><init>()V

    .line 882
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    .line 2027
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$30;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$30;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$31;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$31;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$32;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$32;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$33;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$33;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$34;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$34;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$35;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$35;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$36;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$36;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2074
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$37;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$37;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2081
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$38;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$38;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_CORRECTION_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$39;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$39;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2095
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_INTRINSICS_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 2096
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$40;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$40;-><init>()V

    .line 2095
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2625
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->registerAllMarshalers()V

    .line 2626
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 5

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2228
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    .line 2229
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    .line 2230
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    .line 2231
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    .line 2232
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 374
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeAllocate()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    .line 375
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_27

    .line 378
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->updateNativeAllocation()V

    .line 379
    return-void

    .line 376
    :cond_27
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Failed to allocate native CameraMetadata"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(J)V
    .registers 6

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2228
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    .line 2229
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    .line 2230
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    .line 2231
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    .line 2232
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 398
    iput-wide p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    .line 399
    iget-wide p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_23

    .line 402
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->updateNativeAllocation()V

    .line 403
    return-void

    .line 400
    :cond_23
    new-instance p1, Ljava/lang/OutOfMemoryError;

    const-string p2, "Failed to allocate native CameraMetadata"

    invoke-direct {p1, p2}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 6

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2228
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    .line 2229
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    .line 2230
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    .line 2231
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    .line 2232
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 386
    iget-wide v2, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeAllocateCopy(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    .line 387
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_29

    .line 390
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->updateNativeAllocation()V

    .line 391
    return-void

    .line 388
    :cond_29
    new-instance p1, Ljava/lang/OutOfMemoryError;

    const-string v0, "Failed to allocate native CameraMetadata"

    invoke-direct {p1, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static varargs blacklist areValuesAllNull([Ljava/lang/Object;)Z
    .registers 5

    .line 2585
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_d

    aget-object v3, p0, v2

    .line 2586
    if-eqz v3, :cond_a

    return v1

    .line 2585
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2588
    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method private greylist-max-o close()V
    .registers 6

    .line 586
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeClose(J)V

    .line 587
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    .line 589
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_18

    .line 590
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget-wide v3, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    invoke-virtual {v2, v3, v4}, Ldalvik/system/VMRuntime;->registerNativeFree(J)V

    .line 592
    :cond_18
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    .line 593
    return-void
.end method

.method private greylist-max-o getAvailableFormats()[I
    .registers 5

    .line 894
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 895
    if-eqz v0, :cond_1b

    .line 896
    const/4 v1, 0x0

    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 898
    aget v2, v0, v1

    const/16 v3, 0x21

    if-ne v2, v3, :cond_18

    .line 899
    const/16 v2, 0x100

    aput v2, v0, v1

    .line 896
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 904
    :cond_1b
    return-object v0
.end method

.method private greylist-max-o getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 596
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 604
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 600
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 609
    nop

    .line 610
    monitor-enter p0

    .line 611
    :try_start_2
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 612
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v0

    goto :goto_1a

    .line 614
    :cond_d
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKeyLocal(JLjava/lang/String;)I

    move-result v0

    .line 615
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->cacheTag(I)V

    .line 617
    :goto_1a
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readValues(I)[B

    move-result-object v1

    .line 618
    if-nez v1, :cond_3c

    .line 621
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->-$$Nest$fgetmFallbackName(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    .line 622
    monitor-exit p0

    return-object v1

    .line 624
    :cond_29
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->-$$Nest$fgetmFallbackName(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKeyLocal(JLjava/lang/String;)I

    move-result v0

    .line 625
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readValues(I)[B

    move-result-object v2

    .line 626
    if-nez v2, :cond_3b

    .line 627
    monitor-exit p0

    return-object v1

    .line 626
    :cond_3b
    move-object v1, v2

    .line 631
    :cond_3c
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v2, v3, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTagLocal(JI)I

    move-result v0

    .line 632
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_2 .. :try_end_43} :catchall_58

    .line 635
    invoke-static {p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object p1

    .line 636
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 637
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 632
    :catchall_58
    move-exception p1

    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p1
.end method

.method private blacklist getColorSpaceProfiles()Landroid/hardware/camera2/params/ColorSpaceProfiles;
    .registers 3

    .line 1134
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_COLOR_SPACE_PROFILES_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1137
    if-nez v0, :cond_c

    .line 1138
    const/4 v0, 0x0

    return-object v0

    .line 1141
    :cond_c
    new-instance v1, Landroid/hardware/camera2/params/ColorSpaceProfiles;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/ColorSpaceProfiles;-><init>([J)V

    return-object v1
.end method

.method private blacklist getDeviceStateOrientationMap()Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;
    .registers 3

    .line 1111
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_DEVICE_STATE_ORIENTATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1114
    if-nez v0, :cond_c

    .line 1115
    const/4 v0, 0x0

    return-object v0

    .line 1118
    :cond_c
    new-instance v1, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;-><init>([J)V

    .line 1119
    return-object v1
.end method

.method private blacklist getDynamicRangeProfiles()Landroid/hardware/camera2/params/DynamicRangeProfiles;
    .registers 3

    .line 1123
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1126
    if-nez v0, :cond_c

    .line 1127
    const/4 v0, 0x0

    return-object v0

    .line 1130
    :cond_c
    new-instance v1, Landroid/hardware/camera2/params/DynamicRangeProfiles;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/DynamicRangeProfiles;-><init>([J)V

    return-object v1
.end method

.method private blacklist getExtendedSceneModeCapabilities()[Landroid/hardware/camera2/params/Capability;
    .registers 18

    .line 1925
    move-object/from16 v0, p0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_MAX_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1926
    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1927
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_ZOOM_RATIO_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 1929
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    .line 1930
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1932
    if-nez v1, :cond_2a

    .line 1933
    const/4 v0, 0x0

    return-object v0

    .line 1935
    :cond_2a
    array-length v4, v1

    rem-int/lit8 v4, v4, 0x3

    if-nez v4, :cond_ca

    .line 1939
    array-length v4, v1

    div-int/lit8 v4, v4, 0x3

    .line 1940
    nop

    .line 1941
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_54

    .line 1942
    array-length v7, v2

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_4c

    .line 1946
    array-length v7, v2

    div-int/lit8 v7, v7, 0x2

    .line 1947
    sub-int v8, v4, v7

    if-ne v8, v6, :cond_44

    goto :goto_55

    .line 1948
    :cond_44
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Number of extended scene mode zoom ranges must be 1 less than number of supported modes"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1943
    :cond_4c
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "availableExtendedSceneModeZoomRanges must be tuples of [minZoom, maxZoom]"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1941
    :cond_54
    move v7, v5

    .line 1953
    :goto_55
    nop

    .line 1954
    nop

    .line 1955
    if-eqz v3, :cond_6e

    .line 1956
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1957
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_75

    .line 1955
    :cond_6e
    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v16, v3

    move v3, v0

    move/from16 v0, v16

    .line 1960
    :goto_75
    new-array v8, v4, [Landroid/hardware/camera2/params/Capability;

    .line 1961
    move v9, v5

    :goto_78
    if-ge v5, v4, :cond_c9

    .line 1962
    mul-int/lit8 v10, v5, 0x3

    aget v11, v1, v10

    .line 1963
    add-int/lit8 v12, v10, 0x1

    aget v12, v1, v12

    .line 1964
    add-int/lit8 v10, v10, 0x2

    aget v10, v1, v10

    .line 1965
    if-eqz v11, :cond_ad

    if-ge v9, v7, :cond_ad

    .line 1967
    new-instance v13, Landroid/hardware/camera2/params/Capability;

    new-instance v14, Landroid/util/Size;

    invoke-direct {v14, v12, v10}, Landroid/util/Size;-><init>(II)V

    new-instance v10, Landroid/util/Range;

    mul-int/lit8 v12, v9, 0x2

    aget v15, v2, v12

    .line 1968
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    add-int/2addr v12, v6

    aget v12, v2, v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-direct {v10, v15, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v13, v11, v14, v10}, Landroid/hardware/camera2/params/Capability;-><init>(ILandroid/util/Size;Landroid/util/Range;)V

    aput-object v13, v8, v5

    .line 1969
    add-int/lit8 v9, v9, 0x1

    goto :goto_c6

    .line 1971
    :cond_ad
    new-instance v13, Landroid/hardware/camera2/params/Capability;

    new-instance v14, Landroid/util/Size;

    invoke-direct {v14, v12, v10}, Landroid/util/Size;-><init>(II)V

    new-instance v10, Landroid/util/Range;

    .line 1972
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-direct {v10, v12, v15}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v13, v11, v14, v10}, Landroid/hardware/camera2/params/Capability;-><init>(ILandroid/util/Size;Landroid/util/Range;)V

    aput-object v13, v8, v5

    .line 1961
    :goto_c6
    add-int/lit8 v5, v5, 0x1

    goto :goto_78

    .line 1976
    :cond_c9
    return-object v8

    .line 1936
    :cond_ca
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "availableExtendedSceneModeMaxSizes must be tuples of [mode, width, height]"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private greylist-max-o getFaceRectangles()[Landroid/graphics/Rect;
    .registers 10

    .line 1065
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    .line 1066
    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 1068
    :cond_c
    array-length v1, v0

    new-array v1, v1, [Landroid/graphics/Rect;

    .line 1069
    const/4 v2, 0x0

    :goto_10
    array-length v3, v0

    if-ge v2, v3, :cond_37

    .line 1070
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

    .line 1069
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1076
    :cond_37
    return-object v1
.end method

.method private greylist-max-o getFaces()[Landroid/hardware/camera2/params/Face;
    .registers 18

    .line 972
    move-object/from16 v0, p0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 973
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_SCORES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 974
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/graphics/Rect;

    .line 975
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 976
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_LANDMARKS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 978
    filled-new-array {v1, v2, v3, v4, v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 979
    const/4 v0, 0x0

    return-object v0

    .line 982
    :cond_36
    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "CameraMetadataJV"

    const/4 v8, 0x1

    if-nez v1, :cond_47

    .line 983
    const-string v1, "Face detect mode metadata is null, assuming the mode is SIMPLE"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_80

    .line 985
    :cond_47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v6, :cond_52

    .line 987
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_80

    .line 989
    :cond_52
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_5b

    .line 990
    new-array v0, v5, [Landroid/hardware/camera2/params/Face;

    return-object v0

    .line 992
    :cond_5b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v8, :cond_80

    .line 993
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v6, :cond_80

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown face detect mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    new-array v0, v5, [Landroid/hardware/camera2/params/Face;

    return-object v0

    .line 1000
    :cond_80
    :goto_80
    if-eqz v2, :cond_167

    if-nez v3, :cond_86

    goto/16 :goto_167

    .line 1003
    :cond_86
    array-length v9, v2

    array-length v10, v3

    if-eq v9, v10, :cond_a1

    .line 1004
    array-length v9, v2

    .line 1005
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    array-length v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 1004
    const-string v10, "Face score size(%d) doesn match face rectangle size(%d)!"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_a1
    array-length v9, v2

    array-length v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1011
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v6, :cond_ed

    .line 1012
    if-eqz v4, :cond_e4

    if-nez v0, :cond_b2

    goto :goto_e4

    .line 1017
    :cond_b2
    array-length v6, v4

    if-ne v6, v9, :cond_ba

    array-length v6, v0

    mul-int/lit8 v10, v9, 0x6

    if-eq v6, v10, :cond_d7

    .line 1019
    :cond_ba
    array-length v6, v4

    .line 1021
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    array-length v10, v0

    mul-int/lit8 v10, v10, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v6, v10, v11}, [Ljava/lang/Object;

    move-result-object v6

    .line 1019
    const-string v10, "Face id size(%d), or face landmark size(%d) don\'tmatch face number(%d)!"

    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_d7
    array-length v6, v4

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1025
    array-length v7, v0

    div-int/lit8 v7, v7, 0x6

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_ed

    .line 1013
    :cond_e4
    :goto_e4
    const-string v1, "Expect face ids and landmarks to be non-null for FULL mode,fallback to SIMPLE mode"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1029
    :cond_ed
    :goto_ed
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v7, 0x64

    if-ne v1, v8, :cond_114

    .line 1031
    nop

    :goto_fb
    if-ge v5, v9, :cond_15d

    .line 1032
    aget-byte v0, v2, v5

    if-gt v0, v7, :cond_111

    aget-byte v0, v2, v5

    if-lt v0, v8, :cond_111

    .line 1034
    new-instance v0, Landroid/hardware/camera2/params/Face;

    aget-object v1, v3, v5

    aget-byte v4, v2, v5

    invoke-direct {v0, v1, v4}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    :cond_111
    add-int/lit8 v5, v5, 0x1

    goto :goto_fb

    .line 1039
    :cond_114
    nop

    :goto_115
    if-ge v5, v9, :cond_15d

    .line 1040
    aget-byte v1, v2, v5

    if-gt v1, v7, :cond_15a

    aget-byte v1, v2, v5

    if-lt v1, v8, :cond_15a

    aget v1, v4, v5

    if-ltz v1, :cond_15a

    .line 1043
    new-instance v14, Landroid/graphics/Point;

    mul-int/lit8 v1, v5, 0x6

    aget v10, v0, v1

    add-int/lit8 v11, v1, 0x1

    aget v11, v0, v11

    invoke-direct {v14, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 1045
    new-instance v15, Landroid/graphics/Point;

    add-int/lit8 v10, v1, 0x2

    aget v10, v0, v10

    add-int/lit8 v11, v1, 0x3

    aget v11, v0, v11

    invoke-direct {v15, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 1047
    new-instance v10, Landroid/graphics/Point;

    add-int/lit8 v11, v1, 0x4

    aget v11, v0, v11

    add-int/lit8 v1, v1, 0x5

    aget v1, v0, v1

    invoke-direct {v10, v11, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 1049
    move-object/from16 v16, v10

    new-instance v10, Landroid/hardware/camera2/params/Face;

    aget-object v11, v3, v5

    aget-byte v12, v2, v5

    aget v13, v4, v5

    invoke-direct/range {v10 .. v16}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 1051
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    :cond_15a
    add-int/lit8 v5, v5, 0x1

    goto :goto_115

    .line 1055
    :cond_15d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/camera2/params/Face;

    .line 1056
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1057
    return-object v0

    .line 1001
    :cond_167
    :goto_167
    const-string v0, "Expect face scores and rectangles to be non-null"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    new-array v0, v5, [Landroid/hardware/camera2/params/Face;

    return-object v0
.end method

.method private greylist-max-o getGpsLocation()Landroid/location/Location;
    .registers 9

    .line 1145
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1146
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 1147
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1149
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1150
    const/4 v0, 0x0

    return-object v0

    .line 1153
    :cond_24
    new-instance v3, Landroid/location/Location;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->translateProcessToLocationProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1154
    const-string v0, "CameraMetadataJV"

    if-eqz v2, :cond_3c

    .line 1156
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setTime(J)V

    goto :goto_41

    .line 1158
    :cond_3c
    const-string v2, "getGpsLocation - No timestamp for GPS location."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :goto_41
    if-eqz v1, :cond_56

    .line 1162
    const/4 v0, 0x0

    aget-wide v4, v1, v0

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 1163
    const/4 v0, 0x1

    aget-wide v4, v1, v0

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 1164
    const/4 v0, 0x2

    aget-wide v0, v1, v0

    invoke-virtual {v3, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    goto :goto_5b

    .line 1166
    :cond_56
    const-string v1, "getGpsLocation - No coordinates for GPS location"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :goto_5b
    return-object v3
.end method

.method private blacklist getLensIntrinsicSamples()[Landroid/hardware/camera2/params/LensIntrinsicsSample;
    .registers 9

    .line 1893
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_INTRINSIC_TIMESTAMPS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1894
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_INTRINSIC_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 1896
    if-nez v0, :cond_1e

    .line 1897
    if-nez v1, :cond_16

    .line 1901
    const/4 v0, 0x0

    return-object v0

    .line 1898
    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "timestamps is null but intrinsics is not"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1904
    :cond_1e
    if-eqz v1, :cond_6b

    .line 1906
    array-length v2, v1

    rem-int/lit8 v2, v2, 0x5

    if-nez v2, :cond_63

    .line 1910
    array-length v2, v1

    div-int/lit8 v2, v2, 0x5

    array-length v3, v0

    if-ne v2, v3, :cond_47

    .line 1916
    array-length v2, v0

    new-array v2, v2, [Landroid/hardware/camera2/params/LensIntrinsicsSample;

    .line 1917
    const/4 v3, 0x0

    :goto_2f
    array-length v4, v0

    if-ge v3, v4, :cond_46

    .line 1918
    mul-int/lit8 v4, v3, 0x5

    add-int/lit8 v5, v4, 0x5

    invoke-static {v1, v4, v5}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v4

    .line 1919
    new-instance v5, Landroid/hardware/camera2/params/LensIntrinsicsSample;

    aget-wide v6, v0, v3

    invoke-direct {v5, v6, v7, v4}, Landroid/hardware/camera2/params/LensIntrinsicsSample;-><init>(J[F)V

    aput-object v5, v2, v3

    .line 1917
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 1921
    :cond_46
    return-object v2

    .line 1911
    :cond_47
    new-instance v2, Ljava/lang/AssertionError;

    array-length v0, v0

    .line 1912
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    array-length v1, v1

    div-int/lit8 v1, v1, 0x5

    .line 1913
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1911
    const-string v1, "timestamps has %d entries but intrinsics has %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1907
    :cond_63
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "intrinsics are not multiple of 5"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1905
    :cond_6b
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "timestamps is not null but intrinsics is"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private greylist-max-o getLensShadingMap()Landroid/hardware/camera2/params/LensShadingMap;
    .registers 5

    .line 1093
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 1094
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 1097
    const/4 v2, 0x0

    if-nez v0, :cond_14

    .line 1098
    return-object v2

    .line 1101
    :cond_14
    if-nez v1, :cond_1e

    .line 1102
    const-string v0, "CameraMetadataJV"

    const-string v1, "getLensShadingMap - Lens shading map size was null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-object v2

    .line 1106
    :cond_1e
    new-instance v2, Landroid/hardware/camera2/params/LensShadingMap;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-direct {v2, v0, v3, v1}, Landroid/hardware/camera2/params/LensShadingMap;-><init>([FII)V

    .line 1107
    return-object v2
.end method

.method private blacklist getMandatory10BitStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 2

    .line 1594
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMandatoryConcurrentStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 2

    .line 1598
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    if-nez v0, :cond_6

    .line 1599
    const/4 v0, 0x0

    return-object v0

    .line 1601
    :cond_6
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMandatoryMaximumResolutionStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 2

    .line 1605
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isUltraHighResolutionSensor()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1606
    const/4 v0, 0x0

    return-object v0

    .line 1608
    :cond_8
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMandatoryPreviewStabilizationStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 2

    .line 1620
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMandatoryStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 2

    .line 1612
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 12

    .line 1553
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1554
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1555
    array-length v1, v0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1556
    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_22

    aget v3, v0, v2

    .line 1557
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1556
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1559
    :cond_22
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1560
    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;

    iget v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    .line 1561
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v6

    .line 1562
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getStreamConfigurationMapMaximumResolution()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v7

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isPreviewStabilizationSupported()Z

    move-result v8

    .line 1563
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isCroppedRawSupported()Z

    move-result v9

    invoke-direct/range {v1 .. v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;-><init>(IILandroid/util/Size;Ljava/util/List;Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/StreamConfigurationMap;ZZ)V

    .line 1565
    nop

    .line 1566
    packed-switch p1, :pswitch_data_80

    .line 1583
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryStreamCombinations()Ljava/util/List;

    move-result-object p1

    goto :goto_69

    .line 1580
    :pswitch_50
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryPreviewStabilizedStreamCombinations()Ljava/util/List;

    move-result-object p1

    .line 1581
    goto :goto_69

    .line 1577
    :pswitch_55
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryStreamUseCaseCombinations()Ljava/util/List;

    move-result-object p1

    .line 1578
    goto :goto_69

    .line 1574
    :pswitch_5a
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatory10BitStreamCombinations()Ljava/util/List;

    move-result-object p1

    .line 1575
    goto :goto_69

    .line 1568
    :pswitch_5f
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryConcurrentStreamCombinations()Ljava/util/List;

    move-result-object p1

    .line 1569
    goto :goto_69

    .line 1571
    :pswitch_64
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryMaximumResolutionStreamCombinations()Ljava/util/List;

    move-result-object p1

    .line 1572
    nop

    .line 1585
    :goto_69
    if-eqz p1, :cond_7e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 1586
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination;

    .line 1587
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/MandatoryStreamCombination;

    .line 1588
    return-object p1

    .line 1590
    :cond_7e
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch
.end method

.method private blacklist getMandatoryUseCaseStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 2

    .line 1616
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;I)Landroid/hardware/camera2/marshal/Marshaler;
    .registers 2
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

    .line 2530
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTypeReference()Landroid/hardware/camera2/utils/TypeReference;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o getMaxNumOutputs(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .registers 5
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

    .line 1796
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1798
    if-nez v0, :cond_c

    .line 1799
    const/4 p1, 0x0

    return-object p1

    .line 1802
    :cond_c
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1803
    const/4 p1, 0x0

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1804
    :cond_1c
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1805
    const/4 p1, 0x1

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1806
    :cond_2c
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1807
    const/4 p1, 0x2

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1809
    :cond_3c
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private greylist-max-o getMaxRegions(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .registers 5
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

    .line 1773
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1775
    if-nez v0, :cond_c

    .line 1776
    const/4 p1, 0x0

    return-object p1

    .line 1779
    :cond_c
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1780
    const/4 p1, 0x0

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1781
    :cond_1c
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1782
    const/4 p1, 0x1

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1783
    :cond_2c
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1784
    const/4 p1, 0x2

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1786
    :cond_3c
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static greylist-max-o getNativeType(IJ)I
    .registers 3

    .line 2464
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTag(IJ)I

    move-result p0

    return p0
.end method

.method private greylist-max-o getOisSamples()[Landroid/hardware/camera2/params/OisSample;
    .registers 11

    .line 1831
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_TIMESTAMPS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1832
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_X_SHIFTS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 1833
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_Y_SHIFTS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 1835
    if-nez v0, :cond_30

    .line 1836
    if-nez v1, :cond_28

    .line 1840
    if-nez v2, :cond_20

    .line 1844
    const/4 v0, 0x0

    return-object v0

    .line 1841
    :cond_20
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "timestamps is null but yShifts is not"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1837
    :cond_28
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "timestamps is null but xShifts is not"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1847
    :cond_30
    if-eqz v1, :cond_90

    .line 1851
    if-eqz v2, :cond_88

    .line 1855
    array-length v3, v1

    array-length v4, v0

    if-ne v3, v4, :cond_6e

    .line 1861
    array-length v3, v2

    array-length v4, v0

    if-ne v3, v4, :cond_54

    .line 1867
    array-length v3, v0

    new-array v3, v3, [Landroid/hardware/camera2/params/OisSample;

    .line 1868
    const/4 v4, 0x0

    :goto_40
    array-length v5, v0

    if-ge v4, v5, :cond_53

    .line 1869
    new-instance v5, Landroid/hardware/camera2/params/OisSample;

    aget-wide v6, v0, v4

    aget v8, v1, v4

    aget v9, v2, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/hardware/camera2/params/OisSample;-><init>(JFF)V

    aput-object v5, v3, v4

    .line 1868
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 1871
    :cond_53
    return-object v3

    .line 1862
    :cond_54
    new-instance v1, Ljava/lang/AssertionError;

    array-length v0, v0

    .line 1863
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    array-length v2, v2

    .line 1864
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 1862
    const-string v2, "timestamps has %d entries but yShifts has %d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1856
    :cond_6e
    new-instance v2, Ljava/lang/AssertionError;

    array-length v0, v0

    .line 1857
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    array-length v1, v1

    .line 1858
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1856
    const-string v1, "timestamps has %d entries but xShifts has %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1852
    :cond_88
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "timestamps is not null but yShifts is"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1848
    :cond_90
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "timestamps is not null but xShifts is"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private blacklist getSharedSessionConfiguration()Landroid/hardware/camera2/params/SharedSessionConfiguration;
    .registers 4

    .line 1684
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraMultiClient()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1685
    return-object v1

    .line 1687
    :cond_8
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SHARED_SESSION_COLOR_SPACE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1689
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SHARED_SESSION_OUTPUT_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 1692
    if-eqz v0, :cond_27

    if-nez v2, :cond_1d

    goto :goto_27

    .line 1696
    :cond_1d
    new-instance v1, Landroid/hardware/camera2/params/SharedSessionConfiguration;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0, v2}, Landroid/hardware/camera2/params/SharedSessionConfiguration;-><init>(I[J)V

    return-object v1

    .line 1693
    :cond_27
    :goto_27
    return-object v1
.end method

.method private greylist-max-o getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;
    .registers 25

    .line 1625
    move-object/from16 v0, p0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1627
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1629
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1631
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1633
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1635
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1637
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1639
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1641
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1643
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1645
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1647
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1649
    nop

    .line 1650
    nop

    .line 1651
    nop

    .line 1652
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v1

    if-eqz v1, :cond_96

    .line 1653
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_ULTRA_HDR_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1655
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_ULTRA_HDR_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1657
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_ULTRA_HDR_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v15

    goto :goto_9d

    .line 1652
    :cond_96
    const/4 v1, 0x0

    move-object/from16 v18, v1

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    .line 1660
    :goto_9d
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEGR_AVAILABLE_JPEG_R_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1662
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEGR_AVAILABLE_JPEG_R_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1664
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEGR_AVAILABLE_JPEG_R_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1666
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 1668
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 1670
    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isBurstSupported()Z

    move-result v23

    .line 1671
    new-instance v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-direct/range {v2 .. v23}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V

    return-object v2
.end method

.method private blacklist getStreamConfigurationMapMaximumResolution()Landroid/hardware/camera2/params/StreamConfigurationMap;
    .registers 26

    .line 1700
    move-object/from16 v0, p0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1702
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1704
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1708
    const/4 v1, 0x0

    if-eqz v3, :cond_e2

    if-eqz v4, :cond_e2

    if-nez v5, :cond_26

    goto/16 :goto_e2

    .line 1714
    :cond_26
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1716
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1718
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1720
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1722
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1724
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1726
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1728
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1730
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1732
    nop

    .line 1733
    nop

    .line 1734
    nop

    .line 1735
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 1736
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_ULTRA_HDR_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1738
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_ULTRA_HDR_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1740
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_ULTRA_HDR_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v15}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v15

    goto :goto_a5

    .line 1735
    :cond_9f
    move-object/from16 v18, v1

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    .line 1743
    :goto_a5
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEGR_AVAILABLE_JPEG_R_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1745
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEGR_AVAILABLE_JPEG_R_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1747
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEGR_AVAILABLE_JPEG_R_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1749
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 1751
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 1754
    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isBurstSupported()Z

    move-result v23

    .line 1755
    new-instance v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v24, 0x0

    invoke-direct/range {v2 .. v24}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    return-object v2

    .line 1711
    :cond_e2
    :goto_e2
    return-object v1
.end method

.method public static greylist-max-o getTag(Ljava/lang/String;)I
    .registers 3

    .line 2439
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKey(Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public static greylist-max-o getTag(Ljava/lang/String;J)I
    .registers 3

    .line 2451
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKey(Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method private greylist-max-o getTonemapCurve()Landroid/hardware/camera2/params/TonemapCurve;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/hardware/camera2/params/TonemapCurve;"
        }
    .end annotation

    .line 1814
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 1815
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 1816
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 1818
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_24

    .line 1819
    return-object v4

    .line 1822
    :cond_24
    if-eqz v0, :cond_31

    if-eqz v1, :cond_31

    if-nez v2, :cond_2b

    goto :goto_31

    .line 1826
    :cond_2b
    new-instance v3, Landroid/hardware/camera2/params/TonemapCurve;

    invoke-direct {v3, v0, v1, v2}, Landroid/hardware/camera2/params/TonemapCurve;-><init>([F[F[F)V

    .line 1827
    return-object v3

    .line 1823
    :cond_31
    :goto_31
    const-string v0, "CameraMetadataJV"

    const-string v1, "getTonemapCurve - missing tone curve components"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    return-object v4
.end method

.method private blacklist isBurstSupported()Z
    .registers 2

    .line 1512
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isCapabilitySupported(I)Z
    .registers 7

    .line 1490
    nop

    .line 1492
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1493
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_18

    aget v4, v0, v3

    .line 1494
    if-ne p1, v4, :cond_15

    .line 1495
    nop

    .line 1496
    const/4 v2, 0x1

    goto :goto_18

    .line 1493
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1500
    :cond_18
    :goto_18
    return v2
.end method

.method private blacklist isCroppedRawSupported()Z
    .registers 9

    .line 1535
    nop

    .line 1537
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_USE_CASES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1538
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1539
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1540
    return v1

    .line 1542
    :cond_d
    array-length v2, v0

    move v3, v1

    :goto_f
    if-ge v3, v2, :cond_1e

    aget-wide v4, v0, v3

    .line 1543
    const-wide/16 v6, 0x6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1b

    .line 1544
    const/4 v0, 0x1

    return v0

    .line 1542
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1548
    :cond_1e
    return v1
.end method

.method private blacklist isPreviewStabilizationSupported()Z
    .registers 7

    .line 1517
    nop

    .line 1519
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1520
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1521
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1522
    return v1

    .line 1524
    :cond_d
    array-length v2, v0

    move v3, v1

    :goto_f
    if-ge v3, v2, :cond_1c

    aget v4, v0, v3

    .line 1525
    const/4 v5, 0x2

    if-ne v4, v5, :cond_19

    .line 1526
    nop

    .line 1527
    const/4 v1, 0x1

    goto :goto_1c

    .line 1524
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1531
    :cond_1c
    :goto_1c
    return v1
.end method

.method public static greylist-max-o move(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 2

    .line 414
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 415
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->swap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 416
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

.method private static native blacklist nativeClose(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeDump(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetAllVendorKeys(JLjava/lang/Class;)Ljava/util/ArrayList;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetBufferSize(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetEntryCount(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
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

.method private static native greylist-max-r nativeGetTagFromKeyLocal(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private declared-synchronized blacklist nativeGetTagFromKeyLocal(Ljava/lang/String;)I
    .registers 4

    monitor-enter p0

    .line 2361
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKeyLocal(JLjava/lang/String;)I

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    .line 2361
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
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

.method private declared-synchronized blacklist nativeGetTypeFromTagLocal(I)I
    .registers 4

    monitor-enter p0

    .line 2357
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTagLocal(JI)I

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    .line 2357
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method private static native greylist-max-r nativeGetTypeFromTagLocal(JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeIsEmpty(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeReadFromParcel(Landroid/os/Parcel;J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private declared-synchronized blacklist nativeReadValues(I)[B
    .registers 4

    monitor-enter p0

    .line 2353
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {p1, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadValues(IJ)[B

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    .line 2353
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method private static native greylist-max-r nativeReadValues(IJ)[B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeSetVendorId(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetupGlobalVendorTagDescriptor()I
.end method

.method private static native blacklist nativeSwap(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeUpdate(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteToParcel(Landroid/os/Parcel;J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteValues(I[BJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private blacklist parseRecommendedConfigurations([Landroid/hardware/camera2/params/RecommendedStreamConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Z)V
    .registers 30
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

    .line 1207
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1208
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1209
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1210
    const/4 v6, 0x0

    move v7, v6

    :goto_17
    if-ge v7, v5, :cond_34

    .line 1211
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 1216
    :cond_34
    array-length v7, v0

    move v8, v6

    :goto_36
    if-ge v8, v7, :cond_108

    aget-object v9, v0, v8

    .line 1217
    invoke-virtual {v9}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->getWidth()I

    move-result v12

    .line 1218
    invoke-virtual {v9}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->getHeight()I

    move-result v13

    .line 1219
    invoke-virtual {v9}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->getFormat()I

    move-result v11

    .line 1221
    if-eqz p3, :cond_4d

    invoke-static {v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->depthFormatToPublic(I)I

    move-result v10

    goto :goto_51

    .line 1222
    :cond_4d
    invoke-static {v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    move-result v10

    .line 1223
    :goto_51
    new-instance v14, Landroid/util/Size;

    invoke-direct {v14, v12, v13}, Landroid/util/Size;-><init>(II)V

    .line 1224
    invoke-virtual {v9}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->getUsecaseBitmap()I

    move-result v15

    .line 1226
    invoke-virtual {v9}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->isInput()Z

    move-result v9

    if-nez v9, :cond_db

    .line 1227
    nop

    .line 1228
    nop

    .line 1230
    new-instance v9, Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-direct {v9, v11, v12, v13, v6}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    .line 1233
    move-object v6, v14

    move/from16 v16, v15

    invoke-virtual {v1, v10, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v14

    .line 1234
    const-wide/16 v17, 0x0

    cmp-long v19, v14, v17

    const/16 v20, 0x0

    if-lez v19, :cond_85

    .line 1235
    move/from16 v21, v10

    new-instance v10, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object v5, v6

    move/from16 v0, v16

    move/from16 v6, v21

    const/16 v16, 0x1

    invoke-direct/range {v10 .. v15}, Landroid/hardware/camera2/params/StreamConfigurationDuration;-><init>(IIIJ)V

    goto :goto_8d

    .line 1234
    :cond_85
    move-object v5, v6

    move v6, v10

    move/from16 v0, v16

    const/16 v16, 0x1

    move-object/from16 v10, v20

    .line 1239
    :goto_8d
    invoke-virtual {v1, v6, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    move-result-wide v14

    .line 1240
    cmp-long v5, v14, v17

    if-lez v5, :cond_9f

    .line 1241
    move-object/from16 v20, v10

    new-instance v10, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v1, v20

    invoke-direct/range {v10 .. v15}, Landroid/hardware/camera2/params/StreamConfigurationDuration;-><init>(IIIJ)V

    goto :goto_a2

    .line 1240
    :cond_9f
    move-object v1, v10

    move-object/from16 v10, v20

    .line 1245
    :goto_a2
    const/4 v11, 0x0

    :goto_a3
    const/16 v12, 0x20

    if-ge v11, v12, :cond_da

    .line 1246
    shl-int v13, v16, v11

    and-int/2addr v13, v0

    if-eqz v13, :cond_d7

    .line 1247
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1248
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    if-lez v19, :cond_c0

    .line 1251
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1252
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    :cond_c0
    if-lez v5, :cond_cb

    .line 1256
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1257
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    :cond_cb
    if-eqz p7, :cond_d7

    aget-boolean v13, p7, v11

    if-nez v13, :cond_d7

    const/16 v13, 0x22

    if-ne v6, v13, :cond_d7

    .line 1262
    aput-boolean v16, p7, v11

    .line 1245
    :cond_d7
    add-int/lit8 v11, v11, 0x1

    goto :goto_a3

    .line 1266
    :cond_da
    goto :goto_f6

    .line 1267
    :cond_db
    move v1, v12

    move v0, v15

    const/16 v12, 0x20

    const/16 v16, 0x1

    const/16 v5, 0x10

    if-ne v0, v5, :cond_100

    .line 1272
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1274
    new-instance v5, Landroid/hardware/camera2/params/StreamConfiguration;

    move/from16 v6, v16

    invoke-direct {v5, v11, v1, v13, v6}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    :goto_f6
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move v5, v12

    const/4 v6, 0x0

    goto/16 :goto_36

    .line 1268
    :cond_100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Recommended input stream configurations should only be advertised in the ZSL use case!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1278
    :cond_108
    return-void
.end method

.method private static greylist-max-o registerAllMarshalers()V
    .registers 5

    .line 2540
    const/16 v0, 0x15

    new-array v1, v0, [Landroid/hardware/camera2/marshal/MarshalQueryable;

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;-><init>()V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;-><init>()V

    const/4 v4, 0x3

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;-><init>()V

    const/4 v4, 0x4

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;-><init>()V

    const/4 v4, 0x5

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSize;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSize;-><init>()V

    const/4 v4, 0x6

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;-><init>()V

    const/4 v4, 0x7

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;-><init>()V

    const/16 v4, 0x8

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;-><init>()V

    const/16 v4, 0x9

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;-><init>()V

    const/16 v4, 0xa

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;-><init>()V

    const/16 v4, 0xb

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle;-><init>()V

    const/16 v4, 0xc

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;-><init>()V

    const/16 v4, 0xd

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;-><init>()V

    const/16 v4, 0xe

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;-><init>()V

    const/16 v4, 0xf

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;-><init>()V

    const/16 v4, 0x10

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;-><init>()V

    const/16 v4, 0x11

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;-><init>()V

    const/16 v4, 0x12

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRecommendedStreamConfiguration;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRecommendedStreamConfiguration;-><init>()V

    const/16 v4, 0x13

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;

    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;-><init>()V

    const/16 v4, 0x14

    aput-object v2, v1, v4

    .line 2571
    nop

    :goto_ba
    if-ge v3, v0, :cond_c4

    aget-object v2, v1, v3

    .line 2572
    invoke-static {v2}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    .line 2571
    add-int/lit8 v3, v3, 0x1

    goto :goto_ba

    .line 2577
    :cond_c4
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

    .line 2195
    if-nez p1, :cond_4

    .line 2196
    const/4 p1, 0x0

    return p1

    .line 2198
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS_SET:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2199
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2200
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

    .line 2183
    if-nez p1, :cond_4

    .line 2184
    const/4 p1, 0x0

    return p1

    .line 2186
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS_SET:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2190
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2191
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

    .line 2204
    if-nez p1, :cond_4

    .line 2205
    const/4 p1, 0x0

    return p1

    .line 2207
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS_SET:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2208
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2209
    return v1
.end method

.method private greylist-max-o setAvailableFormats([I)Z
    .registers 6

    .line 2107
    nop

    .line 2108
    const/4 v0, 0x0

    if-nez p1, :cond_5

    .line 2110
    return v0

    .line 2113
    :cond_5
    array-length v1, p1

    new-array v1, v1, [I

    .line 2114
    nop

    :goto_9
    array-length v2, p1

    if-ge v0, v2, :cond_1d

    .line 2115
    aget v2, p1, v0

    aput v2, v1, v0

    .line 2116
    aget v2, p1, v0

    const/16 v3, 0x100

    if-ne v2, v3, :cond_1a

    .line 2117
    const/16 v2, 0x21

    aput v2, v1, v0

    .line 2114
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2121
    :cond_1d
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 2122
    const/4 p1, 0x1

    return p1
.end method

.method private greylist-max-o setBase(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1980
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 1981
    return-void
.end method

.method private greylist-max-o setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1988
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 1989
    return-void
.end method

.method private greylist-max-o setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1984
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 1985
    return-void
.end method

.method private declared-synchronized greylist-max-o setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1997
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1998
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v0

    goto :goto_19

    .line 2000
    :cond_c
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKeyLocal(JLjava/lang/String;)I

    move-result v0

    .line 2001
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->cacheTag(I)V

    .line 2003
    :goto_19
    if-nez p2, :cond_21

    .line 2005
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeValues(I[B)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_45

    .line 2006
    monitor-exit p0

    return-void

    .line 2009
    :cond_21
    :try_start_21
    iget-wide v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v1, v2, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTagLocal(JI)I

    move-result v1

    .line 2010
    invoke-static {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object p1

    .line 2011
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result v1

    .line 2014
    new-array v1, v1, [B

    .line 2016
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2017
    invoke-virtual {p1, p2, v2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    .line 2019
    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeValues(I[B)V
    :try_end_43
    .catchall {:try_start_21 .. :try_end_43} :catchall_45

    .line 2020
    monitor-exit p0

    return-void

    .line 1996
    :catchall_45
    move-exception p1

    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p1
.end method

.method private greylist-max-o setFaceRectangles([Landroid/graphics/Rect;)Z
    .registers 11

    .line 2138
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2139
    return v0

    .line 2142
    :cond_4
    array-length v1, p1

    new-array v2, v1, [Landroid/graphics/Rect;

    .line 2143
    nop

    :goto_8
    if-ge v0, v1, :cond_2e

    .line 2144
    new-instance v3, Landroid/graphics/Rect;

    aget-object v4, p1, v0

    iget v4, v4, Landroid/graphics/Rect;->left:I

    aget-object v5, p1, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aget-object v6, p1, v0

    iget v6, v6, Landroid/graphics/Rect;->right:I

    aget-object v7, p1, v0

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    aget-object v7, p1, v0

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    aget-object v8, p1, v0

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v2, v0

    .line 2143
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2151
    :cond_2e
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, p1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 2152
    const/4 p1, 0x1

    return p1
.end method

.method private greylist-max-o setFaces([Landroid/hardware/camera2/params/Face;)Z
    .registers 15

    .line 908
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 909
    return v0

    .line 912
    :cond_4
    array-length v1, p1

    .line 915
    nop

    .line 916
    array-length v2, p1

    const/4 v3, 0x1

    move v4, v0

    move v5, v3

    :goto_a
    if-ge v4, v2, :cond_25

    aget-object v6, p1, v4

    .line 917
    if-nez v6, :cond_1a

    .line 918
    add-int/lit8 v1, v1, -0x1

    .line 919
    const-string v6, "CameraMetadataJV"

    const-string v7, "setFaces - null face detected, skipping"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    goto :goto_22

    .line 923
    :cond_1a
    invoke-virtual {v6}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_22

    .line 924
    move v5, v0

    .line 916
    :cond_22
    :goto_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 928
    :cond_25
    new-array v2, v1, [Landroid/graphics/Rect;

    .line 929
    new-array v4, v1, [B

    .line 930
    nop

    .line 931
    nop

    .line 933
    if-eqz v5, :cond_34

    .line 934
    new-array v6, v1, [I

    .line 935
    mul-int/lit8 v1, v1, 0x6

    new-array v1, v1, [I

    goto :goto_36

    .line 933
    :cond_34
    const/4 v6, 0x0

    move-object v1, v6

    .line 938
    :goto_36
    nop

    .line 939
    array-length v7, p1

    move v8, v0

    :goto_39
    if-ge v0, v7, :cond_99

    aget-object v9, p1, v0

    .line 940
    if-nez v9, :cond_40

    .line 941
    goto :goto_96

    .line 944
    :cond_40
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    aput-object v10, v2, v8

    .line 945
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v4, v8

    .line 947
    if-eqz v5, :cond_94

    .line 948
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v10

    aput v10, v6, v8

    .line 950
    nop

    .line 952
    mul-int/lit8 v10, v8, 0x6

    add-int/lit8 v11, v10, 0x0

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->x:I

    aput v12, v1, v11

    .line 953
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    aput v12, v1, v11

    .line 954
    add-int/lit8 v11, v10, 0x2

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->x:I

    aput v12, v1, v11

    .line 955
    add-int/lit8 v11, v10, 0x3

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    aput v12, v1, v11

    .line 956
    add-int/lit8 v11, v10, 0x4

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->x:I

    aput v12, v1, v11

    .line 957
    add-int/lit8 v10, v10, 0x5

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    aput v9, v1, v10

    .line 960
    :cond_94
    add-int/lit8 v8, v8, 0x1

    .line 939
    :goto_96
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 963
    :cond_99
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, p1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 964
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, p1, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 965
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_LANDMARKS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 966
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_SCORES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 968
    return v3
.end method

.method private greylist-max-o setGpsLocation(Landroid/location/Location;)Z
    .registers 10

    .line 1173
    const/4 v0, 0x0

    if-nez p1, :cond_14

    .line 1177
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1178
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1179
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1180
    return v0

    .line 1183
    :cond_14
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    const/4 v7, 0x3

    new-array v7, v7, [D

    aput-wide v1, v7, v0

    const/4 v0, 0x1

    aput-wide v3, v7, v0

    const/4 v1, 0x2

    aput-wide v5, v7, v1

    .line 1184
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->translateLocationProviderToProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1186
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1188
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1189
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1191
    if-nez v1, :cond_52

    .line 1192
    const-string p1, "CameraMetadataJV"

    const-string v1, "setGpsLocation - No process method, Location is not from a GPS or NETWORKprovider"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 1195
    :cond_52
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1197
    :goto_57
    return v0
.end method

.method private blacklist setLensIntrinsicsSamples([Landroid/hardware/camera2/params/LensIntrinsicsSample;)Z
    .registers 9

    .line 1875
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1876
    return v0

    .line 1879
    :cond_4
    array-length v1, p1

    new-array v1, v1, [J

    .line 1880
    array-length v2, p1

    const/4 v3, 0x5

    mul-int/2addr v2, v3

    new-array v2, v2, [F

    .line 1881
    move v4, v0

    :goto_d
    array-length v5, p1

    if-ge v4, v5, :cond_26

    .line 1882
    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/LensIntrinsicsSample;->getTimestampNanos()J

    move-result-wide v5

    aput-wide v5, v1, v4

    .line 1883
    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/LensIntrinsicsSample;->getLensIntrinsics()[F

    move-result-object v5

    mul-int/lit8 v6, v4, 0x5

    invoke-static {v5, v0, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1881
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1886
    :cond_26
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_INTRINSIC_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, p1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 1887
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_INTRINSIC_TIMESTAMPS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 1889
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist setLensShadingMap(Landroid/hardware/camera2/params/LensShadingMap;)Z
    .registers 4

    .line 1080
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1081
    return v0

    .line 1083
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    move-result v1

    new-array v1, v1, [F

    .line 1084
    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/params/LensShadingMap;->copyGainFactors([FI)V

    .line 1085
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 1087
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/LensShadingMap;->getRowCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/camera2/params/LensShadingMap;->getColumnCount()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    .line 1088
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 1089
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist setScalerCropRegion(Landroid/graphics/Rect;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 2174
    if-nez p1, :cond_4

    .line 2175
    const/4 p1, 0x0

    return p1

    .line 2177
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION_SET:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2178
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2179
    return v1
.end method

.method private greylist-max-o setTonemapCurve(Landroid/hardware/camera2/params/TonemapCurve;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/params/TonemapCurve;",
            ")Z"
        }
    .end annotation

    .line 2156
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2157
    return v0

    .line 2160
    :cond_4
    const/4 v1, 0x3

    new-array v1, v1, [[F

    .line 2161
    move v2, v0

    :goto_8
    const/4 v3, 0x2

    if-gt v2, v3, :cond_1c

    .line 2162
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    move-result v4

    .line 2163
    mul-int/2addr v4, v3

    new-array v3, v4, [F

    aput-object v3, v1, v2

    .line 2164
    aget-object v3, v1, v2

    invoke-virtual {p1, v2, v3, v0}, Landroid/hardware/camera2/params/TonemapCurve;->copyColorCurve(I[FI)V

    .line 2161
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2166
    :cond_1c
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;

    aget-object v0, v1, v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2167
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x1

    aget-object v2, v1, v0

    invoke-direct {p0, p1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2168
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;

    aget-object v1, v1, v3

    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2170
    return v0
.end method

.method public static greylist-max-o setupGlobalVendorTagDescriptor()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 508
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSetupGlobalVendorTagDescriptor()I

    move-result v0

    .line 509
    if-nez v0, :cond_7

    .line 512
    return-void

    .line 510
    :cond_7
    new-instance v1, Landroid/os/ServiceSpecificException;

    const-string v2, "Failure to set up global vendor tags"

    invoke-direct {v1, v0, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o translateLocationProviderToProcess(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 345
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 346
    return-object v0

    .line 348
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2c

    :cond_b
    goto :goto_20

    :sswitch_c
    const-string v1, "network"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_21

    :sswitch_16
    const-string v1, "gps"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x0

    goto :goto_21

    :goto_20
    const/4 p0, -0x1

    :goto_21
    packed-switch p0, :pswitch_data_36

    .line 354
    return-object v0

    .line 352
    :pswitch_25
    const-string p0, "CELLID"

    return-object p0

    .line 350
    :pswitch_28
    const-string p0, "GPS"

    return-object p0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x190aa -> :sswitch_16
        0x6de15a2e -> :sswitch_c
    .end sparse-switch

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
    .end packed-switch
.end method

.method private static greylist-max-o translateProcessToLocationProvider(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 359
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 360
    return-object v0

    .line 362
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2c

    :cond_b
    goto :goto_20

    :sswitch_c
    const-string v1, "CELLID"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_21

    :sswitch_16
    const-string v1, "GPS"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x0

    goto :goto_21

    :goto_20
    const/4 p0, -0x1

    :goto_21
    packed-switch p0, :pswitch_data_36

    .line 368
    return-object v0

    .line 366
    :pswitch_25
    const-string p0, "network"

    return-object p0

    .line 364
    :pswitch_28
    const-string p0, "gps"

    return-object p0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x1148a -> :sswitch_16
        0x7644b9fd -> :sswitch_c
    .end sparse-switch

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
    .end packed-switch
.end method

.method public static blacklist update(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 4

    .line 429
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    iget-wide p0, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1, p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeUpdate(JJ)V

    .line 430
    return-void
.end method

.method private declared-synchronized blacklist updateNativeAllocation()V
    .registers 9

    monitor-enter p0

    .line 2213
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetBufferSize(J)J

    move-result-wide v0

    .line 2215
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2f

    .line 2216
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1e

    .line 2217
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget-wide v6, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    invoke-virtual {v2, v6, v7}, Ldalvik/system/VMRuntime;->registerNativeFree(J)V

    .line 2220
    :cond_1e
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    .line 2222
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2f

    .line 2223
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->registerNativeAllocation(J)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 2226
    :cond_2f
    monitor-exit p0

    return-void

    .line 2212
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized greylist-max-o dumpToLog()V
    .registers 4

    monitor-enter p0

    .line 2508
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeDump(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    .line 2511
    goto :goto_11

    .line 2507
    :catchall_7
    move-exception v0

    goto :goto_13

    .line 2509
    :catch_9
    move-exception v0

    .line 2510
    :try_start_a
    const-string v1, "CameraMetadataJV"

    const-string v2, "Dump logging failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_7

    .line 2512
    :goto_11
    monitor-exit p0

    return-void

    .line 2507
    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_7

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2517
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 2519
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2520
    nop

    .line 2521
    return-void

    .line 2519
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2520
    throw v0
.end method

.method public greylist-max-o get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 461
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 475
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 468
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 485
    const-string v0, "key must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 488
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/GetCommand;

    .line 489
    if-eqz v0, :cond_14

    .line 490
    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/impl/GetCommand;->getValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 492
    :cond_14
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized greylist-max-o getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;
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

    monitor-enter p0

    .line 2424
    if-eqz p1, :cond_d

    .line 2427
    :try_start_3
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetAllVendorKeys(JLjava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    .line 2423
    :catchall_b
    move-exception p1

    goto :goto_13

    .line 2425
    :cond_d
    :try_start_d
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2423
    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_b

    throw p1
.end method

.method public declared-synchronized greylist-max-o getEntryCount()I
    .registers 3

    monitor-enter p0

    .line 2396
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetEntryCount(J)I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 2396
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public blacklist getMetadataPtr()J
    .registers 3

    .line 2415
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    return-wide v0
.end method

.method public blacklist getMultiResolutionStreamConfigurationMap()Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
    .registers 2

    .line 2289
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    return-object v0
.end method

.method public blacklist getPhysicalCameraIds()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2600
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 2601
    if-eqz v0, :cond_45

    .line 2606
    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2608
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 2610
    :cond_17
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LOGICAL_MULTI_CAMERA_PHYSICAL_IDS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2612
    nop

    .line 2614
    :try_start_20
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_27} :catch_3c

    .line 2617
    nop

    .line 2618
    const-string v0, "\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2620
    new-instance v1, Ljava/util/HashSet;

    .line 2621
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2620
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 2615
    :catch_3c
    move-exception v0

    .line 2616
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "android.logicalCam.physicalIds must be UTF-8 string"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2602
    :cond_45
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "android.request.availableCapabilities must be non-null in the characteristics"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public blacklist getRecommendedStreamConfigurations()Ljava/util/ArrayList;
    .registers 82
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;",
            ">;"
        }
    .end annotation

    .line 1319
    move-object/from16 v0, p0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_RECOMMENDED_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    .line 1321
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_RECOMMENDED_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    .line 1323
    const/4 v9, 0x0

    if-nez v1, :cond_19

    if-nez v8, :cond_19

    .line 1324
    return-object v9

    .line 1327
    :cond_19
    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v2

    .line 1328
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1337
    const/16 v11, 0x20

    new-array v7, v11, [Z

    .line 1340
    const-string v12, "CameraMetadataJV"

    if-eqz v1, :cond_4a

    .line 1341
    const/4 v3, 0x0

    :try_start_3a
    invoke-direct/range {v0 .. v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->parseRecommendedConfigurations([Landroid/hardware/camera2/params/RecommendedStreamConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Z)V
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_3d} :catch_43

    move-object v13, v1

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v7

    goto :goto_4f

    .line 1344
    :catch_43
    move-exception v0

    .line 1345
    const-string v0, "Failed parsing the recommended stream configurations!"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return-object v9

    .line 1340
    :cond_4a
    move-object v13, v1

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v7

    .line 1347
    :goto_4f
    nop

    .line 1349
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1353
    move-object v0, v6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1355
    if-eqz v8, :cond_73

    .line 1357
    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v1, v8

    move-object v8, v0

    move-object/from16 v0, p0

    :try_start_68
    invoke-direct/range {v0 .. v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->parseRecommendedConfigurations([Landroid/hardware/camera2/params/RecommendedStreamConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Z)V
    :try_end_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_68 .. :try_end_6b} :catch_6c

    .line 1363
    goto :goto_77

    .line 1360
    :catch_6c
    move-exception v0

    .line 1361
    const-string v0, "Failed parsing the recommended depth stream configurations!"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    return-object v9

    .line 1355
    :cond_73
    move-object v1, v8

    move-object v8, v0

    move-object/from16 v0, p0

    .line 1366
    :goto_77
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_RECOMMENDED_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 1368
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v57, v2

    check-cast v57, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 1370
    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isBurstSupported()Z

    move-result v79

    .line 1371
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1373
    const/4 v2, 0x0

    :goto_93
    if-ge v2, v11, :cond_1ef

    .line 1374
    new-instance v3, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;

    invoke-direct {v3, v0, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative-IA;)V

    .line 1375
    if-eqz v13, :cond_b3

    .line 1376
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1377
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Ljava/util/ArrayList;

    .line 1376
    invoke-virtual {v0, v7, v12, v11, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->initializeStreamConfigurationData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;)V

    .line 1380
    :cond_b3
    new-instance v7, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;

    invoke-direct {v7, v0, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative-IA;)V

    .line 1381
    if-eqz v1, :cond_d1

    .line 1382
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 1383
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Ljava/util/ArrayList;

    .line 1382
    invoke-virtual {v0, v11, v12, v9, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->initializeStreamConfigurationData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;)V

    .line 1386
    :cond_d1
    iget-object v9, v3, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    if-eqz v9, :cond_da

    iget-object v9, v3, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v9, v9

    if-nez v9, :cond_e5

    :cond_da
    iget-object v9, v7, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    if-eqz v9, :cond_1e1

    iget-object v9, v7, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v9, v9

    if-nez v9, :cond_e5

    goto/16 :goto_1e1

    .line 1396
    :cond_e5
    nop

    .line 1397
    packed-switch v2, :pswitch_data_1f0

    .line 1462
    :pswitch_e9
    new-instance v58, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iget-object v0, v3, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v9, v3, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v3, v3, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v11, v7, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v12, v7, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v7, v7, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/16 v78, 0x0

    aget-boolean v80, v16, v2

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    move-object/from16 v59, v0

    move-object/from16 v61, v3

    move-object/from16 v64, v7

    move-object/from16 v60, v9

    move-object/from16 v62, v11

    move-object/from16 v63, v12

    invoke-direct/range {v58 .. v80}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    move-object/from16 v0, v58

    goto/16 :goto_1d5

    .line 1442
    :pswitch_128
    new-instance v17, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iget-object v9, v3, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v11, v3, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v3, v3, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v12, v7, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v0, v7, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v7, v7, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/16 v36, 0x0

    aget-boolean v39, v16, v2

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v22, v0

    move-object/from16 v20, v3

    move-object/from16 v23, v7

    move-object/from16 v18, v9

    move-object/from16 v19, v11

    move-object/from16 v21, v12

    move/from16 v38, v79

    invoke-direct/range {v17 .. v39}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    .line 1460
    move-object/from16 v0, v17

    goto :goto_1d5

    .line 1422
    :pswitch_166
    new-instance v38, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iget-object v0, v3, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v7, v3, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v3, v3, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/16 v58, 0x0

    aget-boolean v60, v16, v2

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    move-object/from16 v39, v0

    move-object/from16 v41, v3

    move-object/from16 v40, v7

    move/from16 v59, v79

    invoke-direct/range {v38 .. v60}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    .line 1440
    move-object/from16 v0, v38

    goto :goto_1d5

    .line 1402
    :pswitch_19e
    new-instance v58, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iget-object v0, v3, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v7, v3, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v3, v3, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/16 v78, 0x0

    aget-boolean v80, v16, v2

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    move-object/from16 v59, v0

    move-object/from16 v61, v3

    move-object/from16 v60, v7

    invoke-direct/range {v58 .. v80}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    .line 1420
    move-object/from16 v0, v58

    .line 1482
    :goto_1d5
    new-instance v3, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;

    aget-boolean v7, v16, v2

    invoke-direct {v3, v0, v2, v7}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;-><init>(Landroid/hardware/camera2/params/StreamConfigurationMap;IZ)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto :goto_1e6

    .line 1390
    :cond_1e1
    :goto_1e1
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    nop

    .line 1373
    :goto_1e6
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move-object v9, v3

    const/16 v11, 0x20

    goto/16 :goto_93

    .line 1486
    :cond_1ef
    return-object v10

    :pswitch_data_1f0
    .packed-switch 0x0
        :pswitch_19e
        :pswitch_166
        :pswitch_19e
        :pswitch_e9
        :pswitch_128
        :pswitch_19e
        :pswitch_19e
    .end packed-switch
.end method

.method public blacklist initializeStreamConfigurationData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;)V
    .registers 6
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

    .line 1289
    if-eqz p4, :cond_57

    if-nez p1, :cond_5

    goto :goto_57

    .line 1293
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v0, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1294
    iget-object v0, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object p1, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1296
    const/4 p1, 0x0

    if-eqz p2, :cond_33

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 1297
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1298
    iget-object v0, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object p2, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_37

    .line 1300
    :cond_33
    new-array p2, p1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object p2, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1303
    :goto_37
    if-eqz p3, :cond_52

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_52

    .line 1304
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object p1, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1305
    iget-object p1, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object p1, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_56

    .line 1307
    :cond_52
    new-array p1, p1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object p1, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1309
    :goto_56
    return-void

    .line 1290
    :cond_57
    :goto_57
    return-void
.end method

.method public declared-synchronized greylist-max-o isEmpty()Z
    .registers 3

    monitor-enter p0

    .line 2405
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeIsEmpty(J)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 2405
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public blacklist isUltraHighResolutionSensor()Z
    .registers 2

    .line 1507
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    monitor-enter p0

    .line 496
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {p1, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadFromParcel(Landroid/os/Parcel;J)V

    .line 497
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->updateNativeAllocation()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 498
    monitor-exit p0

    return-void

    .line 495
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized greylist-max-o readValues(I)[B
    .registers 4

    monitor-enter p0

    .line 2495
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {p1, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadValues(IJ)[B

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    .line 2495
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public greylist-max-o set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 551
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 552
    return-void
.end method

.method public greylist-max-o set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 543
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 544
    return-void
.end method

.method public greylist-max-o set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 547
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 548
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

    .line 533
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/SetCommand;

    .line 534
    if-eqz v0, :cond_e

    .line 535
    invoke-interface {v0, p0, p2}, Landroid/hardware/camera2/impl/SetCommand;->setValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)V

    .line 536
    return-void

    .line 539
    :cond_e
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 540
    return-void
.end method

.method public blacklist setCameraId(I)V
    .registers 2

    .line 2242
    iput p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    .line 2243
    return-void
.end method

.method public blacklist setDisplaySize(Landroid/util/Size;)V
    .registers 2

    .line 2265
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    .line 2266
    return-void
.end method

.method public blacklist setHasMandatoryConcurrentStreams(Z)V
    .registers 2

    .line 2254
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    .line 2255
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

    .line 2277
    new-instance v0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    invoke-direct {v0, p1}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 2279
    return-void
.end method

.method public declared-synchronized blacklist setVendorId(J)V
    .registers 5

    monitor-enter p0

    .line 2389
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSetVendorId(JJ)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 2390
    monitor-exit p0

    return-void

    .line 2388
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized greylist-max-o swap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 6

    monitor-enter p0

    .line 2374
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    iget-wide v2, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSwap(JJ)V

    .line 2375
    iget v0, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    .line 2376
    iget-boolean v0, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    .line 2377
    iget-object v0, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    .line 2378
    iget-object v0, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 2379
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->updateNativeAllocation()V

    .line 2380
    invoke-direct {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->updateNativeAllocation()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 2381
    monitor-exit p0

    return-void

    .line 2373
    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public declared-synchronized whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    monitor-enter p0

    .line 454
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {p1, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeWriteToParcel(Landroid/os/Parcel;J)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 455
    monitor-exit p0

    return-void

    .line 453
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized greylist-max-o writeValues(I[B)V
    .registers 5

    monitor-enter p0

    .line 2479
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {p1, p2, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeWriteValues(I[BJ)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 2480
    monitor-exit p0

    return-void

    .line 2478
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method
