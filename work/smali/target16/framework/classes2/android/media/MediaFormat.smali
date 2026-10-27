.class public final Landroid/media/MediaFormat;
.super Ljava/lang/Object;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFormat$UnprefixedKeySet;,
        Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;,
        Landroid/media/MediaFormat$FilteredMappedKeySet;,
        Landroid/media/MediaFormat$Type;,
        Landroid/media/MediaFormat$QpOffsetRect;,
        Landroid/media/MediaFormat$SecurityModelFlag;,
        Landroid/media/MediaFormat$ColorRange;,
        Landroid/media/MediaFormat$ColorTransfer;,
        Landroid/media/MediaFormat$ColorStandard;,
        Landroid/media/MediaFormat$PictureType;,
        Landroid/media/MediaFormat$VideoEncodingStatisticsLevel;
    }
.end annotation


# static fields
.field public static final whitelist COLOR_RANGE_FULL:I = 0x1

.field public static final whitelist COLOR_RANGE_LIMITED:I = 0x2

.field public static final whitelist COLOR_STANDARD_BT2020:I = 0x6

.field public static final whitelist COLOR_STANDARD_BT601_NTSC:I = 0x4

.field public static final whitelist COLOR_STANDARD_BT601_PAL:I = 0x2

.field public static final whitelist COLOR_STANDARD_BT709:I = 0x1

.field public static final whitelist COLOR_TRANSFER_HLG:I = 0x7

.field public static final whitelist COLOR_TRANSFER_LINEAR:I = 0x1

.field public static final whitelist COLOR_TRANSFER_SDR_VIDEO:I = 0x3

.field public static final whitelist COLOR_TRANSFER_ST2084:I = 0x6

.field public static final whitelist FLAG_SECURITY_MODEL_MEMORY_SAFE:I = 0x2

.field public static final whitelist FLAG_SECURITY_MODEL_SANDBOXED:I = 0x1

.field public static final blacklist FLAG_SECURITY_MODEL_TRUSTED_CONTENT_ONLY:I = 0x4

.field public static final whitelist KEY_AAC_DRC_ALBUM_MODE:Ljava/lang/String; = "aac-drc-album-mode"

.field public static final whitelist KEY_AAC_DRC_ATTENUATION_FACTOR:Ljava/lang/String; = "aac-drc-cut-level"

.field public static final whitelist KEY_AAC_DRC_BOOST_FACTOR:Ljava/lang/String; = "aac-drc-boost-level"

.field public static final whitelist KEY_AAC_DRC_EFFECT_TYPE:Ljava/lang/String; = "aac-drc-effect-type"

.field public static final whitelist KEY_AAC_DRC_HEAVY_COMPRESSION:Ljava/lang/String; = "aac-drc-heavy-compression"

.field public static final whitelist KEY_AAC_DRC_OUTPUT_LOUDNESS:Ljava/lang/String; = "aac-drc-output-loudness"

.field public static final whitelist KEY_AAC_DRC_TARGET_REFERENCE_LEVEL:Ljava/lang/String; = "aac-target-ref-level"

.field public static final whitelist KEY_AAC_ENCODED_TARGET_LEVEL:Ljava/lang/String; = "aac-encoded-target-level"

.field public static final whitelist KEY_AAC_MAX_OUTPUT_CHANNEL_COUNT:Ljava/lang/String; = "aac-max-output-channel_count"

.field public static final whitelist KEY_AAC_PROFILE:Ljava/lang/String; = "aac-profile"

.field public static final whitelist KEY_AAC_SBR_MODE:Ljava/lang/String; = "aac-sbr-mode"

.field public static final whitelist KEY_ALLOW_FRAME_DROP:Ljava/lang/String; = "allow-frame-drop"

.field public static final blacklist KEY_AUDIO_HW_SYNC:Ljava/lang/String; = "audio-hw-sync"

.field public static final whitelist KEY_AUDIO_PRESENTATION_ID:Ljava/lang/String; = "audio-presentation-id"

