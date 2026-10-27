.class public Landroid/hardware/Camera$Parameters;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Parameters"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist ANTIBANDING_50HZ:Ljava/lang/String; = "50hz"

.field public static final whitelist ANTIBANDING_60HZ:Ljava/lang/String; = "60hz"

.field public static final whitelist ANTIBANDING_AUTO:Ljava/lang/String; = "auto"

.field public static final whitelist ANTIBANDING_OFF:Ljava/lang/String; = "off"

.field public static final whitelist EFFECT_AQUA:Ljava/lang/String; = "aqua"

.field public static final whitelist EFFECT_BLACKBOARD:Ljava/lang/String; = "blackboard"

.field public static final whitelist EFFECT_MONO:Ljava/lang/String; = "mono"

.field public static final whitelist EFFECT_NEGATIVE:Ljava/lang/String; = "negative"

.field public static final whitelist EFFECT_NONE:Ljava/lang/String; = "none"

.field public static final whitelist EFFECT_POSTERIZE:Ljava/lang/String; = "posterize"

.field public static final whitelist EFFECT_SEPIA:Ljava/lang/String; = "sepia"

.field public static final whitelist EFFECT_SOLARIZE:Ljava/lang/String; = "solarize"

.field public static final whitelist EFFECT_WHITEBOARD:Ljava/lang/String; = "whiteboard"

.field private static final greylist-max-o FALSE:Ljava/lang/String; = "false"

.field public static final whitelist FLASH_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final whitelist FLASH_MODE_OFF:Ljava/lang/String; = "off"

.field public static final whitelist FLASH_MODE_ON:Ljava/lang/String; = "on"

.field public static final whitelist FLASH_MODE_RED_EYE:Ljava/lang/String; = "red-eye"

.field public static final whitelist FLASH_MODE_TORCH:Ljava/lang/String; = "torch"

.field public static final whitelist FOCUS_DISTANCE_FAR_INDEX:I = 0x2

.field public static final whitelist FOCUS_DISTANCE_NEAR_INDEX:I = 0x0

.field public static final whitelist FOCUS_DISTANCE_OPTIMAL_INDEX:I = 0x1

.field public static final whitelist FOCUS_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final whitelist FOCUS_MODE_CONTINUOUS_PICTURE:Ljava/lang/String; = "continuous-picture"

.field public static final whitelist FOCUS_MODE_CONTINUOUS_VIDEO:Ljava/lang/String; = "continuous-video"

.field public static final whitelist FOCUS_MODE_EDOF:Ljava/lang/String; = "edof"

.field public static final whitelist FOCUS_MODE_FIXED:Ljava/lang/String; = "fixed"

.field public static final whitelist FOCUS_MODE_INFINITY:Ljava/lang/String; = "infinity"

.field public static final whitelist FOCUS_MODE_MACRO:Ljava/lang/String; = "macro"

.field private static final greylist-max-o KEY_ANTIBANDING:Ljava/lang/String; = "antibanding"

.field private static final greylist-max-o KEY_AUTO_EXPOSURE_LOCK:Ljava/lang/String; = "auto-exposure-lock"

.field private static final greylist-max-o KEY_AUTO_EXPOSURE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-exposure-lock-supported"

.field private static final greylist-max-o KEY_AUTO_WHITEBALANCE_LOCK:Ljava/lang/String; = "auto-whitebalance-lock"

.field private static final greylist-max-o KEY_AUTO_WHITEBALANCE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-whitebalance-lock-supported"

.field private static final greylist-max-o KEY_EFFECT:Ljava/lang/String; = "effect"

.field private static final greylist-max-o KEY_EXPOSURE_COMPENSATION:Ljava/lang/String; = "exposure-compensation"

.field private static final greylist-max-o KEY_EXPOSURE_COMPENSATION_STEP:Ljava/lang/String; = "exposure-compensation-step"

.field private static final greylist-max-o KEY_FLASH_MODE:Ljava/lang/String; = "flash-mode"

.field private static final greylist-max-o KEY_FOCAL_LENGTH:Ljava/lang/String; = "focal-length"

.field private static final greylist-max-o KEY_FOCUS_AREAS:Ljava/lang/String; = "focus-areas"

.field private static final greylist-max-o KEY_FOCUS_DISTANCES:Ljava/lang/String; = "focus-distances"

.field private static final greylist-max-o KEY_FOCUS_MODE:Ljava/lang/String; = "focus-mode"

.field private static final greylist-max-o KEY_GPS_ALTITUDE:Ljava/lang/String; = "gps-altitude"

.field private static final greylist-max-o KEY_GPS_LATITUDE:Ljava/lang/String; = "gps-latitude"

.field private static final greylist-max-o KEY_GPS_LONGITUDE:Ljava/lang/String; = "gps-longitude"

.field private static final greylist-max-o KEY_GPS_PROCESSING_METHOD:Ljava/lang/String; = "gps-processing-method"