.field public static final whitelist KEY_AUDIO_SESSION_ID:Ljava/lang/String; = "audio-session-id"

.field public static final whitelist KEY_BITRATE_MODE:Ljava/lang/String; = "bitrate-mode"

.field public static final whitelist KEY_BIT_RATE:Ljava/lang/String; = "bitrate"

.field public static final whitelist KEY_BUFFER_BATCH_MAX_OUTPUT_SIZE:Ljava/lang/String; = "buffer-batch-max-output-size"

.field public static final whitelist KEY_BUFFER_BATCH_THRESHOLD_OUTPUT_SIZE:Ljava/lang/String; = "buffer-batch-threshold-output-size"

.field public static final whitelist KEY_CAPTION_SERVICE_NUMBER:Ljava/lang/String; = "caption-service-number"

.field public static final whitelist KEY_CAPTURE_RATE:Ljava/lang/String; = "capture-rate"

.field public static final blacklist KEY_CA_PRIVATE_DATA:Ljava/lang/String; = "ca-private-data"

.field public static final greylist-max-o KEY_CA_SESSION_ID:Ljava/lang/String; = "ca-session-id"

.field public static final greylist-max-o KEY_CA_SYSTEM_ID:Ljava/lang/String; = "ca-system-id"

.field public static final whitelist KEY_CHANNEL_COUNT:Ljava/lang/String; = "channel-count"

.field public static final whitelist KEY_CHANNEL_MASK:Ljava/lang/String; = "channel-mask"

.field public static final whitelist KEY_CODECS_STRING:Ljava/lang/String; = "codecs-string"

.field public static final whitelist KEY_COLOR_FORMAT:Ljava/lang/String; = "color-format"

.field public static final whitelist KEY_COLOR_RANGE:Ljava/lang/String; = "color-range"

.field public static final whitelist KEY_COLOR_STANDARD:Ljava/lang/String; = "color-standard"

.field public static final whitelist KEY_COLOR_TRANSFER:Ljava/lang/String; = "color-transfer"

.field public static final whitelist KEY_COLOR_TRANSFER_REQUEST:Ljava/lang/String; = "color-transfer-request"

.field public static final whitelist KEY_COMPLEXITY:Ljava/lang/String; = "complexity"

.field public static final whitelist KEY_CREATE_INPUT_SURFACE_SUSPENDED:Ljava/lang/String; = "create-input-buffers-suspended"

.field public static final whitelist KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field public static final whitelist KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field public static final whitelist KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field public static final whitelist KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field public static final whitelist KEY_DURATION:Ljava/lang/String; = "durationUs"

.field public static final whitelist KEY_ENCODER_DELAY:Ljava/lang/String; = "encoder-delay"

.field public static final whitelist KEY_ENCODER_PADDING:Ljava/lang/String; = "encoder-padding"

.field public static final greylist-max-o KEY_FEATURE_:Ljava/lang/String; = "feature-"

.field public static final whitelist KEY_FLAC_COMPRESSION_LEVEL:Ljava/lang/String; = "flac-compression-level"

.field public static final whitelist KEY_FRAME_RATE:Ljava/lang/String; = "frame-rate"

.field public static final whitelist KEY_GRID_COLUMNS:Ljava/lang/String; = "grid-cols"

.field public static final whitelist KEY_GRID_ROWS:Ljava/lang/String; = "grid-rows"

.field public static final whitelist KEY_HAPTIC_CHANNEL_COUNT:Ljava/lang/String; = "haptic-channel-count"

.field public static final whitelist KEY_HARDWARE_AV_SYNC_ID:Ljava/lang/String; = "hw-av-sync-id"

.field public static final whitelist KEY_HDR10_PLUS_INFO:Ljava/lang/String; = "hdr10-plus-info"

.field public static final whitelist KEY_HDR_STATIC_INFO:Ljava/lang/String; = "hdr-static-info"

.field public static final whitelist KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final whitelist KEY_IMPORTANCE:Ljava/lang/String; = "importance"

.field public static final whitelist KEY_INTRA_REFRESH_PERIOD:Ljava/lang/String; = "intra-refresh-period"

.field public static final whitelist KEY_IS_ADTS:Ljava/lang/String; = "is-adts"

.field public static final whitelist KEY_IS_AUTOSELECT:Ljava/lang/String; = "is-autoselect"

.field public static final whitelist KEY_IS_DEFAULT:Ljava/lang/String; = "is-default"

.field public static final whitelist KEY_IS_FORCED_SUBTITLE:Ljava/lang/String; = "is-forced-subtitle"

.field public static final greylist-max-o KEY_IS_TIMED_TEXT:Ljava/lang/String; = "is-timed-text"

.field public static final whitelist KEY_I_FRAME_INTERVAL:Ljava/lang/String; = "i-frame-interval"

.field public static final whitelist KEY_LANGUAGE:Ljava/lang/String; = "language"

.field public static final whitelist KEY_LATENCY:Ljava/lang/String; = "latency"

.field public static final whitelist KEY_LEVEL:Ljava/lang/String; = "level"

.field public static final whitelist KEY_LOW_LATENCY:Ljava/lang/String; = "low-latency"

.field public static final greylist-max-o KEY_MAX_BIT_RATE:Ljava/lang/String; = "max-bitrate"

.field public static final whitelist KEY_MAX_B_FRAMES:Ljava/lang/String; = "max-bframes"

.field public static final whitelist KEY_MAX_FPS_TO_ENCODER:Ljava/lang/String; = "max-fps-to-encoder"

.field public static final whitelist KEY_MAX_HEIGHT:Ljava/lang/String; = "max-height"

.field public static final whitelist KEY_MAX_INPUT_SIZE:Ljava/lang/String; = "max-input-size"

.field public static final whitelist KEY_MAX_OUTPUT_CHANNEL_COUNT:Ljava/lang/String; = "max-output-channel-count"

.field public static final whitelist KEY_MAX_PTS_GAP_TO_ENCODER:Ljava/lang/String; = "max-pts-gap-to-encoder"

.field public static final whitelist KEY_MAX_WIDTH:Ljava/lang/String; = "max-width"

.field public static final whitelist KEY_MIME:Ljava/lang/String; = "mime"

.field public static final whitelist KEY_MPEGH_COMPATIBLE_SETS:Ljava/lang/String; = "mpegh-compatible-sets"

.field public static final whitelist KEY_MPEGH_PROFILE_LEVEL_INDICATION:Ljava/lang/String; = "mpegh-profile-level-indication"

.field public static final whitelist KEY_MPEGH_REFERENCE_CHANNEL_LAYOUT:Ljava/lang/String; = "mpegh-reference-channel-layout"

.field public static final blacklist KEY_NUM_SLOTS:Ljava/lang/String; = "num-slots"

.field public static final whitelist KEY_OPERATING_RATE:Ljava/lang/String; = "operating-rate"

.field public static final whitelist KEY_OUTPUT_REORDER_DEPTH:Ljava/lang/String; = "output-reorder-depth"

.field public static final whitelist KEY_PCM_ENCODING:Ljava/lang/String; = "pcm-encoding"

.field public static final whitelist KEY_PICTURE_PROFILE_ID:Ljava/lang/String; = "picture-profile-id"

.field public static final whitelist KEY_PICTURE_PROFILE_INSTANCE:Ljava/lang/String; = "picture-profile-instance"

.field public static final whitelist KEY_PICTURE_TYPE:Ljava/lang/String; = "picture-type"

.field public static final whitelist KEY_PIXEL_ASPECT_RATIO_HEIGHT:Ljava/lang/String; = "sar-height"

.field public static final whitelist KEY_PIXEL_ASPECT_RATIO_WIDTH:Ljava/lang/String; = "sar-width"

.field public static final whitelist KEY_PREPEND_HEADER_TO_SYNC_FRAMES:Ljava/lang/String; = "prepend-sps-pps-to-idr-frames"

.field public static final whitelist KEY_PRIORITY:Ljava/lang/String; = "priority"