.field private static final greylist-max-o KEY_GPS_TIMESTAMP:Ljava/lang/String; = "gps-timestamp"

.field private static final greylist-max-o KEY_HORIZONTAL_VIEW_ANGLE:Ljava/lang/String; = "horizontal-view-angle"

.field private static final greylist-max-o KEY_JPEG_QUALITY:Ljava/lang/String; = "jpeg-quality"

.field private static final greylist-max-o KEY_JPEG_THUMBNAIL_HEIGHT:Ljava/lang/String; = "jpeg-thumbnail-height"

.field private static final greylist-max-o KEY_JPEG_THUMBNAIL_QUALITY:Ljava/lang/String; = "jpeg-thumbnail-quality"

.field private static final greylist-max-o KEY_JPEG_THUMBNAIL_SIZE:Ljava/lang/String; = "jpeg-thumbnail-size"

.field private static final greylist-max-o KEY_JPEG_THUMBNAIL_WIDTH:Ljava/lang/String; = "jpeg-thumbnail-width"

.field private static final greylist-max-o KEY_MAX_EXPOSURE_COMPENSATION:Ljava/lang/String; = "max-exposure-compensation"

.field private static final greylist-max-o KEY_MAX_NUM_DETECTED_FACES_HW:Ljava/lang/String; = "max-num-detected-faces-hw"

.field private static final greylist-max-o KEY_MAX_NUM_DETECTED_FACES_SW:Ljava/lang/String; = "max-num-detected-faces-sw"

.field private static final greylist-max-o KEY_MAX_NUM_FOCUS_AREAS:Ljava/lang/String; = "max-num-focus-areas"

.field private static final greylist-max-o KEY_MAX_NUM_METERING_AREAS:Ljava/lang/String; = "max-num-metering-areas"

.field private static final greylist-max-o KEY_MAX_ZOOM:Ljava/lang/String; = "max-zoom"

.field private static final greylist-max-o KEY_METERING_AREAS:Ljava/lang/String; = "metering-areas"

.field private static final greylist-max-o KEY_MIN_EXPOSURE_COMPENSATION:Ljava/lang/String; = "min-exposure-compensation"

.field private static final greylist-max-o KEY_PICTURE_FORMAT:Ljava/lang/String; = "picture-format"

.field private static final greylist-max-o KEY_PICTURE_SIZE:Ljava/lang/String; = "picture-size"

.field private static final greylist-max-o KEY_PREFERRED_PREVIEW_SIZE_FOR_VIDEO:Ljava/lang/String; = "preferred-preview-size-for-video"

.field private static final greylist-max-o KEY_PREVIEW_FORMAT:Ljava/lang/String; = "preview-format"

.field private static final greylist-max-o KEY_PREVIEW_FPS_RANGE:Ljava/lang/String; = "preview-fps-range"

.field private static final greylist-max-o KEY_PREVIEW_FRAME_RATE:Ljava/lang/String; = "preview-frame-rate"

.field private static final greylist-max-o KEY_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field private static final greylist-max-o KEY_RECORDING_HINT:Ljava/lang/String; = "recording-hint"

.field private static final greylist-max-o KEY_ROTATION:Ljava/lang/String; = "rotation"

.field private static final greylist-max-o KEY_SCENE_MODE:Ljava/lang/String; = "scene-mode"

.field private static final greylist-max-o KEY_SMOOTH_ZOOM_SUPPORTED:Ljava/lang/String; = "smooth-zoom-supported"

.field private static final greylist-max-o KEY_VERTICAL_VIEW_ANGLE:Ljava/lang/String; = "vertical-view-angle"

.field private static final greylist-max-o KEY_VIDEO_SIZE:Ljava/lang/String; = "video-size"

.field private static final greylist-max-o KEY_VIDEO_SNAPSHOT_SUPPORTED:Ljava/lang/String; = "video-snapshot-supported"

.field private static final greylist-max-o KEY_VIDEO_STABILIZATION:Ljava/lang/String; = "video-stabilization"

.field private static final greylist-max-o KEY_VIDEO_STABILIZATION_SUPPORTED:Ljava/lang/String; = "video-stabilization-supported"

.field private static final greylist-max-o KEY_WHITE_BALANCE:Ljava/lang/String; = "whitebalance"

.field private static final greylist-max-o KEY_ZOOM:Ljava/lang/String; = "zoom"

.field private static final greylist-max-o KEY_ZOOM_RATIOS:Ljava/lang/String; = "zoom-ratios"

.field private static final greylist-max-o KEY_ZOOM_SUPPORTED:Ljava/lang/String; = "zoom-supported"

.field private static final greylist-max-o PIXEL_FORMAT_BAYER_RGGB:Ljava/lang/String; = "bayer-rggb"