.field public static final whitelist KEY_PROFILE:Ljava/lang/String; = "profile"

.field public static final whitelist KEY_PUSH_BLANK_BUFFERS_ON_STOP:Ljava/lang/String; = "push-blank-buffers-on-shutdown"

.field public static final whitelist KEY_QUALITY:Ljava/lang/String; = "quality"

.field public static final whitelist KEY_REPEAT_PREVIOUS_FRAME_AFTER:Ljava/lang/String; = "repeat-previous-frame-after"

.field public static final whitelist KEY_ROTATION:Ljava/lang/String; = "rotation-degrees"

.field public static final whitelist KEY_SAMPLE_RATE:Ljava/lang/String; = "sample-rate"

.field public static final whitelist KEY_SECURITY_MODEL:Ljava/lang/String; = "security-model"

.field public static final whitelist KEY_SLICE_HEIGHT:Ljava/lang/String; = "slice-height"

.field public static final whitelist KEY_SLOW_MOTION_MARKERS:Ljava/lang/String; = "slow-motion-markers"

.field public static final whitelist KEY_STRIDE:Ljava/lang/String; = "stride"

.field public static final whitelist KEY_TEMPORAL_LAYERING:Ljava/lang/String; = "ts-schema"

.field public static final whitelist KEY_TILE_HEIGHT:Ljava/lang/String; = "tile-height"

.field public static final whitelist KEY_TILE_WIDTH:Ljava/lang/String; = "tile-width"

.field public static final whitelist KEY_TRACK_ID:Ljava/lang/String; = "track-id"

.field public static final whitelist KEY_VIDEO_ENCODING_STATISTICS_LEVEL:Ljava/lang/String; = "video-encoding-statistics-level"

.field public static final whitelist KEY_VIDEO_QP_AVERAGE:Ljava/lang/String; = "video-qp-average"

.field public static final whitelist KEY_VIDEO_QP_B_MAX:Ljava/lang/String; = "video-qp-b-max"

.field public static final whitelist KEY_VIDEO_QP_B_MIN:Ljava/lang/String; = "video-qp-b-min"

.field public static final whitelist KEY_VIDEO_QP_I_MAX:Ljava/lang/String; = "video-qp-i-max"

.field public static final whitelist KEY_VIDEO_QP_I_MIN:Ljava/lang/String; = "video-qp-i-min"

.field public static final whitelist KEY_VIDEO_QP_MAX:Ljava/lang/String; = "video-qp-max"

.field public static final whitelist KEY_VIDEO_QP_MIN:Ljava/lang/String; = "video-qp-min"

.field public static final whitelist KEY_VIDEO_QP_P_MAX:Ljava/lang/String; = "video-qp-p-max"

.field public static final whitelist KEY_VIDEO_QP_P_MIN:Ljava/lang/String; = "video-qp-p-min"

.field public static final whitelist KEY_WIDTH:Ljava/lang/String; = "width"

.field public static final whitelist LOG_SESSION_ID:Ljava/lang/String; = "log-session-id"

.field public static final whitelist MIMETYPE_AUDIO_AAC:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final whitelist MIMETYPE_AUDIO_AAC_ELD:Ljava/lang/String; = "audio/mp4a.40.39"

.field public static final whitelist MIMETYPE_AUDIO_AAC_HE_V1:Ljava/lang/String; = "audio/mp4a.40.05"

.field public static final whitelist MIMETYPE_AUDIO_AAC_HE_V2:Ljava/lang/String; = "audio/mp4a.40.29"

.field public static final whitelist MIMETYPE_AUDIO_AAC_LC:Ljava/lang/String; = "audio/mp4a.40.02"

.field public static final whitelist MIMETYPE_AUDIO_AAC_XHE:Ljava/lang/String; = "audio/mp4a.40.42"

.field public static final whitelist MIMETYPE_AUDIO_AC3:Ljava/lang/String; = "audio/ac3"

.field public static final whitelist MIMETYPE_AUDIO_AC4:Ljava/lang/String; = "audio/ac4"

.field public static final whitelist MIMETYPE_AUDIO_AMR_NB:Ljava/lang/String; = "audio/3gpp"

.field public static final whitelist MIMETYPE_AUDIO_AMR_WB:Ljava/lang/String; = "audio/amr-wb"

.field public static final whitelist MIMETYPE_AUDIO_DOLBY_MAT:Ljava/lang/String; = "audio/vnd.dolby.mat"

.field public static final whitelist MIMETYPE_AUDIO_DOLBY_TRUEHD:Ljava/lang/String; = "audio/vnd.dolby.mlp"

.field public static final whitelist MIMETYPE_AUDIO_DRA:Ljava/lang/String; = "audio/vnd.dra"

.field public static final whitelist MIMETYPE_AUDIO_DTS:Ljava/lang/String; = "audio/vnd.dts"

.field public static final whitelist MIMETYPE_AUDIO_DTS_HD:Ljava/lang/String; = "audio/vnd.dts.hd"

.field public static final whitelist MIMETYPE_AUDIO_DTS_UHD:Ljava/lang/String; = "audio/vnd.dts.uhd"

.field public static final whitelist MIMETYPE_AUDIO_EAC3:Ljava/lang/String; = "audio/eac3"

.field public static final whitelist MIMETYPE_AUDIO_EAC3_JOC:Ljava/lang/String; = "audio/eac3-joc"

.field public static final whitelist MIMETYPE_AUDIO_FLAC:Ljava/lang/String; = "audio/flac"

.field public static final whitelist MIMETYPE_AUDIO_G711_ALAW:Ljava/lang/String; = "audio/g711-alaw"

.field public static final whitelist MIMETYPE_AUDIO_G711_MLAW:Ljava/lang/String; = "audio/g711-mlaw"

.field public static final whitelist MIMETYPE_AUDIO_IAMF:Ljava/lang/String; = "audio/iamf"

.field public static final whitelist MIMETYPE_AUDIO_IEC61937:Ljava/lang/String; = "audio/x-iec61937"

.field public static final whitelist MIMETYPE_AUDIO_MPEG:Ljava/lang/String; = "audio/mpeg"

.field public static final whitelist MIMETYPE_AUDIO_MPEGH_BL_L3:Ljava/lang/String; = "audio/mhm1.03"

.field public static final whitelist MIMETYPE_AUDIO_MPEGH_BL_L4:Ljava/lang/String; = "audio/mhm1.04"

.field public static final whitelist MIMETYPE_AUDIO_MPEGH_LC_L3:Ljava/lang/String; = "audio/mhm1.0d"

.field public static final whitelist MIMETYPE_AUDIO_MPEGH_LC_L4:Ljava/lang/String; = "audio/mhm1.0e"

.field public static final whitelist MIMETYPE_AUDIO_MPEGH_MHA1:Ljava/lang/String; = "audio/mha1"

.field public static final whitelist MIMETYPE_AUDIO_MPEGH_MHM1:Ljava/lang/String; = "audio/mhm1"

.field public static final whitelist MIMETYPE_AUDIO_MSGSM:Ljava/lang/String; = "audio/gsm"

.field public static final whitelist MIMETYPE_AUDIO_OPUS:Ljava/lang/String; = "audio/opus"

.field public static final whitelist MIMETYPE_AUDIO_QCELP:Ljava/lang/String; = "audio/qcelp"

.field public static final whitelist MIMETYPE_AUDIO_RAW:Ljava/lang/String; = "audio/raw"

.field public static final whitelist MIMETYPE_AUDIO_SCRAMBLED:Ljava/lang/String; = "audio/scrambled"

.field public static final whitelist MIMETYPE_AUDIO_VORBIS:Ljava/lang/String; = "audio/vorbis"

.field public static final whitelist MIMETYPE_IMAGE_ANDROID_HEIC:Ljava/lang/String; = "image/vnd.android.heic"

.field public static final whitelist MIMETYPE_IMAGE_AVIF:Ljava/lang/String; = "image/avif"