.field private static final greylist-max-o PIXEL_FORMAT_JPEG:Ljava/lang/String; = "jpeg"

.field private static final greylist-max-o PIXEL_FORMAT_RGB565:Ljava/lang/String; = "rgb565"

.field private static final greylist-max-o PIXEL_FORMAT_YUV420P:Ljava/lang/String; = "yuv420p"

.field private static final greylist-max-o PIXEL_FORMAT_YUV420SP:Ljava/lang/String; = "yuv420sp"

.field private static final greylist-max-o PIXEL_FORMAT_YUV422I:Ljava/lang/String; = "yuv422i-yuyv"

.field private static final greylist-max-o PIXEL_FORMAT_YUV422SP:Ljava/lang/String; = "yuv422sp"

.field public static final whitelist PREVIEW_FPS_MAX_INDEX:I = 0x1

.field public static final whitelist PREVIEW_FPS_MIN_INDEX:I = 0x0

.field public static final whitelist SCENE_MODE_ACTION:Ljava/lang/String; = "action"

.field public static final whitelist SCENE_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final whitelist SCENE_MODE_BARCODE:Ljava/lang/String; = "barcode"

.field public static final whitelist SCENE_MODE_BEACH:Ljava/lang/String; = "beach"

.field public static final whitelist SCENE_MODE_CANDLELIGHT:Ljava/lang/String; = "candlelight"

.field public static final whitelist SCENE_MODE_FIREWORKS:Ljava/lang/String; = "fireworks"

.field public static final whitelist SCENE_MODE_HDR:Ljava/lang/String; = "hdr"

.field public static final whitelist SCENE_MODE_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final whitelist SCENE_MODE_NIGHT:Ljava/lang/String; = "night"

.field public static final whitelist SCENE_MODE_NIGHT_PORTRAIT:Ljava/lang/String; = "night-portrait"

.field public static final whitelist SCENE_MODE_PARTY:Ljava/lang/String; = "party"

.field public static final whitelist SCENE_MODE_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final whitelist SCENE_MODE_SNOW:Ljava/lang/String; = "snow"

.field public static final whitelist SCENE_MODE_SPORTS:Ljava/lang/String; = "sports"

.field public static final whitelist SCENE_MODE_STEADYPHOTO:Ljava/lang/String; = "steadyphoto"

.field public static final whitelist SCENE_MODE_SUNSET:Ljava/lang/String; = "sunset"

.field public static final whitelist SCENE_MODE_THEATRE:Ljava/lang/String; = "theatre"

.field private static final greylist-max-o SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final greylist-max-o TRUE:Ljava/lang/String; = "true"

.field public static final whitelist WHITE_BALANCE_AUTO:Ljava/lang/String; = "auto"

.field public static final whitelist WHITE_BALANCE_CLOUDY_DAYLIGHT:Ljava/lang/String; = "cloudy-daylight"

.field public static final whitelist WHITE_BALANCE_DAYLIGHT:Ljava/lang/String; = "daylight"

.field public static final whitelist WHITE_BALANCE_FLUORESCENT:Ljava/lang/String; = "fluorescent"

.field public static final whitelist WHITE_BALANCE_INCANDESCENT:Ljava/lang/String; = "incandescent"

.field public static final whitelist WHITE_BALANCE_SHADE:Ljava/lang/String; = "shade"

.field public static final whitelist WHITE_BALANCE_TWILIGHT:Ljava/lang/String; = "twilight"

.field public static final whitelist WHITE_BALANCE_WARM_FLUORESCENT:Ljava/lang/String; = "warm-fluorescent"


# instance fields
.field private final greylist-max-o mMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/hardware/Camera;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetOuter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/Camera$Parameters;->getOuter()Landroid/hardware/Camera;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/hardware/Camera;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2648
    iput-object p1, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2649
    new-instance p1, Ljava/util/LinkedHashMap;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object p1, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    .line 2650
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/Camera;Landroid/hardware/Camera-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;)V

    return-void
.end method

.method private greylist-max-o cameraFormatForPixelFormat(I)Ljava/lang/String;
    .registers 2

    .line 3298
    sparse-switch p1, :sswitch_data_1e

    .line 3305
    const/4 p1, 0x0

    return-object p1

    .line 3302
    :sswitch_5
    const-string/jumbo p1, "yuv420p"

    return-object p1

    .line 3304
    :sswitch_9
    const-string/jumbo p1, "jpeg"

    return-object p1

    .line 3301
    :sswitch_d
    const-string/jumbo p1, "yuv422i-yuyv"

    return-object p1

    .line 3300
    :sswitch_11
    const-string/jumbo p1, "yuv420sp"

    return-object p1

    .line 3299
    :sswitch_15
    const-string/jumbo p1, "yuv422sp"

    return-object p1

    .line 3303
    :sswitch_19
    const-string/jumbo p1, "rgb565"

    return-object p1

    nop

    :sswitch_data_1e
    .sparse-switch
        0x4 -> :sswitch_19
        0x10 -> :sswitch_15
        0x11 -> :sswitch_11
        0x14 -> :sswitch_d
        0x100 -> :sswitch_9
        0x32315659 -> :sswitch_5
    .end sparse-switch