.field public static final whitelist MIMETYPE_TEXT_CEA_608:Ljava/lang/String; = "text/cea-608"

.field public static final whitelist MIMETYPE_TEXT_CEA_708:Ljava/lang/String; = "text/cea-708"

.field public static final whitelist MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final whitelist MIMETYPE_TEXT_VTT:Ljava/lang/String; = "text/vtt"

.field public static final whitelist MIMETYPE_VIDEO_APV:Ljava/lang/String; = "video/apv"

.field public static final whitelist MIMETYPE_VIDEO_AV1:Ljava/lang/String; = "video/av01"

.field public static final whitelist MIMETYPE_VIDEO_AVC:Ljava/lang/String; = "video/avc"

.field public static final whitelist MIMETYPE_VIDEO_DOLBY_VISION:Ljava/lang/String; = "video/dolby-vision"

.field public static final whitelist MIMETYPE_VIDEO_H263:Ljava/lang/String; = "video/3gpp"

.field public static final whitelist MIMETYPE_VIDEO_HEVC:Ljava/lang/String; = "video/hevc"

.field public static final whitelist MIMETYPE_VIDEO_MPEG2:Ljava/lang/String; = "video/mpeg2"

.field public static final whitelist MIMETYPE_VIDEO_MPEG4:Ljava/lang/String; = "video/mp4v-es"

.field public static final whitelist MIMETYPE_VIDEO_RAW:Ljava/lang/String; = "video/raw"

.field public static final whitelist MIMETYPE_VIDEO_SCRAMBLED:Ljava/lang/String; = "video/scrambled"

.field public static final whitelist MIMETYPE_VIDEO_VP8:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field public static final whitelist MIMETYPE_VIDEO_VP9:Ljava/lang/String; = "video/x-vnd.on2.vp9"

.field public static final whitelist PICTURE_TYPE_B:I = 0x3

.field public static final whitelist PICTURE_TYPE_I:I = 0x1

.field public static final whitelist PICTURE_TYPE_P:I = 0x2

.field public static final whitelist PICTURE_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist TYPE_BYTE_BUFFER:I = 0x5

.field public static final whitelist TYPE_FLOAT:I = 0x3

.field public static final whitelist TYPE_INTEGER:I = 0x1

.field public static final whitelist TYPE_LONG:I = 0x2

.field public static final whitelist TYPE_NULL:I = 0x0

.field public static final whitelist TYPE_STRING:I = 0x4

.field public static final whitelist VIDEO_ENCODING_STATISTICS_LEVEL_1:I = 0x1

.field public static final whitelist VIDEO_ENCODING_STATISTICS_LEVEL_NONE:I


# instance fields
.field private greylist mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMap(Landroid/media/MediaFormat;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 1914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1915
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    .line 1916
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/MediaFormat;)V
    .registers 3

    .line 2387
    invoke-direct {p0}, Landroid/media/MediaFormat;-><init>()V

    .line 2388
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    iget-object p1, p1, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2389
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1908
    iput-object p1, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    .line 1909
    return-void
.end method