.end method

.method private greylist-max-o getFloat(Ljava/lang/String;F)F
    .registers 4

    .line 4365
    :try_start_0
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 4366
    :catch_d
    move-exception p1

    .line 4367
    return p2
.end method

.method private greylist-max-o getInt(Ljava/lang/String;I)I
    .registers 4

    .line 4374
    :try_start_0
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 4375
    :catch_d
    move-exception p1

    .line 4376
    return p2
.end method

.method private greylist-max-o getOuter()Landroid/hardware/Camera;
    .registers 2

    .line 2669
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    return-object v0
.end method

.method private greylist-max-o pixelFormatForCameraFormat(Ljava/lang/String;)I
    .registers 4

    .line 3310
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3311
    return v0

    .line 3313
    :cond_4
    const-string/jumbo v1, "yuv422sp"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3314
    const/16 p1, 0x10

    return p1

    .line 3316
    :cond_10
    const-string/jumbo v1, "yuv420sp"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3317
    const/16 p1, 0x11

    return p1

    .line 3319
    :cond_1c
    const-string/jumbo v1, "yuv422i-yuyv"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 3320
    const/16 p1, 0x14

    return p1

    .line 3322
    :cond_28
    const-string/jumbo v1, "yuv420p"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 3323
    const p1, 0x32315659

    return p1

    .line 3325
    :cond_35
    const-string/jumbo v1, "rgb565"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 3326
    const/4 p1, 0x4

    return p1

    .line 3328
    :cond_40
    const-string/jumbo v1, "jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 3329
    const/16 p1, 0x100

    return p1

    .line 3331
    :cond_4c
    return v0
.end method

.method private greylist-max-o put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2784
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2785
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2786
    return-void
.end method