.method public static final whitelist createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .registers 5

    .line 2418
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 2419
    const-string v1, "mime"

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    const-string p0, "sample-rate"

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2421
    const-string p0, "channel-count"

    invoke-virtual {v0, p0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2423
    return-object v0
.end method

.method public static final whitelist createSubtitleFormat(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaFormat;
    .registers 4

    .line 2437
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 2438
    const-string v1, "mime"

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    const-string p0, "language"

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    return-object v0
.end method

.method public static final whitelist createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .registers 5

    .line 2454
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 2455
    const-string v1, "mime"

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    const-string p0, "width"

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2457
    const-string p0, "height"

    invoke-virtual {v0, p0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2459
    return-object v0
.end method


# virtual methods
.method public final whitelist containsFeature(Ljava/lang/String;)Z
    .registers 5

    .line 1934
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final whitelist containsKey(Ljava/lang/String;)Z
    .registers 3

    .line 1927
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final whitelist getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3

    .line 2123
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public final whitelist getByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3

    .line 2134
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2135
    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p1

    :goto_8
    return-object p2
.end method

.method public whitelist getFeatureEnabled(Ljava/lang/String;)Z
    .registers 5

    .line 2148
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 2149
    if-eqz p1, :cond_27

    .line 2152
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    return p1

    .line 2150
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "feature is not specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist getFeatures()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2380
    new-instance v0, Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;

    const-string v1, "feature-"

    invoke-direct {v0, p0, v1}, Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;-><init>(Landroid/media/MediaFormat;Ljava/lang/String;)V

    return-object v0
.end method

.method public final whitelist getFloat(Ljava/lang/String;)F
    .registers 3

    .line 2080
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public final whitelist getFloat(Ljava/lang/String;F)F
    .registers 4

    .line 2091
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2092
    if-eqz p1, :cond_e

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :cond_e
    return p2
.end method

.method public final whitelist getInteger(Ljava/lang/String;)I
    .registers 3

    .line 2024
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final whitelist getInteger(Ljava/lang/String;I)I
    .registers 3

    .line 2036
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    .line 2037
    :catch_5
    move-exception p1

    .line 2039
    return p2
.end method

.method public final whitelist getKeys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2366
    new-instance v0, Landroid/media/MediaFormat$UnprefixedKeySet;

    const-string v1, "feature-"

    invoke-direct {v0, p0, v1}, Landroid/media/MediaFormat$UnprefixedKeySet;-><init>(Landroid/media/MediaFormat;Ljava/lang/String;)V

    return-object v0
.end method

.method public final whitelist getLong(Ljava/lang/String;)J
    .registers 4

    .line 2052
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getLong(Ljava/lang/String;J)J
    .registers 4

    .line 2064
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p1

    .line 2065
    :catch_5
    move-exception p1

    .line 2067
    return-wide p2
.end method

.method greylist getMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1920
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method public final whitelist getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 3

    .line 2001
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    return-object p1
.end method

.method public final whitelist getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3

    .line 2011
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    .line 2012
    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p1

    :goto_8
    return-object p2
.end method

.method public final whitelist getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2102
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2112
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2113
    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p1

    :goto_8
    return-object p2
.end method

.method public final whitelist getValueTypeForKey(Ljava/lang/String;)I
    .registers 3

    .line 1960
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1961
    if-nez p1, :cond_a

    .line 1962
    const/4 p1, 0x0

    return p1

    .line 1963
    :cond_a
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_10

    .line 1964
    const/4 p1, 0x1

    return p1

    .line 1965
    :cond_10
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_16

    .line 1966
    const/4 p1, 0x2

    return p1

    .line 1967
    :cond_16
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1c

    .line 1968
    const/4 p1, 0x3

    return p1

    .line 1969
    :cond_1c
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 1970
    const/4 p1, 0x4

    return p1

    .line 1971
    :cond_22
    instance-of p1, p1, Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_28

    .line 1972
    const/4 p1, 0x5

    return p1

    .line 1974
    :cond_28
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "invalid value for key"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist removeFeature(Ljava/lang/String;)V
    .registers 5

    .line 2213
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2214
    return-void
.end method

.method public final whitelist removeKey(Ljava/lang/String;)V
    .registers 3

    .line 2203
    const-string v0, "feature-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2204
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2206
    :cond_d
    return-void
.end method

.method public final whitelist setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 2195
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2196
    return-void
.end method

.method public whitelist setFeatureEnabled(Ljava/lang/String;Z)V
    .registers 5

    .line 2405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feature-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2406
    return-void
.end method

.method public final whitelist setFloat(Ljava/lang/String;F)V
    .registers 4

    .line 2173
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2174
    return-void
.end method

.method public final whitelist setInteger(Ljava/lang/String;I)V
    .registers 4

    .line 2159
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2160
    return-void
.end method

.method public final whitelist setLong(Ljava/lang/String;J)V
    .registers 5

    .line 2166
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2167
    return-void
.end method

.method public final whitelist setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2184
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2185
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 2464
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