.method private greylist-max-o same(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 4475
    const/4 v0, 0x1

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v0

    .line 4476
    :cond_6
    if-eqz p1, :cond_f

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    return v0

    .line 4477
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method private greylist-max-o set(Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .line 2789
    if-nez p2, :cond_8

    .line 2790
    const-string p2, "(0,0,0,0,0)"

    invoke-virtual {p0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 2792
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2793
    const/4 v1, 0x0

    :goto_e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5b

    .line 2794
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    .line 2795
    iget-object v3, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 2796
    const/16 v4, 0x28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2797
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2798
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2799
    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2800
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2801
    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2802
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2803
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2804
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2805
    iget v2, v2, Landroid/hardware/Camera$Area;->weight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2806
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2807
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_58

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2793
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2809
    :cond_5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2811
    :goto_62
    return-void
.end method

.method private greylist-max-o split(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4313
    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 4315
    :cond_4
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 4316
    invoke-interface {v0, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 4317
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4318
    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4319
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4320
    goto :goto_17

    .line 4321
    :cond_27
    return-object p1
.end method

.method private greylist-max-r splitArea(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 4442
    const/4 v0, 0x0

    if-eqz p1, :cond_88

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_88

    .line 4443
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x29

    if-eq v2, v4, :cond_1b

    goto :goto_88

    .line 4448
    :cond_1b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4449
    nop

    .line 4450
    const/4 v4, 0x5

    new-array v4, v4, [I

    move v5, v3

    .line 4452
    :cond_25
    const-string v6, "),("

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 4453
    const/4 v7, -0x1

    if-ne v6, v7, :cond_33

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    .line 4454
    :cond_33
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;[I)V

    .line 4455
    new-instance v5, Landroid/graphics/Rect;

    aget v7, v4, v1

    aget v8, v4, v3

    const/4 v9, 0x2

    aget v9, v4, v9

    const/4 v10, 0x3

    aget v10, v4, v10

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4456
    new-instance v7, Landroid/hardware/Camera$Area;

    const/4 v8, 0x4

    aget v8, v4, v8

    invoke-direct {v7, v5, v8}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4457
    add-int/lit8 v5, v6, 0x3

    .line 4458
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v3

    if-ne v6, v7, :cond_25

    .line 4460
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_64

    return-object v0

    .line 4462
    :cond_64
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_87

    .line 4463
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera$Area;

    .line 4464
    iget-object v1, p1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 4465
    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_87

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_87

    iget v3, v1, Landroid/graphics/Rect;->right:I

    if-nez v3, :cond_87

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-nez v1, :cond_87

    iget p1, p1, Landroid/hardware/Camera$Area;->weight:I

    if-nez p1, :cond_87

    .line 4467
    return-object v0

    .line 4471
    :cond_87
    return-object v2

    .line 4444
    :cond_88
    :goto_88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid area string="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Camera"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4445
    return-object v0
.end method

.method private greylist-max-o splitFloat(Ljava/lang/String;[F)V
    .registers 6

    .line 4352
    if-nez p1, :cond_3

    return-void

    .line 4354
    :cond_3
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 4355
    invoke-interface {v0, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 4356
    nop

    .line 4357
    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4358
    add-int/lit8 v2, v0, 0x1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, p2, v0

    .line 4359
    move v0, v2

    goto :goto_13

    .line 4360
    :cond_29
    return-void
.end method

.method private greylist-max-o splitInt(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4327
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 4329
    :cond_4
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 4330
    invoke-interface {v1, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 4331
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4332
    invoke-interface {v1}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4333
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4334
    goto :goto_17

    .line 4335
    :cond_2f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_36

    return-object v0

    .line 4336
    :cond_36
    return-object p1
.end method

.method private greylist-max-o splitInt(Ljava/lang/String;[I)V
    .registers 6

    .line 4340
    if-nez p1, :cond_3

    return-void

    .line 4342
    :cond_3
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 4343
    invoke-interface {v0, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 4344
    nop

    .line 4345
    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4346
    add-int/lit8 v2, v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, p2, v0

    .line 4347
    move v0, v2

    goto :goto_13

    .line 4348
    :cond_29
    return-void
.end method

.method private greylist-max-o splitRange(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation

    .line 4416
    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_4d

    .line 4417
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x29

    if-eq v1, v3, :cond_1b

    goto :goto_4d

    .line 4422
    :cond_1b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4423
    move v3, v2

    .line 4425
    :cond_21
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 4426
    const-string v5, "),("

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 4427
    const/4 v6, -0x1

    if-ne v5, v6, :cond_32

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    .line 4428
    :cond_32
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;[I)V

    .line 4429
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4430
    add-int/lit8 v3, v5, 0x3

    .line 4431
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v5, v4, :cond_21

    .line 4433
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_4c

    return-object v0

    .line 4434
    :cond_4c
    return-object v1

    .line 4418
    :cond_4d
    :goto_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid range list string="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Camera"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4419
    return-object v0
.end method

.method private greylist-max-o splitSize(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 4383
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 4385
    :cond_4
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 4386
    invoke-interface {v1, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 4387
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4388
    invoke-interface {v1}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4389
    invoke-direct {p0, v2}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 4390
    if-eqz v2, :cond_2c

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4391
    :cond_2c
    goto :goto_17

    .line 4392
    :cond_2d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_34

    return-object v0

    .line 4393
    :cond_34
    return-object p1
.end method

.method private greylist-max-o strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;
    .registers 5

    .line 4399
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 4401
    :cond_4
    const/16 v1, 0x78

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 4402
    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    .line 4403
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4404
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 4405
    new-instance v1, Landroid/hardware/Camera$Size;

    iget-object v2, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4406
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, v2, v0, p1}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    .line 4405
    return-object v1

    .line 4408
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid size parameter string="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Camera"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    return-object v0
.end method


# virtual methods
.method public greylist copyFrom(Landroid/hardware/Camera$Parameters;)V
    .registers 3

    .line 2661
    if-eqz p1, :cond_a

    .line 2665
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 2666
    return-void

    .line 2662
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "other must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist dump()V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2695
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    goto :goto_28

    .line 2697
    :cond_5d
    return-void
.end method

.method public whitelist flatten()Ljava/lang/String;
    .registers 5

    .line 2708
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2709
    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2710
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2711
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2712
    iget-object v3, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2713
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2714
    goto :goto_11

    .line 2716
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2717
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2820
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public whitelist getAntibanding()Ljava/lang/String;
    .registers 2

    .line 3561
    const-string v0, "antibanding"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAutoExposureLock()Z
    .registers 3

    .line 3856
    const-string v0, "auto-exposure-lock"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3857
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist getAutoWhiteBalanceLock()Z
    .registers 3

    .line 3928
    const-string v0, "auto-whitebalance-lock"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3929
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist getColorEffect()Ljava/lang/String;
    .registers 2

    .line 3524
    const-string v0, "effect"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExposureCompensation()I
    .registers 3

    .line 3756
    const-string v0, "exposure-compensation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getExposureCompensationStep()F
    .registers 3

    .line 3804
    const-string v0, "exposure-compensation-step"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public whitelist getFlashMode()Ljava/lang/String;
    .registers 2

    .line 3652
    const-string v0, "flash-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFocalLength()F
    .registers 2

    .line 3724
    const-string v0, "focal-length"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public whitelist getFocusAreas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 4113
    const-string v0, "focus-areas"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitArea(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFocusDistances([F)V
    .registers 4

    .line 4051
    if-eqz p1, :cond_10

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 4055
    const-string v0, "focus-distances"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->splitFloat(Ljava/lang/String;[F)V

    .line 4056
    return-void

    .line 4052
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "output must be a float array with three elements."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getFocusMode()Ljava/lang/String;
    .registers 2

    .line 3692
    const-string v0, "focus-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHorizontalViewAngle()F
    .registers 2

    .line 3734
    const-string v0, "horizontal-view-angle"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public whitelist getInt(Ljava/lang/String;)I
    .registers 3

    .line 2830
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist getJpegQuality()I
    .registers 2

    .line 3018
    const-string/jumbo v0, "jpeg-quality"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getJpegThumbnailQuality()I
    .registers 2

    .line 2999
    const-string/jumbo v0, "jpeg-thumbnail-quality"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getJpegThumbnailSize()Landroid/hardware/Camera$Size;
    .registers 5

    .line 2967
    new-instance v0, Landroid/hardware/Camera$Size;

    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    const-string/jumbo v2, "jpeg-thumbnail-width"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2968
    const-string/jumbo v3, "jpeg-thumbnail-height"

    invoke-virtual {p0, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    .line 2967
    return-object v0
.end method

.method public whitelist getMaxExposureCompensation()I
    .registers 3

    .line 3781
    const-string/jumbo v0, "max-exposure-compensation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxNumDetectedFaces()I
    .registers 3

    .line 4203
    const-string/jumbo v0, "max-num-detected-faces-hw"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxNumFocusAreas()I
    .registers 3

    .line 4067
    const-string/jumbo v0, "max-num-focus-areas"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxNumMeteringAreas()I
    .registers 3

    .line 4135
    const-string/jumbo v0, "max-num-metering-areas"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxZoom()I
    .registers 3

    .line 3993
    const-string/jumbo v0, "max-zoom"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getMeteringAreas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 4179
    const-string/jumbo v0, "metering-areas"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitArea(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMinExposureCompensation()I
    .registers 3

    .line 3792
    const-string/jumbo v0, "min-exposure-compensation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getPictureFormat()I
    .registers 2

    .line 3276
    const-string/jumbo v0, "picture-format"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getPictureSize()Landroid/hardware/Camera$Size;
    .registers 2

    .line 3235
    const-string/jumbo v0, "picture-size"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3236
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;
    .registers 2

    .line 2939
    const-string/jumbo v0, "preferred-preview-size-for-video"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2940
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPreviewFormat()I
    .registers 2

    .line 3178
    const-string/jumbo v0, "preview-format"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getPreviewFpsRange([I)V
    .registers 4

    .line 3085
    if-eqz p1, :cond_11

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 3089
    const-string/jumbo v0, "preview-fps-range"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;[I)V

    .line 3090
    return-void

    .line 3086
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "range must be an array with two elements."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getPreviewFrameRate()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3043
    const-string/jumbo v0, "preview-frame-rate"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getPreviewSize()Landroid/hardware/Camera$Size;
    .registers 2

    .line 2878
    const-string/jumbo v0, "preview-size"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2879
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSceneMode()Ljava/lang/String;
    .registers 2

    .line 3609
    const-string/jumbo v0, "scene-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedAntibanding()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3582
    const-string v0, "antibanding-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3583
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedColorEffects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3545
    const-string v0, "effect-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3546
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedFlashModes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3673
    const-string v0, "flash-mode-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3674
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedFocusModes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3713
    const-string v0, "focus-mode-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3714
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedJpegThumbnailSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 2979
    const-string/jumbo v0, "jpeg-thumbnail-size-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2980
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedPictureFormats()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3287
    const-string/jumbo v0, "picture-format-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3289
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3290
    invoke-direct {p0, v2}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v2

    .line 3291
    if-nez v2, :cond_27

    goto :goto_14

    .line 3292
    :cond_27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3293
    goto :goto_14

    .line 3294
    :cond_2f
    return-object v1
.end method

.method public whitelist getSupportedPictureSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 3246
    const-string/jumbo v0, "picture-size-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3247
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedPreviewFormats()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3192
    const-string/jumbo v0, "preview-format-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3194
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3195
    invoke-direct {p0, v2}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v2

    .line 3196
    if-nez v2, :cond_27

    goto :goto_14

    .line 3197
    :cond_27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3198
    goto :goto_14

    .line 3199
    :cond_2f
    return-object v1
.end method

.method public whitelist getSupportedPreviewFpsRange()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 3110
    const-string/jumbo v0, "preview-fps-range-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3111
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitRange(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedPreviewFrameRates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3055
    const-string/jumbo v0, "preview-frame-rate-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3056
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedPreviewSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 2889
    const-string/jumbo v0, "preview-size-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2890
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedSceneModes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3636
    const-string/jumbo v0, "scene-mode-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3637
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedVideoSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 2919
    const-string/jumbo v0, "video-size-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2920
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedWhiteBalance()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3504
    const-string/jumbo v0, "whitebalance-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3505
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVerticalViewAngle()F
    .registers 2

    .line 3744
    const-string/jumbo v0, "vertical-view-angle"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public whitelist getVideoStabilization()Z
    .registers 3

    .line 4293
    const-string/jumbo v0, "video-stabilization"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4294
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist getWhiteBalance()Ljava/lang/String;
    .registers 2

    .line 3477
    const-string/jumbo v0, "whitebalance"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getZoom()I
    .registers 3

    .line 3955
    const-string/jumbo v0, "zoom"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getZoomRatios()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4007
    const-string/jumbo v0, "zoom-ratios"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isAutoExposureLockSupported()Z
    .registers 3

    .line 3870
    const-string v0, "auto-exposure-lock-supported"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3871
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist isAutoWhiteBalanceLockSupported()Z
    .registers 3

    .line 3942
    const-string v0, "auto-whitebalance-lock-supported"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3943
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist isSmoothZoomSupported()Z
    .registers 3

    .line 4017
    const-string/jumbo v0, "smooth-zoom-supported"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4018
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist isVideoSnapshotSupported()Z
    .registers 3

    .line 4256
    const-string/jumbo v0, "video-snapshot-supported"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4257
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist isVideoStabilizationSupported()Z
    .registers 3

    .line 4306
    const-string/jumbo v0, "video-stabilization-supported"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4307
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist isZoomSupported()Z
    .registers 3

    .line 3979
    const-string/jumbo v0, "zoom-supported"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3980
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist remove(Ljava/lang/String;)V
    .registers 3

    .line 2745
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2746
    return-void
.end method

.method public whitelist removeGpsData()V
    .registers 2

    .line 3454
    const-string v0, "gps-latitude"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 3455
    const-string v0, "gps-longitude"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 3456
    const-string v0, "gps-altitude"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 3457
    const-string v0, "gps-timestamp"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 3458
    const-string v0, "gps-processing-method"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 3459
    return-void
.end method

.method public greylist-max-o same(Landroid/hardware/Camera$Parameters;)Z
    .registers 4

    .line 2679
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2680
    return v0

    .line 2682
    :cond_4
    if-eqz p1, :cond_11

    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public whitelist set(Ljava/lang/String;I)V
    .registers 3

    .line 2774
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera$Parameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    return-void
.end method

.method public whitelist set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 2755
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "\" contains invalid character (= or ; or \\0)"

    const-string v3, "Camera"

    const/4 v4, -0x1

    if-ne v1, v4, :cond_4f

    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v4, :cond_4f

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v4, :cond_1d

    goto :goto_4f

    .line 2759
    :cond_1d
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v4, :cond_34

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v4, :cond_34

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v4, :cond_30

    goto :goto_34

    .line 2764
    :cond_30
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera$Parameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2765
    return-void

    .line 2760
    :cond_34
    :goto_34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Value \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    return-void

    .line 2756
    :cond_4f
    :goto_4f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    return-void
.end method

.method public whitelist setAntibanding(Ljava/lang/String;)V
    .registers 3

    .line 3571
    const-string v0, "antibanding"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3572
    return-void
.end method

.method public whitelist setAutoExposureLock(Z)V
    .registers 3

    .line 3841
    if-eqz p1, :cond_6

    const-string/jumbo p1, "true"

    goto :goto_8

    :cond_6
    const-string p1, "false"

    :goto_8
    const-string v0, "auto-exposure-lock"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3842
    return-void
.end method

.method public whitelist setAutoWhiteBalanceLock(Z)V
    .registers 3

    .line 3911
    if-eqz p1, :cond_6

    const-string/jumbo p1, "true"

    goto :goto_8

    :cond_6
    const-string p1, "false"

    :goto_8
    const-string v0, "auto-whitebalance-lock"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3912
    return-void
.end method

.method public whitelist setColorEffect(Ljava/lang/String;)V
    .registers 3

    .line 3534
    const-string v0, "effect"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3535
    return-void
.end method

.method public whitelist setExposureCompensation(I)V
    .registers 3

    .line 3770
    const-string v0, "exposure-compensation"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3771
    return-void
.end method

.method public whitelist setFlashMode(Ljava/lang/String;)V
    .registers 3

    .line 3662
    const-string v0, "flash-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3663
    return-void
.end method

.method public whitelist setFocusAreas(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .line 4123
    const-string v0, "focus-areas"

    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/util/List;)V

    .line 4124
    return-void
.end method

.method public whitelist setFocusMode(Ljava/lang/String;)V
    .registers 3

    .line 3702
    const-string v0, "focus-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3703
    return-void
.end method

.method public whitelist setGpsAltitude(D)V
    .registers 4

    .line 3426
    const-string v0, "gps-altitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3427
    return-void
.end method

.method public whitelist setGpsLatitude(D)V
    .registers 4

    .line 3407
    const-string v0, "gps-latitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3408
    return-void
.end method

.method public whitelist setGpsLongitude(D)V
    .registers 4

    .line 3417
    const-string v0, "gps-longitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3418
    return-void
.end method

.method public whitelist setGpsProcessingMethod(Ljava/lang/String;)V
    .registers 3

    .line 3446
    const-string v0, "gps-processing-method"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3447
    return-void
.end method

.method public whitelist setGpsTimestamp(J)V
    .registers 4

    .line 3436
    const-string v0, "gps-timestamp"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3437
    return-void
.end method

.method public whitelist setJpegQuality(I)V
    .registers 3

    .line 3009
    const-string/jumbo v0, "jpeg-quality"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3010
    return-void
.end method

.method public whitelist setJpegThumbnailQuality(I)V
    .registers 3

    .line 2990
    const-string/jumbo v0, "jpeg-thumbnail-quality"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2991
    return-void
.end method

.method public whitelist setJpegThumbnailSize(II)V
    .registers 4

    .line 2956
    const-string/jumbo v0, "jpeg-thumbnail-width"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2957
    const-string/jumbo p1, "jpeg-thumbnail-height"

    invoke-virtual {p0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2958
    return-void
.end method

.method public whitelist setMeteringAreas(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .line 4190
    const-string/jumbo v0, "metering-areas"

    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/util/List;)V

    .line 4191
    return-void
.end method

.method public whitelist setPictureFormat(I)V
    .registers 5

    .line 3260
    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;->cameraFormatForPixelFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 3261
    if-eqz v0, :cond_d

    .line 3266
    const-string/jumbo p1, "picture-format"

    invoke-virtual {p0, p1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3267
    return-void

    .line 3262
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pixel_format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPictureSize(II)V
    .registers 4

    .line 3224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3225
    const-string/jumbo p2, "picture-size"

    invoke-virtual {p0, p2, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3226
    return-void
.end method

.method public whitelist setPreviewFormat(I)V
    .registers 5

    .line 3160
    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;->cameraFormatForPixelFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 3161
    if-eqz v0, :cond_d

    .line 3166
    const-string/jumbo p1, "preview-format"

    invoke-virtual {p0, p1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3167
    return-void

    .line 3162
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pixel_format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPreviewFpsRange(II)V
    .registers 5

    .line 3072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "preview-fps-range"

    invoke-virtual {p0, p2, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3073
    return-void
.end method

.method public whitelist setPreviewFrameRate(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3030
    const-string/jumbo v0, "preview-frame-rate"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3031
    return-void
.end method

.method public whitelist setPreviewSize(II)V
    .registers 4

    .line 2867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2868
    const-string/jumbo p2, "preview-size"

    invoke-virtual {p0, p2, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2869
    return-void
.end method

.method public whitelist setRecordingHint(Z)V
    .registers 3

    .line 4225
    if-eqz p1, :cond_6

    const-string/jumbo p1, "true"

    goto :goto_8

    :cond_6
    const-string p1, "false"

    :goto_8
    const-string/jumbo v0, "recording-hint"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4226
    return-void
.end method

.method public whitelist setRotation(I)V
    .registers 5

    .line 3391
    if-eqz p1, :cond_28

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_28

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_28

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_f

    goto :goto_28

    .line 3395
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3393
    :cond_28
    :goto_28
    const-string/jumbo v0, "rotation"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3398
    return-void
.end method

.method public whitelist setSceneMode(Ljava/lang/String;)V
    .registers 3

    .line 3625
    const-string/jumbo v0, "scene-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3626
    return-void
.end method

.method public whitelist setVideoStabilization(Z)V
    .registers 3

    .line 4281
    if-eqz p1, :cond_6

    const-string/jumbo p1, "true"

    goto :goto_8

    :cond_6
    const-string p1, "false"

    :goto_8
    const-string/jumbo v0, "video-stabilization"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4282
    return-void
.end method

.method public whitelist setWhiteBalance(Ljava/lang/String;)V
    .registers 4

    .line 3490
    const-string/jumbo v0, "whitebalance"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3491
    invoke-direct {p0, p1, v1}, Landroid/hardware/Camera$Parameters;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    .line 3492
    :cond_e
    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3493
    const-string p1, "auto-whitebalance-lock"

    const-string v0, "false"

    invoke-virtual {p0, p1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3494
    return-void
.end method

.method public whitelist setZoom(I)V
    .registers 3

    .line 3969
    const-string/jumbo v0, "zoom"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3970
    return-void
.end method

.method public whitelist unflatten(Ljava/lang/String;)V
    .registers 5

    .line 2729
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 2731
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 2732
    invoke-interface {v0, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 2733
    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2734
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2735
    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 2736
    goto :goto_13

    .line 2738
    :cond_29
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2739
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2740
    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2741
    goto :goto_13

    .line 2742
    :cond_3a
    return-void
.end method
