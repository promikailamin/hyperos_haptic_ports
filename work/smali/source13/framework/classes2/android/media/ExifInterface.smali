.class public Landroid/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ExifInterface$ByteOrderedDataOutputStream;,
        Landroid/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroid/media/ExifInterface$IfdType;,
        Landroid/media/ExifInterface$ExifTag;,
        Landroid/media/ExifInterface$ExifAttribute;,
        Landroid/media/ExifInterface$Rational;,
        Landroid/media/ExifInterface$ExifStreamType;
    }
.end annotation


# static fields
.field private static final greylist-max-o ASCII:Ljava/nio/charset/Charset;

.field private static final greylist-max-o BITS_PER_SAMPLE_GREYSCALE_1:[I

.field private static final greylist-max-o BITS_PER_SAMPLE_GREYSCALE_2:[I

.field private static final greylist-max-o BITS_PER_SAMPLE_RGB:[I

.field private static final greylist-max-o BYTE_ALIGN_II:S = 0x4949s

.field private static final greylist-max-o BYTE_ALIGN_MM:S = 0x4d4ds

.field private static final greylist-max-o DATA_DEFLATE_ZIP:I = 0x8

.field private static final greylist-max-o DATA_HUFFMAN_COMPRESSED:I = 0x2

.field private static final greylist-max-o DATA_JPEG:I = 0x6

.field private static final greylist-max-o DATA_JPEG_COMPRESSED:I = 0x7

.field private static final greylist-max-o DATA_LOSSY_JPEG:I = 0x884c

.field private static final greylist-max-o DATA_PACK_BITS_COMPRESSED:I = 0x8005

.field private static final greylist-max-o DATA_UNCOMPRESSED:I = 0x1

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o EXIF_ASCII_PREFIX:[B

.field private static final greylist-max-o EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

.field private static final blacklist HEIF_BRAND_AVIF:[B

.field private static final blacklist HEIF_BRAND_AVIS:[B

.field private static final greylist-max-o HEIF_BRAND_HEIC:[B

.field private static final greylist-max-o HEIF_BRAND_MIF1:[B

.field private static final greylist-max-o HEIF_TYPE_FTYP:[B

.field private static final greylist-max-o IDENTIFIER_EXIF_APP1:[B

.field private static final blacklist IDENTIFIER_XMP_APP1:[B

.field private static final greylist-max-o IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_FORMAT_BYTE:I = 0x1

.field private static final greylist-max-o IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final greylist-max-o IFD_FORMAT_DOUBLE:I = 0xc

.field private static final greylist-max-o IFD_FORMAT_IFD:I = 0xd

.field private static final greylist-max-o IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final greylist-max-o IFD_FORMAT_SBYTE:I = 0x6

.field private static final greylist-max-o IFD_FORMAT_SINGLE:I = 0xb

.field private static final greylist-max-o IFD_FORMAT_SLONG:I = 0x9

.field private static final greylist-max-o IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final greylist-max-o IFD_FORMAT_SSHORT:I = 0x8

.field private static final greylist-max-o IFD_FORMAT_STRING:I = 0x2

.field private static final greylist-max-o IFD_FORMAT_ULONG:I = 0x4

.field private static final greylist-max-o IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final greylist-max-o IFD_FORMAT_URATIONAL:I = 0x5

.field private static final greylist-max-o IFD_FORMAT_USHORT:I = 0x3

.field private static final greylist-max-o IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_OFFSET:I = 0x8

.field private static final greylist-max-o IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_TYPE_EXIF:I = 0x1

.field private static final greylist-max-o IFD_TYPE_GPS:I = 0x2

.field private static final greylist-max-o IFD_TYPE_INTEROPERABILITY:I = 0x3

.field private static final greylist-max-o IFD_TYPE_ORF_CAMERA_SETTINGS:I = 0x7

.field private static final greylist-max-o IFD_TYPE_ORF_IMAGE_PROCESSING:I = 0x8

.field private static final greylist-max-o IFD_TYPE_ORF_MAKER_NOTE:I = 0x6

.field private static final greylist-max-o IFD_TYPE_PEF:I = 0x9

.field private static final greylist-max-o IFD_TYPE_PREVIEW:I = 0x5

.field private static final greylist-max-o IFD_TYPE_PRIMARY:I = 0x0

.field private static final greylist-max-o IFD_TYPE_THUMBNAIL:I = 0x4

.field private static final greylist-max-o IMAGE_TYPE_ARW:I = 0x1

.field private static final greylist-max-o IMAGE_TYPE_CR2:I = 0x2

.field private static final greylist-max-o IMAGE_TYPE_DNG:I = 0x3

.field private static final greylist-max-o IMAGE_TYPE_HEIF:I = 0xc

.field private static final greylist-max-o IMAGE_TYPE_JPEG:I = 0x4

.field private static final greylist-max-o IMAGE_TYPE_NEF:I = 0x5

.field private static final greylist-max-o IMAGE_TYPE_NRW:I = 0x6

.field private static final greylist-max-o IMAGE_TYPE_ORF:I = 0x7

.field private static final greylist-max-o IMAGE_TYPE_PEF:I = 0x8

.field private static final blacklist IMAGE_TYPE_PNG:I = 0xd

.field private static final greylist-max-o IMAGE_TYPE_RAF:I = 0x9

.field private static final greylist-max-o IMAGE_TYPE_RW2:I = 0xa

.field private static final greylist-max-o IMAGE_TYPE_SRW:I = 0xb

.field private static final greylist-max-o IMAGE_TYPE_UNKNOWN:I = 0x0

.field private static final blacklist IMAGE_TYPE_WEBP:I = 0xe

.field private static final greylist-max-o JPEG_SIGNATURE:[B

.field private static final greylist-max-o MARKER:B = -0x1t

.field private static final greylist-max-o MARKER_APP1:B = -0x1ft

.field private static final greylist-max-o MARKER_COM:B = -0x2t

.field private static final greylist-max-o MARKER_EOI:B = -0x27t

.field private static final greylist-max-o MARKER_SOF0:B = -0x40t

.field private static final greylist-max-o MARKER_SOF1:B = -0x3ft

.field private static final greylist-max-o MARKER_SOF10:B = -0x36t

.field private static final greylist-max-o MARKER_SOF11:B = -0x35t

.field private static final greylist-max-o MARKER_SOF13:B = -0x33t

.field private static final greylist-max-o MARKER_SOF14:B = -0x32t

.field private static final greylist-max-o MARKER_SOF15:B = -0x31t

.field private static final greylist-max-o MARKER_SOF2:B = -0x3et

.field private static final greylist-max-o MARKER_SOF3:B = -0x3dt

.field private static final greylist-max-o MARKER_SOF5:B = -0x3bt

.field private static final greylist-max-o MARKER_SOF6:B = -0x3at

.field private static final greylist-max-o MARKER_SOF7:B = -0x39t

.field private static final greylist-max-o MARKER_SOF9:B = -0x37t

.field private static final greylist-max-o MARKER_SOI:B = -0x28t

.field private static final greylist-max-o MARKER_SOS:B = -0x26t

.field private static final greylist-max-o MAX_THUMBNAIL_SIZE:I = 0x200

.field private static final greylist-max-o ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o ORF_MAKER_NOTE_HEADER_1:[B

.field private static final greylist-max-o ORF_MAKER_NOTE_HEADER_1_SIZE:I = 0x8

.field private static final greylist-max-o ORF_MAKER_NOTE_HEADER_2:[B

.field private static final greylist-max-o ORF_MAKER_NOTE_HEADER_2_SIZE:I = 0xc

.field private static final greylist-max-o ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o ORF_SIGNATURE_1:S = 0x4f52s

.field private static final greylist-max-o ORF_SIGNATURE_2:S = 0x5352s

.field public static final whitelist ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final whitelist ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final whitelist ORIENTATION_NORMAL:I = 0x1

.field public static final whitelist ORIENTATION_ROTATE_180:I = 0x3

.field public static final whitelist ORIENTATION_ROTATE_270:I = 0x8

.field public static final whitelist ORIENTATION_ROTATE_90:I = 0x6

.field public static final whitelist ORIENTATION_TRANSPOSE:I = 0x5

.field public static final whitelist ORIENTATION_TRANSVERSE:I = 0x7

.field public static final whitelist ORIENTATION_UNDEFINED:I = 0x0

.field private static final greylist-max-o ORIGINAL_RESOLUTION_IMAGE:I = 0x0

.field private static final greylist-max-o PEF_MAKER_NOTE_SKIP_SIZE:I = 0x6

.field private static final greylist-max-o PEF_SIGNATURE:Ljava/lang/String; = "PENTAX"

.field private static final greylist-max-o PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO:I = 0x1

.field private static final greylist-max-o PHOTOMETRIC_INTERPRETATION_RGB:I = 0x2

.field private static final greylist-max-o PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO:I = 0x0

.field private static final greylist-max-o PHOTOMETRIC_INTERPRETATION_YCBCR:I = 0x6

.field private static final blacklist PNG_CHUNK_CRC_BYTE_LENGTH:I = 0x4

.field private static final blacklist PNG_CHUNK_TYPE_BYTE_LENGTH:I = 0x4

.field private static final blacklist PNG_CHUNK_TYPE_EXIF:[B

.field private static final blacklist PNG_CHUNK_TYPE_IEND:[B

.field private static final blacklist PNG_CHUNK_TYPE_IHDR:[B

.field private static final blacklist PNG_SIGNATURE:[B

.field private static final greylist-max-o RAF_INFO_SIZE:I = 0xa0

.field private static final greylist-max-o RAF_JPEG_LENGTH_VALUE_SIZE:I = 0x4

.field private static final greylist-max-o RAF_OFFSET_TO_JPEG_IMAGE_OFFSET:I = 0x54

.field private static final greylist-max-o RAF_SIGNATURE:Ljava/lang/String; = "FUJIFILMCCD-RAW"

.field private static final greylist-max-o REDUCED_RESOLUTION_IMAGE:I = 0x1

.field private static final greylist-max-o RW2_SIGNATURE:S = 0x55s

.field private static final greylist-max-o SIGNATURE_CHECK_SIZE:I = 0x1388

.field private static final greylist-max-o START_CODE:B = 0x2at

.field public static final whitelist STREAM_TYPE_EXIF_DATA_ONLY:I = 0x1

.field public static final whitelist STREAM_TYPE_FULL_IMAGE_DATA:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ExifInterface"

.field public static final whitelist TAG_APERTURE:Ljava/lang/String; = "FNumber"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final whitelist TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final whitelist TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final whitelist TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final whitelist TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final whitelist TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final whitelist TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final whitelist TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final whitelist TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final whitelist TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final whitelist TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final whitelist TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final whitelist TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final whitelist TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final whitelist TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final whitelist TAG_DEFAULT_CROP_SIZE:Ljava/lang/String; = "DefaultCropSize"

.field public static final whitelist TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final whitelist TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field public static final whitelist TAG_DNG_VERSION:Ljava/lang/String; = "DNGVersion"

.field private static final greylist-max-o TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final whitelist TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final whitelist TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final whitelist TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final whitelist TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final whitelist TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final whitelist TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final whitelist TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final whitelist TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final whitelist TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final whitelist TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final whitelist TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final whitelist TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final whitelist TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final whitelist TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final whitelist TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final whitelist TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final whitelist TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final whitelist TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final whitelist TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final whitelist TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final whitelist TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final whitelist TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final whitelist TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final whitelist TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final whitelist TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final whitelist TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final whitelist TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final whitelist TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final whitelist TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final whitelist TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final whitelist TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final whitelist TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final whitelist TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final greylist-max-o TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final whitelist TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final whitelist TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final whitelist TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final whitelist TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final whitelist TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final whitelist TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final whitelist TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final whitelist TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final whitelist TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final whitelist TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final whitelist TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final whitelist TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final whitelist TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final whitelist TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final whitelist TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field private static final greylist-max-o TAG_HAS_THUMBNAIL:Ljava/lang/String; = "HasThumbnail"

.field public static final whitelist TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final whitelist TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final whitelist TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final whitelist TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final greylist-max-o TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final whitelist TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final whitelist TAG_ISO:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final whitelist TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final whitelist TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final whitelist TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final whitelist TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final whitelist TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final whitelist TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final whitelist TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final whitelist TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final whitelist TAG_NEW_SUBFILE_TYPE:Ljava/lang/String; = "NewSubfileType"

.field public static final whitelist TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final whitelist TAG_OFFSET_TIME:Ljava/lang/String; = "OffsetTime"

.field public static final whitelist TAG_OFFSET_TIME_DIGITIZED:Ljava/lang/String; = "OffsetTimeDigitized"

.field public static final whitelist TAG_OFFSET_TIME_ORIGINAL:Ljava/lang/String; = "OffsetTimeOriginal"

.field public static final whitelist TAG_ORF_ASPECT_FRAME:Ljava/lang/String; = "AspectFrame"

.field private static final greylist-max-o TAG_ORF_CAMERA_SETTINGS_IFD_POINTER:Ljava/lang/String; = "CameraSettingsIFDPointer"

.field private static final greylist-max-o TAG_ORF_IMAGE_PROCESSING_IFD_POINTER:Ljava/lang/String; = "ImageProcessingIFDPointer"

.field public static final whitelist TAG_ORF_PREVIEW_IMAGE_LENGTH:Ljava/lang/String; = "PreviewImageLength"

.field public static final whitelist TAG_ORF_PREVIEW_IMAGE_START:Ljava/lang/String; = "PreviewImageStart"

.field public static final whitelist TAG_ORF_THUMBNAIL_IMAGE:Ljava/lang/String; = "ThumbnailImage"

.field public static final whitelist TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final whitelist TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final whitelist TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final whitelist TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final whitelist TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final whitelist TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field private static final greylist-max-o TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

.field public static final whitelist TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final whitelist TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final whitelist TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final whitelist TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final whitelist TAG_RW2_ISO:Ljava/lang/String; = "ISO"

.field public static final whitelist TAG_RW2_JPG_FROM_RAW:Ljava/lang/String; = "JpgFromRaw"

.field public static final whitelist TAG_RW2_SENSOR_BOTTOM_BORDER:Ljava/lang/String; = "SensorBottomBorder"

.field public static final whitelist TAG_RW2_SENSOR_LEFT_BORDER:Ljava/lang/String; = "SensorLeftBorder"

.field public static final whitelist TAG_RW2_SENSOR_RIGHT_BORDER:Ljava/lang/String; = "SensorRightBorder"

.field public static final whitelist TAG_RW2_SENSOR_TOP_BORDER:Ljava/lang/String; = "SensorTopBorder"

.field public static final whitelist TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final whitelist TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final whitelist TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final whitelist TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final whitelist TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final whitelist TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final whitelist TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final whitelist TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final whitelist TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final whitelist TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final whitelist TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final whitelist TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final whitelist TAG_SUBFILE_TYPE:Ljava/lang/String; = "SubfileType"

.field public static final whitelist TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final whitelist TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final whitelist TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final whitelist TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final whitelist TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final whitelist TAG_SUBSEC_TIME_DIG:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final whitelist TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final whitelist TAG_SUBSEC_TIME_ORIG:Ljava/lang/String; = "SubSecTimeOriginal"

.field public static final whitelist TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final greylist-max-o TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field private static final greylist-max-o TAG_THUMBNAIL_DATA:Ljava/lang/String; = "ThumbnailData"

.field public static final whitelist TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final whitelist TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field private static final greylist-max-o TAG_THUMBNAIL_LENGTH:Ljava/lang/String; = "ThumbnailLength"

.field private static final greylist-max-o TAG_THUMBNAIL_OFFSET:Ljava/lang/String; = "ThumbnailOffset"

.field public static final whitelist TAG_THUMBNAIL_ORIENTATION:Ljava/lang/String; = "ThumbnailOrientation"

.field public static final whitelist TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final whitelist TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final whitelist TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final whitelist TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final whitelist TAG_XMP:Ljava/lang/String; = "Xmp"

.field public static final whitelist TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final whitelist TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final whitelist TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final whitelist TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final whitelist TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field private static final blacklist WEBP_CHUNK_SIZE_BYTE_LENGTH:I = 0x4

.field private static final blacklist WEBP_CHUNK_TYPE_ANIM:[B

.field private static final blacklist WEBP_CHUNK_TYPE_ANMF:[B

.field private static final blacklist WEBP_CHUNK_TYPE_BYTE_LENGTH:I = 0x4

.field private static final blacklist WEBP_CHUNK_TYPE_EXIF:[B

.field private static final blacklist WEBP_CHUNK_TYPE_VP8:[B

.field private static final blacklist WEBP_CHUNK_TYPE_VP8L:[B

.field private static final blacklist WEBP_CHUNK_TYPE_VP8X:[B

.field private static final blacklist WEBP_CHUNK_TYPE_VP8X_DEFAULT_LENGTH:I = 0xa

.field private static final blacklist WEBP_FILE_SIZE_BYTE_LENGTH:I = 0x4

.field private static final blacklist WEBP_SIGNATURE_1:[B

.field private static final blacklist WEBP_SIGNATURE_2:[B

.field private static final blacklist WEBP_VP8L_SIGNATURE:B = 0x2ft

.field private static final blacklist WEBP_VP8_SIGNATURE:[B

.field public static final whitelist WHITEBALANCE_AUTO:I = 0x0

.field public static final whitelist WHITEBALANCE_MANUAL:I = 0x1

.field private static final greylist-max-o sExifPointerTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sExifTagMapsForReading:[Ljava/util/HashMap;

.field private static final greylist-max-o sExifTagMapsForWriting:[Ljava/util/HashMap;

.field private static blacklist sFormatter:Ljava/text/SimpleDateFormat;

.field private static blacklist sFormatterTz:Ljava/text/SimpleDateFormat;

.field private static final greylist-max-o sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final greylist-max-o sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final greylist-max-o sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAreThumbnailStripsConsecutive:Z

.field private greylist-max-o mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final greylist mAttributes:[Ljava/util/HashMap;

.field private greylist-max-o mExifByteOrder:Ljava/nio/ByteOrder;

.field private greylist-max-o mExifOffset:I

.field private blacklist mFilename:Ljava/lang/String;

.field private blacklist mHandledIfdOffsets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasThumbnail:Z

.field private blacklist mHasThumbnailStrips:Z

.field private blacklist mIsExifDataOnly:Z

.field private greylist-max-o mIsInputStream:Z

.field private greylist-max-o mIsSupportedFile:Z

.field private greylist-max-o mMimeType:I

.field private blacklist mModified:Z

.field private greylist-max-o mOrfMakerNoteOffset:I

.field private greylist-max-o mOrfThumbnailLength:I

.field private greylist-max-o mOrfThumbnailOffset:I

.field private greylist-max-o mRw2JpgFromRawOffset:I

.field private greylist-max-o mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private greylist-max-o mThumbnailBytes:[B

.field private greylist-max-o mThumbnailCompression:I

.field private greylist-max-o mThumbnailLength:I

.field private greylist-max-o mThumbnailOffset:I

.field private blacklist mXmpIsFromSeparateMarker:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetASCII()Ljava/nio/charset/Charset;
    .registers 1

    sget-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEXIF_ASCII_PREFIX()[B
    .registers 1

    sget-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I
    .registers 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetIFD_FORMAT_NAMES()[Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 38

    .line 99
    const-string v0, "ExifInterface"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    .line 542
    new-array v0, v1, [B

    fill-array-data v0, :array_bf8

    sput-object v0, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 548
    const/4 v0, 0x4

    new-array v2, v0, [B

    fill-array-data v2, :array_bfe

    sput-object v2, Landroid/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    .line 549
    new-array v2, v0, [B

    fill-array-data v2, :array_c04

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    .line 550
    new-array v2, v0, [B

    fill-array-data v2, :array_c0a

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    .line 551
    new-array v2, v0, [B

    fill-array-data v2, :array_c10

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_AVIF:[B

    .line 552
    new-array v2, v0, [B

    fill-array-data v2, :array_c16

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_AVIS:[B

    .line 560
    const/4 v2, 0x6

    new-array v3, v2, [B

    fill-array-data v3, :array_c1c

    sput-object v3, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    .line 562
    const/16 v3, 0xa

    new-array v4, v3, [B

    fill-array-data v4, :array_c24

    sput-object v4, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 578
    const/16 v4, 0x8

    new-array v5, v4, [B

    fill-array-data v5, :array_c2e

    sput-object v5, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    .line 582
    new-array v5, v0, [B

    fill-array-data v5, :array_c36

    sput-object v5, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    .line 584
    new-array v5, v0, [B

    fill-array-data v5, :array_c3c

    sput-object v5, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    .line 586
    new-array v5, v0, [B

    fill-array-data v5, :array_c42

    sput-object v5, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    .line 592
    new-array v5, v0, [B

    fill-array-data v5, :array_c48

    sput-object v5, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    .line 593
    new-array v5, v0, [B

    fill-array-data v5, :array_c4e

    sput-object v5, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    .line 595
    new-array v5, v0, [B

    fill-array-data v5, :array_c54

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    .line 597
    new-array v5, v1, [B

    fill-array-data v5, :array_c5a

    sput-object v5, Landroid/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 600
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "VP8X"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    .line 601
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "VP8L"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 602
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "VP8 "

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    .line 603
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "ANIM"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    .line 604
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "ANMF"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    .line 643
    const-string v6, ""

    const-string v7, "BYTE"

    const-string v8, "STRING"

    const-string v9, "USHORT"

    const-string v10, "ULONG"

    const-string v11, "URATIONAL"

    const-string v12, "SBYTE"

    const-string v13, "UNDEFINED"

    const-string v14, "SSHORT"

    const-string v15, "SLONG"

    const-string v16, "SRATIONAL"

    const-string v17, "SINGLE"

    const-string v18, "DOUBLE"

    const-string v19, "IFD"

    filled-new-array/range {v6 .. v19}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 648
    const/16 v5, 0xe

    new-array v6, v5, [I

    fill-array-data v6, :array_c60

    sput-object v6, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 651
    new-array v6, v4, [B

    fill-array-data v6, :array_c80

    sput-object v6, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 674
    new-array v6, v1, [I

    fill-array-data v6, :array_c88

    sput-object v6, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 675
    const/4 v6, 0x1

    new-array v7, v6, [I

    const/4 v8, 0x0

    aput v0, v7, v8

    sput-object v7, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    .line 676
    new-array v7, v6, [I

    aput v4, v7, v8

    sput-object v7, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 1108
    const/16 v7, 0x2a

    new-array v7, v7, [Landroid/media/ExifInterface$ExifTag;

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v10, "NewSubfileType"

    const/16 v11, 0xfe

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v8

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v10, "SubfileType"

    const/16 v11, 0xff

    invoke-direct {v9, v10, v11, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v6

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ImageWidth"

    const/16 v15, 0x100

    const/16 v16, 0x3

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v13, v9

    invoke-direct/range {v13 .. v18}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v10, 0x2

    aput-object v9, v7, v10

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ImageLength"

    const/16 v15, 0x101

    move-object v13, v9

    invoke-direct/range {v13 .. v18}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v1

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "BitsPerSample"

    const/16 v13, 0x102

    invoke-direct {v9, v11, v13, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v0

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "Compression"

    const/16 v13, 0x103

    invoke-direct {v9, v11, v13, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v11, 0x5

    aput-object v9, v7, v11

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PhotometricInterpretation"

    const/16 v14, 0x106

    invoke-direct {v9, v13, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v2

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ImageDescription"

    const/16 v14, 0x10e

    invoke-direct {v9, v13, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v13, 0x7

    aput-object v9, v7, v13

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Make"

    const/16 v15, 0x10f

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v4

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Model"

    const/16 v15, 0x110

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x9

    aput-object v9, v7, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v16, "StripOffsets"

    const/16 v17, 0x111

    const/16 v18, 0x3

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object v15, v9

    invoke-direct/range {v15 .. v20}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v3

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "Orientation"

    const/16 v3, 0x112

    invoke-direct {v9, v15, v3, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v3, 0xb

    aput-object v9, v7, v3

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "SamplesPerPixel"

    const/16 v3, 0x115

    invoke-direct {v9, v15, v3, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v3, 0xc

    aput-object v9, v7, v3

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v19, "RowsPerStrip"

    const/16 v20, 0x116

    const/16 v21, 0x3

    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v23}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v15, 0xd

    aput-object v9, v7, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v19, "StripByteCounts"

    const/16 v20, 0x117

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v23}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "XResolution"

    const/16 v15, 0x11a

    invoke-direct {v9, v5, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0xf

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "YResolution"

    const/16 v5, 0x11b

    invoke-direct {v9, v15, v5, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x10

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "PlanarConfiguration"

    const/16 v5, 0x11c

    invoke-direct {v9, v15, v5, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x11

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "ResolutionUnit"

    const/16 v5, 0x128

    invoke-direct {v9, v15, v5, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x12

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "TransferFunction"

    const/16 v5, 0x12d

    invoke-direct {v9, v15, v5, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x13

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "Software"

    const/16 v5, 0x131

    invoke-direct {v9, v15, v5, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x14

    aput-object v9, v7, v5

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DateTime"

    const/16 v15, 0x132

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x15

    aput-object v5, v7, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Artist"

    const/16 v15, 0x13b

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x16

    aput-object v5, v7, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "WhitePoint"

    const/16 v15, 0x13e

    invoke-direct {v5, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x17

    aput-object v5, v7, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "PrimaryChromaticities"

    const/16 v3, 0x13f

    invoke-direct {v5, v15, v3, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v3, 0x18

    aput-object v5, v7, v3

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SubIFDPointer"

    const/16 v15, 0x14a

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x19

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "JPEGInterchangeFormat"

    const/16 v15, 0x201

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1a

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "JPEGInterchangeFormatLength"

    const/16 v15, 0x202

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1b

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "YCbCrCoefficients"

    const/16 v15, 0x211

    invoke-direct {v3, v5, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1c

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "YCbCrSubSampling"

    const/16 v15, 0x212

    invoke-direct {v3, v5, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1d

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "YCbCrPositioning"

    const/16 v15, 0x213

    invoke-direct {v3, v5, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1e

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "ReferenceBlackWhite"

    const/16 v15, 0x214

    invoke-direct {v3, v5, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1f

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "Copyright"

    const v15, 0x8298

    invoke-direct {v3, v5, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x20

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "ExifIFDPointer"

    const v15, 0x8769

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x21

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "GPSInfoIFDPointer"

    const v15, 0x8825

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x22

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SensorTopBorder"

    invoke-direct {v3, v5, v0, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x23

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SensorLeftBorder"

    invoke-direct {v3, v5, v11, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x24

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SensorBottomBorder"

    invoke-direct {v3, v5, v2, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x25

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SensorRightBorder"

    invoke-direct {v3, v5, v13, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x26

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "ISO"

    invoke-direct {v3, v5, v9, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x27

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "JpgFromRaw"

    const/16 v15, 0x2e

    invoke-direct {v3, v5, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x28

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "Xmp"

    const/16 v15, 0x2bc

    invoke-direct {v3, v5, v15, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x29

    aput-object v3, v7, v5

    sput-object v7, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1158
    const/16 v3, 0x3e

    new-array v3, v3, [Landroid/media/ExifInterface$ExifTag;

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "ExposureTime"

    const v9, 0x829a

    invoke-direct {v5, v15, v9, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v8

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FNumber"

    const v15, 0x829d

    invoke-direct {v5, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v6

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExposureProgram"

    const v15, 0x8822

    invoke-direct {v5, v9, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v10

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SpectralSensitivity"

    const v15, 0x8824

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v1

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ISOSpeedRatings"

    const v15, 0x8827

    invoke-direct {v5, v9, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v0

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "OECF"

    const v15, 0x8828

    invoke-direct {v5, v9, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v11

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExifVersion"

    const v15, 0x9000

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v2

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DateTimeOriginal"

    const v15, 0x9003

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v13

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DateTimeDigitized"

    const v15, 0x9004

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v4

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "OffsetTime"

    const v15, 0x9010

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "OffsetTimeOriginal"

    const v15, 0x9011

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xa

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "OffsetTimeDigitized"

    const v15, 0x9012

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xb

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ComponentsConfiguration"

    const v15, 0x9101

    invoke-direct {v5, v9, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xc

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "CompressedBitsPerPixel"

    const v15, 0x9102

    invoke-direct {v5, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xd

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ShutterSpeedValue"

    const v15, 0x9201

    const/16 v14, 0xa

    invoke-direct {v5, v9, v15, v14, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xe

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ApertureValue"

    const v15, 0x9202

    invoke-direct {v5, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xf

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "BrightnessValue"

    const v15, 0x9203

    invoke-direct {v5, v9, v15, v14, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x10

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExposureBiasValue"

    const v15, 0x9204

    invoke-direct {v5, v9, v15, v14, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x11

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "MaxApertureValue"

    const v14, 0x9205

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x12

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubjectDistance"

    const v14, 0x9206

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x13

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "MeteringMode"

    const v14, 0x9207

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x14

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "LightSource"

    const v14, 0x9208

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x15

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Flash"

    const v14, 0x9209

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x16

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalLength"

    const v14, 0x920a

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x17

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubjectArea"

    const v14, 0x9214

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x18

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "MakerNote"

    const v14, 0x927c

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x19

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "UserComment"

    const v14, 0x9286

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1a

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubSecTime"

    const v14, 0x9290

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1b

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubSecTimeOriginal"

    const v14, 0x9291

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1c

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubSecTimeDigitized"

    const v14, 0x9292

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1d

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FlashpixVersion"

    const v14, 0xa000

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1e

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ColorSpace"

    const v14, 0xa001

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1f

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v25, "PixelXDimension"

    const v26, 0xa002

    const/16 v27, 0x3

    const/16 v28, 0x4

    const/16 v29, 0x0

    move-object/from16 v24, v5

    invoke-direct/range {v24 .. v29}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x20

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v25, "PixelYDimension"

    const v26, 0xa003

    move-object/from16 v24, v5

    invoke-direct/range {v24 .. v29}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x21

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "RelatedSoundFile"

    const v14, 0xa004

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x22

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "InteroperabilityIFDPointer"

    const v14, 0xa005

    invoke-direct {v5, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x23

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FlashEnergy"

    const v14, 0xa20b

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x24

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SpatialFrequencyResponse"

    const v14, 0xa20c

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x25

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalPlaneXResolution"

    const v14, 0xa20e

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x26

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalPlaneYResolution"

    const v14, 0xa20f

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x27

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalPlaneResolutionUnit"

    const v14, 0xa210

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x28

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubjectLocation"

    const v14, 0xa214

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x29

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExposureIndex"

    const v14, 0xa215

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2a

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SensingMethod"

    const v14, 0xa217

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2b

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FileSource"

    const v14, 0xa300

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2c

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SceneType"

    const v14, 0xa301

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2d

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "CFAPattern"

    const v14, 0xa302

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2e

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "CustomRendered"

    const v14, 0xa401

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2f

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExposureMode"

    const v14, 0xa402

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x30

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "WhiteBalance"

    const v14, 0xa403

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x31

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DigitalZoomRatio"

    const v14, 0xa404

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x32

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalLengthIn35mmFilm"

    const v14, 0xa405

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x33

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SceneCaptureType"

    const v14, 0xa406

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x34

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "GainControl"

    const v14, 0xa407

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x35

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Contrast"

    const v14, 0xa408

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x36

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Saturation"

    const v14, 0xa409

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x37

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Sharpness"

    const v14, 0xa40a

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x38

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DeviceSettingDescription"

    const v14, 0xa40b

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x39

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubjectDistanceRange"

    const v14, 0xa40c

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x3a

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ImageUniqueID"

    const v14, 0xa420

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x3b

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DNGVersion"

    const v14, 0xc612

    invoke-direct {v5, v9, v14, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x3c

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v25, "DefaultCropSize"

    const v26, 0xc620

    move-object/from16 v24, v5

    invoke-direct/range {v24 .. v29}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x3d

    aput-object v5, v3, v9

    sput-object v3, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1224
    const/16 v5, 0x1f

    new-array v5, v5, [Landroid/media/ExifInterface$ExifTag;

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSVersionID"

    invoke-direct {v9, v14, v8, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v8

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLatitudeRef"

    invoke-direct {v9, v14, v6, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v6

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLatitude"

    invoke-direct {v9, v14, v10, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v10

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLongitudeRef"

    invoke-direct {v9, v14, v1, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v1

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLongitude"

    invoke-direct {v9, v14, v0, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v0

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSAltitudeRef"

    invoke-direct {v9, v14, v11, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v11

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSAltitude"

    invoke-direct {v9, v14, v2, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v2

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSTimeStamp"

    invoke-direct {v9, v14, v13, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v13

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSSatellites"

    invoke-direct {v9, v14, v4, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v4

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSStatus"

    const/16 v15, 0x9

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSMeasureMode"

    const/16 v15, 0xa

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDOP"

    const/16 v15, 0xb

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSSpeedRef"

    const/16 v15, 0xc

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSSpeed"

    const/16 v15, 0xd

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSTrackRef"

    const/16 v15, 0xe

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSTrack"

    const/16 v15, 0xf

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSImgDirectionRef"

    const/16 v15, 0x10

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSImgDirection"

    const/16 v15, 0x11

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSMapDatum"

    const/16 v15, 0x12

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLatitudeRef"

    const/16 v15, 0x13

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLatitude"

    const/16 v15, 0x14

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x14

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLongitudeRef"

    const/16 v15, 0x15

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x15

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLongitude"

    const/16 v15, 0x16

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x16

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestBearingRef"

    const/16 v15, 0x17

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestBearing"

    const/16 v15, 0x18

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x18

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestDistanceRef"

    const/16 v15, 0x19

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x19

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestDistance"

    const/16 v15, 0x1a

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1a

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSProcessingMethod"

    const/16 v15, 0x1b

    invoke-direct {v9, v14, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1b

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSAreaInformation"

    const/16 v15, 0x1c

    invoke-direct {v9, v14, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1c

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDateStamp"

    const/16 v15, 0x1d

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1d

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDifferential"

    const/16 v15, 0x1e

    invoke-direct {v9, v14, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1e

    aput-object v9, v5, v14

    sput-object v5, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1258
    new-array v9, v6, [Landroid/media/ExifInterface$ExifTag;

    new-instance v14, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "InteroperabilityIndex"

    invoke-direct {v14, v15, v6, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v14, v9, v8

    sput-object v9, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1262
    const/16 v14, 0x26

    new-array v14, v14, [Landroid/media/ExifInterface$ExifTag;

    new-instance v15, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "NewSubfileType"

    const/16 v13, 0xfe

    invoke-direct {v15, v4, v13, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v15, v14, v8

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "SubfileType"

    const/16 v15, 0xff

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v6

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v27, "ThumbnailImageWidth"

    const/16 v28, 0x100

    const/16 v29, 0x3

    const/16 v30, 0x4

    const/16 v31, 0x0

    move-object/from16 v26, v4

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v10

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v33, "ThumbnailImageLength"

    const/16 v34, 0x101

    const/16 v35, 0x3

    const/16 v36, 0x4

    const/16 v37, 0x0

    move-object/from16 v32, v4

    invoke-direct/range {v32 .. v37}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v1

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "BitsPerSample"

    const/16 v15, 0x102

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v0

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Compression"

    const/16 v15, 0x103

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v11

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PhotometricInterpretation"

    const/16 v15, 0x106

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v2

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ImageDescription"

    const/16 v15, 0x10e

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v13, 0x7

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Make"

    const/16 v15, 0x10f

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x8

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Model"

    const/16 v15, 0x110

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x9

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v27, "StripOffsets"

    const/16 v28, 0x111

    move-object/from16 v26, v4

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xa

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ThumbnailOrientation"

    const/16 v15, 0x112

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xb

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "SamplesPerPixel"

    const/16 v15, 0x115

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xc

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v27, "RowsPerStrip"

    const/16 v28, 0x116

    move-object/from16 v26, v4

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xd

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v27, "StripByteCounts"

    const/16 v28, 0x117

    move-object/from16 v26, v4

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xe

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "XResolution"

    const/16 v15, 0x11a

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xf

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "YResolution"

    const/16 v15, 0x11b

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x10

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PlanarConfiguration"

    const/16 v15, 0x11c

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x11

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ResolutionUnit"

    const/16 v15, 0x128

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x12

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "TransferFunction"

    const/16 v15, 0x12d

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x13

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Software"

    const/16 v15, 0x131

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x14

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "DateTime"

    const/16 v15, 0x132

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x15

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Artist"

    const/16 v15, 0x13b

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x16

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "WhitePoint"

    const/16 v15, 0x13e

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x17

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PrimaryChromaticities"

    const/16 v15, 0x13f

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x18

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "SubIFDPointer"

    const/16 v15, 0x14a

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x19

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "JPEGInterchangeFormat"

    const/16 v15, 0x201

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1a

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "JPEGInterchangeFormatLength"

    const/16 v15, 0x202

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1b

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "YCbCrCoefficients"

    const/16 v15, 0x211

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1c

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "YCbCrSubSampling"

    const/16 v15, 0x212

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1d

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "YCbCrPositioning"

    const/16 v15, 0x213

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1e

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ReferenceBlackWhite"

    const/16 v15, 0x214

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1f

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Xmp"

    const/16 v15, 0x2bc

    invoke-direct {v4, v13, v15, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x20

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Copyright"

    const v15, 0x8298

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x21

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ExifIFDPointer"

    const v15, 0x8769

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x22

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "GPSInfoIFDPointer"

    const v15, 0x8825

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x23

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "DNGVersion"

    const v15, 0xc612

    invoke-direct {v4, v13, v15, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x24

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v18, "DefaultCropSize"

    const v19, 0xc620

    const/16 v20, 0x3

    const/16 v21, 0x4

    const/16 v22, 0x0

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v22}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x25

    aput-object v4, v14, v13

    sput-object v14, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1306
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "StripOffsets"

    const/16 v15, 0x111

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    sput-object v4, Landroid/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

    .line 1310
    new-array v4, v1, [Landroid/media/ExifInterface$ExifTag;

    new-instance v13, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "ThumbnailImage"

    const/16 v2, 0x100

    const/4 v11, 0x7

    invoke-direct {v13, v15, v2, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v13, v4, v8

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "CameraSettingsIFDPointer"

    const/16 v13, 0x2020

    invoke-direct {v2, v11, v13, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v4, v6

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "ImageProcessingIFDPointer"

    const/16 v13, 0x2040

    invoke-direct {v2, v11, v13, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v4, v10

    sput-object v4, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1315
    new-array v2, v10, [Landroid/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PreviewImageStart"

    const/16 v15, 0x101

    invoke-direct {v11, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v11, v2, v8

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PreviewImageLength"

    const/16 v15, 0x102

    invoke-direct {v11, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v11, v2, v6

    sput-object v2, Landroid/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1319
    new-array v11, v6, [Landroid/media/ExifInterface$ExifTag;

    new-instance v13, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "AspectFrame"

    const/16 v0, 0x1113

    invoke-direct {v13, v15, v0, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v13, v11, v8

    sput-object v11, Landroid/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1323
    new-array v0, v6, [Landroid/media/ExifInterface$ExifTag;

    new-instance v13, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "ColorSpace"

    const/16 v10, 0x37

    invoke-direct {v13, v15, v10, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v13, v0, v8

    sput-object v0, Landroid/media/ExifInterface;->PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1350
    const/16 v10, 0xa

    new-array v10, v10, [[Landroid/media/ExifInterface$ExifTag;

    aput-object v7, v10, v8

    aput-object v3, v10, v6

    const/4 v3, 0x2

    aput-object v5, v10, v3

    aput-object v9, v10, v1

    const/4 v3, 0x4

    aput-object v14, v10, v3

    const/4 v3, 0x5

    aput-object v7, v10, v3

    const/4 v3, 0x6

    aput-object v4, v10, v3

    const/4 v4, 0x7

    aput-object v2, v10, v4

    const/16 v2, 0x8

    aput-object v11, v10, v2

    const/16 v2, 0x9

    aput-object v0, v10, v2

    sput-object v10, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 1356
    new-array v0, v3, [Landroid/media/ExifInterface$ExifTag;

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "SubIFDPointer"

    const/16 v4, 0x14a

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v0, v8

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "ExifIFDPointer"

    const v4, 0x8769

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v0, v6

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "GPSInfoIFDPointer"

    const v4, 0x8825

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "InteroperabilityIFDPointer"

    const v4, 0xa005

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v0, v1

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "CameraSettingsIFDPointer"

    const/16 v4, 0x2020

    invoke-direct {v2, v3, v4, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v0, v5

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "ImageProcessingIFDPointer"

    const/16 v4, 0x2040

    invoke-direct {v2, v3, v4, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v3, 0x5

    aput-object v2, v0, v3

    sput-object v0, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1366
    array-length v0, v10

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 1368
    array-length v0, v10

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 1369
    new-instance v0, Ljava/util/HashSet;

    const-string v2, "FNumber"

    const-string v3, "DigitalZoomRatio"

    const-string v4, "ExposureTime"

    const-string v5, "SubjectDistance"

    const-string v7, "GPSTimeStamp"

    filled-new-array {v2, v3, v4, v5, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 1373
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 1380
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 1382
    const-string v2, "Exif\u0000\u0000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    sput-object v2, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 1384
    const-string v2, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    .line 1426
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 1427
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1428
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "yyyy:MM:dd HH:mm:ss XXX"

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/media/ExifInterface;->sFormatterTz:Ljava/text/SimpleDateFormat;

    .line 1429
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1432
    const/4 v0, 0x0

    .local v0, "ifdType":I
    :goto_b45
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v2

    if-ge v0, v3, :cond_b80

    .line 1433
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v3, v0

    .line 1434
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v3, v0

    .line 1435
    aget-object v2, v2, v0

    array-length v3, v2

    move v4, v8

    :goto_b60
    if-ge v4, v3, :cond_b7d

    aget-object v5, v2, v4

    .line 1436
    .local v5, "tag":Landroid/media/ExifInterface$ExifTag;
    sget-object v7, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    iget v9, v5, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    sget-object v7, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    iget-object v9, v5, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    .end local v5    # "tag":Landroid/media/ExifInterface$ExifTag;
    add-int/lit8 v4, v4, 0x1

    goto :goto_b60

    .line 1432
    :cond_b7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b45

    .line 1442
    .end local v0    # "ifdType":I
    :cond_b80
    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v3, v2, v8

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    aget-object v3, v2, v6

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    const/4 v3, 0x2

    aget-object v4, v2, v3

    iget v4, v4, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    aget-object v3, v2, v1

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    const/4 v1, 0x4

    aget-object v1, v2, v1

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    const/4 v1, 0x5

    aget-object v1, v2, v1

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 1483
    nop

    .line 1484
    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    .line 1483
    return-void

    nop

    :array_bf8
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_bfe
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_c04
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_c0a
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_c10
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x66t
    .end array-data

    :array_c16
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x73t
    .end array-data

    :array_c1c
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_c24
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_c2e
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_c36
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_c3c
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_c42
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_c48
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_c4e
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_c54
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_c5a
    .array-data 1
        -0x63t
        0x1t
        0x2at
    .end array-data

    :array_c60
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_c80
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_c88
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data
.end method

.method public constructor whitelist <init>(Ljava/io/File;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1456
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1459
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    .line 1460
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1495
    if-eqz p1, :cond_20

    .line 1498
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    .line 1499
    return-void

    .line 1496
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/io/FileDescriptor;)V
    .registers 6
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1456
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1459
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    .line 1460
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1527
    if-eqz p1, :cond_6b

    .line 1536
    invoke-static {p1}, Landroid/os/FileUtils;->convertToModernFd(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1537
    .local v0, "modernFd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_22

    .line 1538
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 1541
    :cond_22
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1542
    iput-object v1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1544
    const/4 v2, 0x0

    .line 1547
    .local v2, "isFdDuped":Z
    invoke-static {p1}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_3f

    if-nez v0, :cond_3f

    .line 1548
    iput-object p1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1553
    :try_start_32
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_36
    .catch Landroid/system/ErrnoException; {:try_start_32 .. :try_end_36} :catch_39

    move-object p1, v1

    .line 1554
    const/4 v2, 0x1

    .line 1557
    goto :goto_41

    .line 1555
    :catch_39
    move-exception v1

    .line 1556
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 1559
    .end local v1    # "e":Landroid/system/ErrnoException;
    :cond_3f
    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1561
    :goto_41
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 1562
    const/4 v1, 0x0

    .line 1564
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_45
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v3

    .line 1566
    invoke-direct {p0, v1, p1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;Ljava/io/FileDescriptor;)V
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_5c

    .line 1569
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1570
    if-eqz v2, :cond_56

    .line 1571
    invoke-static {p1}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1573
    :cond_56
    if-eqz v0, :cond_5b

    .line 1574
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1577
    :cond_5b
    return-void

    .line 1569
    :catchall_5c
    move-exception v3

    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1570
    if-eqz v2, :cond_65

    .line 1571
    invoke-static {p1}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1573
    :cond_65
    if-eqz v0, :cond_6a

    .line 1574
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1576
    :cond_6a
    throw v3

    .line 1528
    .end local v0    # "modernFd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v2    # "isFdDuped":Z
    :cond_6b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fileDescriptor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1589
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;Z)V

    .line 1590
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1606
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;Z)V

    .line 1607
    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/InputStream;Z)V
    .registers 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "shouldBeExifDataOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1456
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1459
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    .line 1460
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1611
    if-eqz p1, :cond_6f

    .line 1614
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1616
    if-eqz p2, :cond_3e

    .line 1617
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v1

    .line 1618
    move-object v1, p1

    check-cast v1, Ljava/io/BufferedInputStream;

    invoke-static {v1}, Landroid/media/ExifInterface;->isExifDataOnly(Ljava/io/BufferedInputStream;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 1619
    const-string v0, "ExifInterface"

    const-string v1, "Given data does not follow the structure of an Exif-only data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    return-void

    .line 1622
    :cond_36
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/ExifInterface;->mIsExifDataOnly:Z

    .line 1623
    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1624
    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_6b

    .line 1626
    :cond_3e
    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_4a

    .line 1627
    move-object v1, p1

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1628
    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_6b

    .line 1629
    :cond_4a
    instance-of v1, p1, Ljava/io/FileInputStream;

    if-eqz v1, :cond_67

    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    .line 1630
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 1631
    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1632
    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_6b

    .line 1634
    :cond_67
    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1635
    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1639
    :goto_6b
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;Ljava/io/FileDescriptor;)V

    .line 1641
    return-void

    .line 1612
    :cond_6f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1456
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1459
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    .line 1460
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1510
    if-eqz p1, :cond_1c

    .line 1513
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    .line 1514
    return-void

    .line 1511
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o addDefaultValuesForCompatibility()V
    .registers 8

    .line 3971
    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3972
    .local v0, "valueOfDateTimeOriginal":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    const-string v2, "DateTime"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1c

    .line 3973
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    .line 3974
    invoke-static {v0}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 3973
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3978
    :cond_1c
    const-string v2, "ImageWidth"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_33

    .line 3979
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3980
    invoke-static {v4, v5, v6}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 3979
    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3982
    :cond_33
    const-string v2, "ImageLength"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_48

    .line 3983
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3984
    invoke-static {v4, v5, v6}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 3983
    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3986
    :cond_48
    const-string v2, "Orientation"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5d

    .line 3987
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3988
    invoke-static {v1, v6}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 3987
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3990
    :cond_5d
    const-string v1, "LightSource"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_73

    .line 3991
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3992
    invoke-static {v4, v5, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 3991
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3994
    :cond_73
    return-void
.end method

.method public static blacklist convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .registers 15
    .param p0, "rationalString"    # Ljava/lang/String;
    .param p1, "ref"    # Ljava/lang/String;

    .line 2543
    const-string v0, "/"

    :try_start_2
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2546
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2547
    .local v3, "pair":[Ljava/lang/String;
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x1

    aget-object v7, v3, v6

    .line 2548
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    div-double/2addr v4, v7

    .line 2550
    .local v4, "degrees":D
    aget-object v7, v1, v6

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 2551
    aget-object v7, v3, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    aget-object v9, v3, v6

    .line 2552
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    div-double/2addr v7, v9

    .line 2554
    .local v7, "minutes":D
    const/4 v9, 0x2

    aget-object v9, v1, v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2555
    .end local v3    # "pair":[Ljava/lang/String;
    .local v0, "pair":[Ljava/lang/String;
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aget-object v6, v0, v6

    .line 2556
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    div-double/2addr v2, v9

    .line 2558
    .local v2, "seconds":D
    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    div-double v9, v7, v9

    add-double/2addr v9, v4

    const-wide v11, 0x40ac200000000000L    # 3600.0

    div-double v11, v2, v11

    add-double/2addr v9, v11

    .line 2559
    .local v9, "result":D
    const-string v6, "S"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7d

    const-string v6, "W"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_78
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_78} :catch_80
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_78} :catch_80

    if-eqz v6, :cond_7b

    goto :goto_7d

    .line 2562
    :cond_7b
    double-to-float v6, v9

    return v6

    .line 2560
    :cond_7d
    :goto_7d
    neg-double v11, v9

    double-to-float v6, v11

    return v6

    .line 2563
    .end local v0    # "pair":[Ljava/lang/String;
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "seconds":D
    .end local v4    # "degrees":D
    .end local v7    # "minutes":D
    .end local v9    # "result":D
    :catch_80
    move-exception v0

    .line 2565
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private blacklist copyChunksUpToGivenChunkType(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V
    .registers 11
    .param p1, "inputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "outputStream"    # Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .param p3, "firstGivenType"    # [B
    .param p4, "secondGivenType"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3933
    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 3934
    .local v0, "type":[B
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v1

    array-length v2, v0

    if-eq v1, v2, :cond_4b

    .line 3935
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered invalid length while copying WebP chunks up tochunk type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, p3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3937
    if-nez p4, :cond_27

    const-string v3, ""

    goto :goto_3f

    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " or "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p4, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3940
    :cond_4b
    invoke-direct {p0, p1, p2, v0}, Landroid/media/ExifInterface;->copyWebPChunk(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B)V

    .line 3941
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5e

    if-eqz p4, :cond_5d

    .line 3942
    invoke-static {v0, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 3943
    goto :goto_5e

    .line 3945
    .end local v0    # "type":[B
    :cond_5d
    goto :goto_0

    .line 3946
    :cond_5e
    :goto_5e
    return-void
.end method

.method private blacklist copyWebPChunk(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B)V
    .registers 7
    .param p1, "inputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "outputStream"    # Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .param p3, "type"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3950
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    .line 3951
    .local v0, "size":I
    invoke-virtual {p2, p3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3952
    invoke-virtual {p2, v0}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3954
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    add-int/lit8 v1, v0, 0x1

    goto :goto_13

    :cond_12
    move v1, v0

    :goto_13
    invoke-static {p1, p2, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3955
    return-void
.end method

.method private greylist-max-o getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .line 1683
    if-eqz p1, :cond_1b

    .line 1688
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 1689
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1690
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_16

    .line 1691
    move-object v2, v1

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    return-object v2

    .line 1688
    .end local v1    # "value":Ljava/lang/Object;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1694
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    return-object v0

    .line 1684
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/FileDescriptor;)V
    .registers 30
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3077
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "Xmp"

    const-string/jumbo v4, "yes"

    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 3080
    .local v5, "retriever":Landroid/media/MediaMetadataRetriever;
    if-eqz v3, :cond_16

    .line 3081
    :try_start_12
    invoke-virtual {v5, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_1e

    .line 3083
    :cond_16
    new-instance v6, Landroid/media/ExifInterface$1;

    invoke-direct {v6, v1, v2}, Landroid/media/ExifInterface$1;-><init>(Landroid/media/ExifInterface;Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 3136
    :goto_1e
    const/16 v6, 0x21

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    .line 3138
    .local v6, "exifOffsetStr":Ljava/lang/String;
    const/16 v7, 0x22

    invoke-virtual {v5, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    .line 3140
    .local v7, "exifLengthStr":Ljava/lang/String;
    const/16 v8, 0x1a

    invoke-virtual {v5, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 3142
    .local v8, "hasImage":Ljava/lang/String;
    const/16 v9, 0x11

    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    .line 3145
    .local v9, "hasVideo":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3146
    .local v10, "width":Ljava/lang/String;
    const/4 v11, 0x0

    .line 3147
    .local v11, "height":Ljava/lang/String;
    const/4 v12, 0x0

    .line 3148
    .local v12, "rotation":Ljava/lang/String;
    move-object v13, v4

    .line 3152
    .local v13, "METADATA_VALUE_YES":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_56

    .line 3153
    const/16 v4, 0x1d

    invoke-virtual {v5, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    .line 3155
    const/16 v4, 0x1e

    invoke-virtual {v5, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    .line 3157
    const/16 v4, 0x1f

    invoke-virtual {v5, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto :goto_71

    .line 3159
    :cond_56
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 3160
    const/16 v4, 0x12

    invoke-virtual {v5, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    .line 3162
    const/16 v4, 0x13

    invoke-virtual {v5, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    .line 3164
    const/16 v4, 0x18

    invoke-virtual {v5, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    .line 3168
    :cond_71
    :goto_71
    const/4 v4, 0x0

    if-eqz v10, :cond_87

    .line 3169
    iget-object v14, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v4

    const-string v15, "ImageWidth"

    .line 3170
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v3, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v4, v3}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 3169
    invoke-virtual {v14, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3173
    :cond_87
    if-eqz v11, :cond_9d

    .line 3174
    iget-object v3, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "ImageLength"

    .line 3175
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iget-object v15, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v14, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 3174
    invoke-virtual {v3, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3178
    :cond_9d
    if-eqz v12, :cond_bf

    .line 3179
    const/4 v3, 0x1

    .line 3182
    .local v3, "orientation":I
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sparse-switch v4, :sswitch_data_1be

    goto :goto_af

    .line 3190
    :sswitch_a8
    const/16 v3, 0x8

    goto :goto_af

    .line 3187
    :sswitch_ab
    const/4 v3, 0x3

    .line 3188
    goto :goto_af

    .line 3184
    :sswitch_ad
    const/4 v3, 0x6

    .line 3185
    nop

    .line 3194
    :goto_af
    iget-object v4, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v14, 0x0

    aget-object v4, v4, v14

    const-string v14, "Orientation"

    iget-object v15, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3195
    invoke-static {v3, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v15

    .line 3194
    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3198
    .end local v3    # "orientation":I
    :cond_bf
    if-eqz v6, :cond_11a

    if-eqz v7, :cond_11a

    .line 3199
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3200
    .local v3, "offset":I
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3201
    .local v4, "length":I
    const/4 v14, 0x6

    if-le v4, v14, :cond_110

    .line 3204
    int-to-long v14, v3

    invoke-virtual {v2, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3205
    const/4 v14, 0x6

    new-array v15, v14, [B

    .line 3206
    .local v15, "identifier":[B
    invoke-virtual {v2, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v14

    move-object/from16 v18, v6

    const/4 v6, 0x6

    .end local v6    # "exifOffsetStr":Ljava/lang/String;
    .local v18, "exifOffsetStr":Ljava/lang/String;
    if-ne v14, v6, :cond_108

    .line 3209
    add-int/2addr v3, v6

    .line 3210
    add-int/lit8 v4, v4, -0x6

    .line 3211
    sget-object v6, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v15, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_100

    .line 3216
    new-array v6, v4, [B

    .line 3217
    .local v6, "bytes":[B
    invoke-virtual {v2, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v14

    if-ne v14, v4, :cond_f8

    .line 3221
    iput v3, v1, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3222
    const/4 v14, 0x0

    invoke-direct {v1, v6, v14}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    goto :goto_11c

    .line 3218
    :cond_f8
    new-instance v0, Ljava/io/IOException;

    const-string v14, "Can\'t read exif"

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local p2    # "fd":Ljava/io/FileDescriptor;
    throw v0

    .line 3212
    .end local v6    # "bytes":[B
    .restart local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    :cond_100
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Invalid identifier"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local p2    # "fd":Ljava/io/FileDescriptor;
    throw v0

    .line 3207
    .restart local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    :cond_108
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Can\'t read identifier"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local p2    # "fd":Ljava/io/FileDescriptor;
    throw v0

    .line 3202
    .end local v15    # "identifier":[B
    .end local v18    # "exifOffsetStr":Ljava/lang/String;
    .restart local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v6, "exifOffsetStr":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    :cond_110
    move-object/from16 v18, v6

    .end local v6    # "exifOffsetStr":Ljava/lang/String;
    .restart local v18    # "exifOffsetStr":Ljava/lang/String;
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Invalid exif length"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local p2    # "fd":Ljava/io/FileDescriptor;
    throw v0

    .line 3198
    .end local v3    # "offset":I
    .end local v4    # "length":I
    .end local v18    # "exifOffsetStr":Ljava/lang/String;
    .restart local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v6    # "exifOffsetStr":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    :cond_11a
    move-object/from16 v18, v6

    .line 3225
    .end local v6    # "exifOffsetStr":Ljava/lang/String;
    .restart local v18    # "exifOffsetStr":Ljava/lang/String;
    :goto_11c
    const/16 v3, 0x29

    invoke-virtual {v5, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 3227
    .local v3, "xmpOffsetStr":Ljava/lang/String;
    const/16 v4, 0x2a

    invoke-virtual {v5, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 3229
    .local v4, "xmpLengthStr":Ljava/lang/String;
    if-eqz v3, :cond_17b

    if-eqz v4, :cond_17b

    .line 3230
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 3231
    .local v6, "offset":I
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 3232
    .local v14, "length":I
    move-object v15, v3

    move-object/from16 v17, v4

    .end local v3    # "xmpOffsetStr":Ljava/lang/String;
    .end local v4    # "xmpLengthStr":Ljava/lang/String;
    .local v15, "xmpOffsetStr":Ljava/lang/String;
    .local v17, "xmpLengthStr":Ljava/lang/String;
    int-to-long v3, v6

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3233
    new-array v3, v14, [B

    .line 3234
    .local v3, "xmpBytes":[B
    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-ne v4, v14, :cond_16f

    .line 3237
    invoke-virtual {v1, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_16a

    .line 3238
    iget-object v4, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v4, v4, v16

    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    const/16 v20, 0x1

    array-length v2, v3

    move-object/from16 v16, v7

    move-object/from16 v26, v8

    .end local v7    # "exifLengthStr":Ljava/lang/String;
    .end local v8    # "hasImage":Ljava/lang/String;
    .local v16, "exifLengthStr":Ljava/lang/String;
    .local v26, "hasImage":Ljava/lang/String;
    int-to-long v7, v6

    const/16 v25, 0x0

    move-object/from16 v19, v1

    move/from16 v21, v2

    move-wide/from16 v22, v7

    move-object/from16 v24, v3

    invoke-direct/range {v19 .. v25}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[BLandroid/media/ExifInterface$ExifAttribute-IA;)V

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_182

    .line 3237
    .end local v16    # "exifLengthStr":Ljava/lang/String;
    .end local v26    # "hasImage":Ljava/lang/String;
    .restart local v7    # "exifLengthStr":Ljava/lang/String;
    .restart local v8    # "hasImage":Ljava/lang/String;
    :cond_16a
    move-object/from16 v16, v7

    move-object/from16 v26, v8

    .end local v7    # "exifLengthStr":Ljava/lang/String;
    .end local v8    # "hasImage":Ljava/lang/String;
    .restart local v16    # "exifLengthStr":Ljava/lang/String;
    .restart local v26    # "hasImage":Ljava/lang/String;
    goto :goto_182

    .line 3235
    .end local v16    # "exifLengthStr":Ljava/lang/String;
    .end local v26    # "hasImage":Ljava/lang/String;
    .restart local v7    # "exifLengthStr":Ljava/lang/String;
    .restart local v8    # "hasImage":Ljava/lang/String;
    :cond_16f
    move-object/from16 v16, v7

    move-object/from16 v26, v8

    .end local v7    # "exifLengthStr":Ljava/lang/String;
    .end local v8    # "hasImage":Ljava/lang/String;
    .restart local v16    # "exifLengthStr":Ljava/lang/String;
    .restart local v26    # "hasImage":Ljava/lang/String;
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read XMP from HEIF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local p2    # "fd":Ljava/io/FileDescriptor;
    throw v0

    .line 3229
    .end local v6    # "offset":I
    .end local v14    # "length":I
    .end local v15    # "xmpOffsetStr":Ljava/lang/String;
    .end local v16    # "exifLengthStr":Ljava/lang/String;
    .end local v17    # "xmpLengthStr":Ljava/lang/String;
    .end local v26    # "hasImage":Ljava/lang/String;
    .local v3, "xmpOffsetStr":Ljava/lang/String;
    .restart local v4    # "xmpLengthStr":Ljava/lang/String;
    .restart local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v7    # "exifLengthStr":Ljava/lang/String;
    .restart local v8    # "hasImage":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    :cond_17b
    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v16, v7

    move-object/from16 v26, v8

    .line 3243
    .end local v3    # "xmpOffsetStr":Ljava/lang/String;
    .end local v4    # "xmpLengthStr":Ljava/lang/String;
    .end local v7    # "exifLengthStr":Ljava/lang/String;
    .end local v8    # "hasImage":Ljava/lang/String;
    .restart local v15    # "xmpOffsetStr":Ljava/lang/String;
    .restart local v16    # "exifLengthStr":Ljava/lang/String;
    .restart local v17    # "xmpLengthStr":Ljava/lang/String;
    .restart local v26    # "hasImage":Ljava/lang/String;
    :goto_182
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_1b3

    .line 3244
    const-string v0, "ExifInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Heif meta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b3
    .catchall {:try_start_12 .. :try_end_1b3} :catchall_1b8

    .line 3247
    .end local v9    # "hasVideo":Ljava/lang/String;
    .end local v10    # "width":Ljava/lang/String;
    .end local v11    # "height":Ljava/lang/String;
    .end local v12    # "rotation":Ljava/lang/String;
    .end local v13    # "METADATA_VALUE_YES":Ljava/lang/String;
    .end local v15    # "xmpOffsetStr":Ljava/lang/String;
    .end local v16    # "exifLengthStr":Ljava/lang/String;
    .end local v17    # "xmpLengthStr":Ljava/lang/String;
    .end local v18    # "exifOffsetStr":Ljava/lang/String;
    .end local v26    # "hasImage":Ljava/lang/String;
    :cond_1b3
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 3248
    nop

    .line 3249
    return-void

    .line 3247
    :catchall_1b8
    move-exception v0

    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 3248
    throw v0

    nop

    :sswitch_data_1be
    .sparse-switch
        0x5a -> :sswitch_ad
        0xb4 -> :sswitch_ab
        0x10e -> :sswitch_a8
    .end sparse-switch
.end method

.method private greylist-max-o getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .registers 28
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "jpegOffset"    # I
    .param p3, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2844
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sget-boolean v3, Landroid/media/ExifInterface;->DEBUG:Z

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_22

    .line 2845
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getJpegAttributes starting with: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    :cond_22
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2852
    move/from16 v3, p2

    int-to-long v5, v3

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2853
    move/from16 v5, p2

    .line 2856
    .local v5, "bytesRead":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v6

    move v7, v6

    .local v7, "marker":B
    const-string v8, "Invalid marker: "

    const/4 v9, -0x1

    if-ne v6, v9, :cond_203

    .line 2859
    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 2860
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v10

    const/16 v11, -0x28

    if-ne v10, v11, :cond_1e6

    .line 2863
    add-int/2addr v5, v6

    .line 2865
    :goto_44
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v7

    .line 2866
    if-ne v7, v9, :cond_1c7

    .line 2869
    add-int/lit8 v5, v5, 0x1

    .line 2870
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v7

    .line 2871
    sget-boolean v8, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v8, :cond_70

    .line 2872
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found JPEG segment indicator: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    and-int/lit16 v11, v7, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    :cond_70
    add-int/2addr v5, v6

    .line 2878
    const/16 v10, -0x27

    if-eq v7, v10, :cond_1c1

    const/16 v10, -0x26

    if-ne v7, v10, :cond_7b

    .line 2879
    goto/16 :goto_1c1

    .line 2881
    :cond_7b
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    .line 2882
    .local v10, "length":I
    add-int/lit8 v5, v5, 0x2

    .line 2883
    if-eqz v8, :cond_b3

    .line 2884
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "JPEG segment: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    and-int/lit16 v11, v7, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " (length: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v11, v10, 0x2

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ")"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    :cond_b3
    const-string v8, "Invalid length"

    if-ltz v10, :cond_1bb

    .line 2890
    sparse-switch v7, :sswitch_data_220

    move-object/from16 v23, v4

    move v3, v6

    goto/16 :goto_19c

    .line 2922
    :sswitch_bf
    new-array v11, v10, [B

    .line 2923
    .local v11, "bytes":[B
    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v12

    if-ne v12, v10, :cond_e7

    .line 2926
    const/4 v10, 0x0

    .line 2927
    const-string v12, "UserComment"

    invoke-virtual {v0, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_e2

    .line 2928
    iget-object v13, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v6

    new-instance v14, Ljava/lang/String;

    sget-object v15, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v14, v11, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v14}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2964
    .end local v11    # "bytes":[B
    :cond_e2
    move-object/from16 v23, v4

    move v3, v6

    goto/16 :goto_19c

    .line 2924
    .restart local v11    # "bytes":[B
    :cond_e7
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Invalid exif"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2892
    .end local v11    # "bytes":[B
    :sswitch_ef
    move v11, v5

    .line 2893
    .local v11, "start":I
    new-array v12, v10, [B

    .line 2894
    .local v12, "bytes":[B
    invoke-virtual {v1, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 2895
    add-int/2addr v5, v10

    .line 2896
    const/4 v10, 0x0

    .line 2898
    sget-object v13, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v12, v13}, Landroid/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v14

    if-eqz v14, :cond_113

    .line 2899
    array-length v14, v13

    add-int/2addr v14, v11

    int-to-long v14, v14

    .line 2900
    .local v14, "offset":J
    array-length v13, v13

    array-length v9, v12

    invoke-static {v12, v13, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 2903
    .local v9, "value":[B
    long-to-int v13, v14

    iput v13, v0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 2904
    invoke-direct {v0, v9, v2}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 2905
    .end local v9    # "value":[B
    .end local v14    # "offset":J
    move-object/from16 v23, v4

    move v3, v6

    goto/16 :goto_19c

    :cond_113
    sget-object v9, Landroid/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    invoke-static {v12, v9}, Landroid/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v13

    if-eqz v13, :cond_151

    .line 2907
    array-length v13, v9

    add-int/2addr v13, v11

    int-to-long v13, v13

    .line 2908
    .local v13, "offset":J
    array-length v9, v9

    array-length v15, v12

    invoke-static {v12, v9, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 2912
    .restart local v9    # "value":[B
    const-string v15, "Xmp"

    invoke-virtual {v0, v15}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_14d

    .line 2913
    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v6, v6, v16

    new-instance v3, Landroid/media/ExifInterface$ExifAttribute;

    const/16 v17, 0x1

    move-object/from16 v23, v4

    array-length v4, v9

    const/16 v22, 0x0

    move-object/from16 v16, v3

    move/from16 v18, v4

    move-wide/from16 v19, v13

    move-object/from16 v21, v9

    invoke-direct/range {v16 .. v22}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[BLandroid/media/ExifInterface$ExifAttribute-IA;)V

    invoke-virtual {v6, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2915
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/media/ExifInterface;->mXmpIsFromSeparateMarker:Z

    goto :goto_150

    .line 2912
    :cond_14d
    move-object/from16 v23, v4

    move v3, v6

    .line 2917
    .end local v9    # "value":[B
    .end local v13    # "offset":J
    :goto_150
    goto :goto_19c

    .line 2905
    :cond_151
    move-object/from16 v23, v4

    move v3, v6

    goto :goto_19c

    .line 2947
    .end local v11    # "start":I
    .end local v12    # "bytes":[B
    :sswitch_155
    move-object/from16 v23, v4

    move v3, v6

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v4

    if-ne v4, v3, :cond_194

    .line 2950
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_168

    .line 2951
    const-string v9, "ImageLength"

    goto :goto_16a

    :cond_168
    const-string v9, "ThumbnailImageLength"

    .line 2952
    :goto_16a
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v11

    int-to-long v11, v11

    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v12, v13}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 2950
    invoke-virtual {v4, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2953
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v2

    if-eq v2, v6, :cond_181

    .line 2954
    const-string v6, "ImageWidth"

    goto :goto_183

    :cond_181
    const-string v6, "ThumbnailImageWidth"

    .line 2955
    :goto_183
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    int-to-long v11, v9

    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v12, v9}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 2953
    invoke-virtual {v4, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2956
    add-int/lit8 v10, v10, -0x5

    .line 2957
    goto :goto_19c

    .line 2948
    :cond_194
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid SOFx"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2964
    :goto_19c
    if-ltz v10, :cond_1b5

    .line 2967
    invoke-virtual {v1, v10}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v4

    if-ne v4, v10, :cond_1ad

    .line 2970
    add-int/2addr v5, v10

    .line 2971
    .end local v10    # "length":I
    move v6, v3

    move-object/from16 v4, v23

    const/4 v9, -0x1

    move/from16 v3, p2

    goto/16 :goto_44

    .line 2968
    .restart local v10    # "length":I
    :cond_1ad
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid JPEG segment"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2965
    :cond_1b5
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2888
    :cond_1bb
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2973
    .end local v10    # "length":I
    :cond_1c1
    :goto_1c1
    iget-object v3, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2974
    return-void

    .line 2867
    :cond_1c7
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid marker:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v6, v7, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2861
    :cond_1e6
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v6, v7, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2857
    :cond_203
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v6, v7, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_data_220
    .sparse-switch
        -0x40 -> :sswitch_155
        -0x3f -> :sswitch_155
        -0x3e -> :sswitch_155
        -0x3d -> :sswitch_155
        -0x3b -> :sswitch_155
        -0x3a -> :sswitch_155
        -0x39 -> :sswitch_155
        -0x37 -> :sswitch_155
        -0x36 -> :sswitch_155
        -0x35 -> :sswitch_155
        -0x33 -> :sswitch_155
        -0x32 -> :sswitch_155
        -0x31 -> :sswitch_155
        -0x1f -> :sswitch_ef
        -0x2 -> :sswitch_bf
    .end sparse-switch
.end method

.method private greylist-max-o getMimeType(Ljava/io/BufferedInputStream;)I
    .registers 4
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2599
    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 2600
    new-array v0, v0, [B

    .line 2601
    .local v0, "signatureCheckBytes":[B
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 2602
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 2603
    invoke-static {v0}, Landroid/media/ExifInterface;->isJpegFormat([B)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2604
    const/4 v1, 0x4

    return v1

    .line 2605
    :cond_15
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isRafFormat([B)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2606
    const/16 v1, 0x9

    return v1

    .line 2607
    :cond_1e
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isHeifFormat([B)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2608
    const/16 v1, 0xc

    return v1

    .line 2609
    :cond_27
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isOrfFormat([B)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2610
    const/4 v1, 0x7

    return v1

    .line 2611
    :cond_2f
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isRw2Format([B)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2612
    const/16 v1, 0xa

    return v1

    .line 2613
    :cond_38
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isPngFormat([B)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2614
    const/16 v1, 0xd

    return v1

    .line 2615
    :cond_41
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isWebpFormat([B)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2616
    const/16 v1, 0xe

    return v1

    .line 2619
    :cond_4a
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o getOrfAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 18
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3274
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 3279
    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 3280
    const-string v3, "MakerNote"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 3281
    .local v1, "makerNoteAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_db

    .line 3283
    new-instance v3, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v4, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 3285
    .local v3, "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3289
    sget-object v4, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length v5, v4

    new-array v5, v5, [B

    .line 3290
    .local v5, "makerNoteHeader1Bytes":[B
    invoke-virtual {v3, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 3291
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3292
    sget-object v6, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v7, v6

    new-array v7, v7, [B

    .line 3293
    .local v7, "makerNoteHeader2Bytes":[B
    invoke-virtual {v3, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 3295
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 3296
    const-wide/16 v8, 0x8

    invoke-virtual {v3, v8, v9}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_4c

    .line 3297
    :cond_41
    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 3298
    const-wide/16 v8, 0xc

    invoke-virtual {v3, v8, v9}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3302
    :cond_4c
    :goto_4c
    const/4 v4, 0x6

    invoke-direct {v0, v3, v4}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3305
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v6, 0x7

    aget-object v4, v4, v6

    .line 3306
    const-string v8, "PreviewImageStart"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 3307
    .local v4, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v8, v6

    .line 3308
    const-string v8, "PreviewImageLength"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/ExifInterface$ExifAttribute;

    .line 3310
    .local v6, "bitsPerSampleAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v4, :cond_80

    if-eqz v6, :cond_80

    .line 3311
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    const-string v10, "JPEGInterchangeFormat"

    invoke-virtual {v8, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3313
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v9

    const-string v9, "JPEGInterchangeFormatLength"

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3320
    :cond_80
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v9, 0x8

    aget-object v8, v8, v9

    .line 3321
    const-string v9, "AspectFrame"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/ExifInterface$ExifAttribute;

    .line 3322
    .local v8, "aspectFrameAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v8, :cond_db

    .line 3323
    const/4 v9, 0x4

    new-array v9, v9, [I

    .line 3324
    .local v9, "aspectFrameValues":[I
    iget-object v10, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v10}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    check-cast v9, [I

    .line 3325
    const/4 v10, 0x2

    aget v11, v9, v10

    const/4 v12, 0x0

    aget v13, v9, v12

    if-le v11, v13, :cond_db

    const/4 v11, 0x3

    aget v13, v9, v11

    aget v14, v9, v2

    if-le v13, v14, :cond_db

    .line 3327
    aget v10, v9, v10

    aget v13, v9, v12

    sub-int/2addr v10, v13

    add-int/2addr v10, v2

    .line 3328
    .local v10, "primaryImageWidth":I
    aget v11, v9, v11

    aget v13, v9, v2

    sub-int/2addr v11, v13

    add-int/2addr v11, v2

    .line 3330
    .local v11, "primaryImageLength":I
    if-ge v10, v11, :cond_bd

    .line 3331
    add-int/2addr v10, v11

    .line 3332
    sub-int v11, v10, v11

    .line 3333
    sub-int/2addr v10, v11

    .line 3335
    :cond_bd
    iget-object v2, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3336
    invoke-static {v10, v2}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 3337
    .local v2, "primaryImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3338
    invoke-static {v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 3340
    .local v13, "primaryImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v12

    const-string v15, "ImageWidth"

    invoke-virtual {v14, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3341
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v14, v12

    const-string v14, "ImageLength"

    invoke-virtual {v12, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3345
    .end local v2    # "primaryImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v4    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "makerNoteHeader1Bytes":[B
    .end local v6    # "bitsPerSampleAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v7    # "makerNoteHeader2Bytes":[B
    .end local v8    # "aspectFrameAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v9    # "aspectFrameValues":[I
    .end local v10    # "primaryImageWidth":I
    .end local v11    # "primaryImageLength":I
    .end local v13    # "primaryImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_db
    return-void
.end method

.method private blacklist getPngAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 12
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3374
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 3375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPngAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    :cond_1c
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3383
    const/4 v0, 0x0

    .line 3386
    .local v0, "bytesRead":I
    sget-object v1, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v2, v1

    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3387
    array-length v1, v1

    add-int/2addr v0, v1

    .line 3401
    :goto_2a
    :try_start_2a
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    .line 3402
    .local v1, "length":I
    add-int/lit8 v0, v0, 0x4

    .line 3404
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 3405
    .local v2, "type":[B
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v3

    array-length v4, v2

    if-ne v3, v4, :cond_da

    .line 3409
    add-int/lit8 v0, v0, 0x4

    .line 3412
    const/16 v3, 0x10

    if-ne v0, v3, :cond_51

    sget-object v3, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_49

    goto :goto_51

    .line 3413
    :cond_49
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v3

    .line 3417
    .restart local v0    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_51
    :goto_51
    sget-object v3, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 3419
    goto :goto_8a

    .line 3420
    :cond_5a
    sget-object v3, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 3422
    new-array v3, v1, [B

    .line 3423
    .local v3, "data":[B
    invoke-virtual {p1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-ne v4, v1, :cond_b3

    .line 3429
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    .line 3431
    .local v4, "dataCrcValue":I
    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    .line 3432
    .local v5, "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v5, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 3433
    invoke-virtual {v5, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 3434
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    long-to-int v6, v6

    if-ne v6, v4, :cond_8c

    .line 3440
    iput v0, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3441
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 3443
    invoke-direct {p0}, Landroid/media/ExifInterface;->validateImages()V

    .line 3444
    nop

    .line 3455
    .end local v1    # "length":I
    .end local v2    # "type":[B
    .end local v3    # "data":[B
    .end local v4    # "dataCrcValue":I
    .end local v5    # "crc":Ljava/util/zip/CRC32;
    :goto_8a
    nop

    .line 3456
    return-void

    .line 3435
    .restart local v1    # "length":I
    .restart local v2    # "type":[B
    .restart local v3    # "data":[B
    .restart local v4    # "dataCrcValue":I
    .restart local v5    # "crc":Ljava/util/zip/CRC32;
    :cond_8c
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", calculated CRC value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3437
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v6

    .line 3424
    .end local v4    # "dataCrcValue":I
    .end local v5    # "crc":Ljava/util/zip/CRC32;
    .restart local v0    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_b3
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3425
    invoke-static {v2}, Landroid/media/ExifInterfaceUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v4

    .line 3447
    .end local v3    # "data":[B
    .restart local v0    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_d0
    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3448
    add-int/lit8 v3, v1, 0x4

    add-int/2addr v0, v3

    .line 3450
    .end local v1    # "length":I
    .end local v2    # "type":[B
    goto/16 :goto_2a

    .line 3406
    .restart local v1    # "length":I
    .restart local v2    # "type":[B
    :cond_da
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered invalid length while parsing PNG chunktype"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v3
    :try_end_e2
    .catch Ljava/io/EOFException; {:try_start_2a .. :try_end_e2} :catch_e2

    .line 3451
    .end local v1    # "length":I
    .end local v2    # "type":[B
    .restart local v0    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_e2
    move-exception v1

    .line 3454
    .local v1, "e":Ljava/io/EOFException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Encountered corrupt PNG file."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o getRafAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 20
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3029
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3030
    const/4 v2, 0x4

    new-array v3, v2, [B

    .line 3031
    .local v3, "jpegOffsetBytes":[B
    new-array v4, v2, [B

    .line 3032
    .local v4, "cfaHeaderOffsetBytes":[B
    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 3034
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3035
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 3036
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 3037
    .local v2, "rafJpegOffset":I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 3040
    .local v5, "rafCfaHeaderOffset":I
    const/4 v6, 0x5

    invoke-direct {v0, v1, v2, v6}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 3043
    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3046
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3047
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    .line 3048
    .local v6, "numberOfDirectoryEntry":I
    sget-boolean v7, Landroid/media/ExifInterface;->DEBUG:Z

    const-string v8, "ExifInterface"

    if-eqz v7, :cond_54

    .line 3049
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "numberOfDirectoryEntry: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    :cond_54
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_55
    if-ge v7, v6, :cond_bc

    .line 3055
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    .line 3056
    .local v9, "tagNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    .line 3057
    .local v10, "numberOfBytes":I
    sget-object v11, Landroid/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

    iget v11, v11, Landroid/media/ExifInterface$ExifTag;->number:I

    if-ne v9, v11, :cond_b4

    .line 3058
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v11

    .line 3059
    .local v11, "imageLength":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v12

    .line 3060
    .local v12, "imageWidth":I
    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3061
    invoke-static {v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 3062
    .local v13, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3063
    invoke-static {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 3064
    .local v14, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v15, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    move/from16 v17, v2

    .end local v2    # "rafJpegOffset":I
    .local v17, "rafJpegOffset":I
    const-string v2, "ImageLength"

    invoke-virtual {v15, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3065
    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v16

    const-string v15, "ImageWidth"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3066
    sget-boolean v2, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_b3

    .line 3067
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Updated to length: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", width: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    :cond_b3
    return-void

    .line 3071
    .end local v11    # "imageLength":I
    .end local v12    # "imageWidth":I
    .end local v13    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v14    # "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v17    # "rafJpegOffset":I
    .restart local v2    # "rafJpegOffset":I
    :cond_b4
    move/from16 v17, v2

    .end local v2    # "rafJpegOffset":I
    .restart local v17    # "rafJpegOffset":I
    invoke-virtual {v1, v10}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3054
    .end local v9    # "tagNumber":I
    .end local v10    # "numberOfBytes":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_55

    .line 3073
    .end local v7    # "i":I
    .end local v17    # "rafJpegOffset":I
    .restart local v2    # "rafJpegOffset":I
    :cond_bc
    return-void
.end method

.method private greylist-max-o getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 8
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2978
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2981
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2984
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2985
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2986
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2989
    invoke-direct {p0}, Landroid/media/ExifInterface;->validateImages()V

    .line 2991
    iget v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_59

    .line 2994
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 2995
    const-string v2, "MakerNote"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 2996
    .local v0, "makerNoteAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_59

    .line 2998
    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 3000
    .local v2, "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3003
    const-wide/16 v3, 0x6

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3006
    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3009
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    .line 3010
    const-string v4, "ColorSpace"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 3011
    .local v3, "colorSpaceAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_59

    .line 3012
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v5, v1

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3016
    .end local v0    # "makerNoteAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v2    # "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v3    # "colorSpaceAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_59
    return-void
.end method

.method private greylist-max-o getRw2Attributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 8
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3352
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 3355
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 3356
    const-string v2, "JpgFromRaw"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 3357
    .local v0, "jpgFromRawAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_18

    .line 3358
    iget v2, p0, Landroid/media/ExifInterface;->mRw2JpgFromRawOffset:I

    const/4 v3, 0x5

    invoke-direct {p0, p1, v2, v3}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 3362
    :cond_18
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    .line 3363
    const-string v2, "ISO"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 3364
    .local v1, "rw2IsoAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 3365
    const-string v4, "ISOSpeedRatings"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 3366
    .local v2, "exifIsoAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_3c

    if-nez v2, :cond_3c

    .line 3368
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v5, v3

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3370
    :cond_3c
    return-void
.end method

.method private blacklist getStandaloneAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 4
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3252
    sget-object v0, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3254
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 3255
    .local v1, "data":[B
    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 3257
    array-length v0, v0

    iput v0, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3258
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 3259
    return-void
.end method

.method private blacklist getWebpAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 10
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3462
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 3463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWebpAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    :cond_1c
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3468
    sget-object v0, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3471
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    .line 3472
    .local v0, "fileSize":I
    const/16 v1, 0x8

    .line 3473
    .local v1, "bytesRead":I
    sget-object v2, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 3486
    :goto_37
    const/4 v2, 0x4

    :try_start_38
    new-array v2, v2, [B

    .line 3487
    .local v2, "code":[B
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v3

    array-length v4, v2

    if-ne v3, v4, :cond_aa

    .line 3491
    add-int/lit8 v1, v1, 0x4

    .line 3492
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    .line 3493
    .local v3, "chunkSize":I
    add-int/lit8 v1, v1, 0x4

    .line 3494
    sget-object v4, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 3496
    new-array v4, v3, [B

    .line 3497
    .local v4, "payload":[B
    invoke-virtual {p1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    if-ne v5, v3, :cond_62

    .line 3502
    iput v1, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3503
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 3506
    iput v1, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3507
    goto :goto_8e

    .line 3498
    :cond_62
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3499
    invoke-static {v2}, Landroid/media/ExifInterfaceUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileSize":I
    .end local v1    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v5

    .line 3510
    .end local v4    # "payload":[B
    .restart local v0    # "fileSize":I
    .restart local v1    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_7f
    rem-int/lit8 v4, v3, 0x2
    :try_end_81
    .catch Ljava/io/EOFException; {:try_start_38 .. :try_end_81} :catch_b2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_87

    add-int/lit8 v4, v3, 0x1

    goto :goto_88

    :cond_87
    move v4, v3

    :goto_88
    move v3, v4

    .line 3512
    add-int v4, v1, v3

    if-ne v4, v0, :cond_90

    .line 3514
    nop

    .line 3530
    .end local v2    # "code":[B
    .end local v3    # "chunkSize":I
    :goto_8e
    nop

    .line 3531
    return-void

    .line 3515
    .restart local v2    # "code":[B
    .restart local v3    # "chunkSize":I
    :cond_90
    add-int v4, v1, v3

    const-string v5, "Encountered WebP file with invalid chunk size"

    if-gt v4, v0, :cond_a4

    .line 3519
    :try_start_96
    invoke-virtual {p1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v4

    .line 3520
    .local v4, "skipped":I
    if-ne v4, v3, :cond_9e

    .line 3523
    add-int/2addr v1, v4

    .line 3525
    .end local v2    # "code":[B
    .end local v3    # "chunkSize":I
    .end local v4    # "skipped":I
    goto :goto_37

    .line 3521
    .restart local v2    # "code":[B
    .restart local v3    # "chunkSize":I
    .restart local v4    # "skipped":I
    :cond_9e
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileSize":I
    .end local v1    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v6

    .line 3516
    .end local v4    # "skipped":I
    .restart local v0    # "fileSize":I
    .restart local v1    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_a4
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileSize":I
    .end local v1    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v4

    .line 3488
    .end local v3    # "chunkSize":I
    .restart local v0    # "fileSize":I
    .restart local v1    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_aa
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered invalid length while parsing WebP chunktype"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileSize":I
    .end local v1    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v3
    :try_end_b2
    .catch Ljava/io/EOFException; {:try_start_96 .. :try_end_b2} :catch_b2

    .line 3526
    .end local v2    # "code":[B
    .restart local v0    # "fileSize":I
    .restart local v1    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_b2
    move-exception v2

    .line 3529
    .local v2, "e":Ljava/io/EOFException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered corrupt WebP file."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static greylist-max-o guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .registers 14
    .param p0, "entryValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4842
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 4891
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4842
    const/4 v5, -0x1

    .line 4891
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4842
    if-eqz v1, :cond_8d

    .line 4843
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4844
    .local v0, "entryValues":[Ljava/lang/String;
    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 4845
    .local v1, "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_28

    .line 4846
    return-object v1

    .line 4848
    :cond_28
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_29
    array-length v3, v0

    if-ge v2, v3, :cond_8c

    .line 4849
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 4850
    .local v3, "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v7, -0x1

    .local v7, "first":I
    const/4 v8, -0x1

    .line 4851
    .local v8, "second":I
    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eq v9, v10, :cond_40

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v9, v10, :cond_48

    .line 4853
    :cond_40
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 4855
    :cond_48
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v5, :cond_66

    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eq v9, v10, :cond_5e

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v9, v10, :cond_66

    .line 4857
    :cond_5e
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 4859
    :cond_66
    if-ne v7, v5, :cond_70

    if-ne v8, v5, :cond_70

    .line 4860
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 4862
    :cond_70
    if-ne v7, v5, :cond_7d

    .line 4863
    new-instance v9, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v9

    .line 4864
    goto :goto_89

    .line 4866
    :cond_7d
    if-ne v8, v5, :cond_89

    .line 4867
    new-instance v9, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v9

    .line 4848
    .end local v3    # "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v7    # "first":I
    .end local v8    # "second":I
    :cond_89
    :goto_89
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 4871
    .end local v2    # "i":I
    :cond_8c
    return-object v1

    .line 4874
    .end local v0    # "entryValues":[Ljava/lang/String;
    .end local v1    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_8d
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v7, 0x0

    if-eqz v1, :cond_ee

    .line 4875
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4876
    .local v0, "rationalNumber":[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v3, :cond_e8

    .line 4878
    :try_start_9e
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-long v1, v1

    .line 4879
    .local v1, "numerator":J
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-long v9, v9

    .line 4880
    .local v9, "denominator":J
    cmp-long v3, v1, v7

    const/16 v5, 0xa

    if-ltz v3, :cond_dd

    cmp-long v3, v9, v7

    if-gez v3, :cond_b8

    goto :goto_dd

    .line 4883
    :cond_b8
    const-wide/32 v7, 0x7fffffff

    cmp-long v3, v1, v7

    const/4 v11, 0x5

    if-gtz v3, :cond_d3

    cmp-long v3, v9, v7

    if-lez v3, :cond_c5

    goto :goto_d3

    .line 4886
    :cond_c5
    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 4884
    :cond_d3
    :goto_d3
    new-instance v3, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 4881
    :cond_dd
    :goto_dd
    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e6
    .catch Ljava/lang/NumberFormatException; {:try_start_9e .. :try_end_e6} :catch_e7

    return-object v3

    .line 4887
    .end local v1    # "numerator":J
    .end local v9    # "denominator":J
    :catch_e7
    move-exception v1

    .line 4891
    :cond_e8
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 4894
    .end local v0    # "rationalNumber":[Ljava/lang/String;
    :cond_ee
    :try_start_ee
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4895
    .local v0, "longValue":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v7

    const/4 v2, 0x4

    if-ltz v1, :cond_119

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/32 v11, 0xffff

    cmp-long v1, v9, v11

    if-gtz v1, :cond_119

    .line 4896
    new-instance v1, Landroid/util/Pair;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 4898
    :cond_119
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-gez v1, :cond_12d

    .line 4899
    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 4901
    :cond_12d
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_136
    .catch Ljava/lang/NumberFormatException; {:try_start_ee .. :try_end_136} :catch_137

    return-object v1

    .line 4902
    .end local v0    # "longValue":Ljava/lang/Long;
    :catch_137
    move-exception v0

    .line 4906
    :try_start_138
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 4907
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_146
    .catch Ljava/lang/NumberFormatException; {:try_start_138 .. :try_end_146} :catch_147

    return-object v0

    .line 4908
    :catch_147
    move-exception v0

    .line 4911
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private greylist-max-o handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .registers 11
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4334
    nop

    .line 4335
    const-string v0, "JPEGInterchangeFormat"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 4336
    .local v0, "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    nop

    .line 4337
    const-string v1, "JPEGInterchangeFormatLength"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4338
    .local v1, "jpegInterchangeFormatLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_81

    if-eqz v1, :cond_81

    .line 4340
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 4341
    .local v2, "thumbnailOffset":I
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 4343
    .local v3, "thumbnailLength":I
    iget v4, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2a

    .line 4345
    iget v4, p0, Landroid/media/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v2, v4

    .line 4348
    :cond_2a
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->getLength()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4350
    if-lez v2, :cond_5b

    if-lez v3, :cond_5b

    .line 4351
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 4353
    iget v4, p0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v4, v2

    iput v4, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 4354
    iput v3, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 4355
    const/4 v5, 0x6

    iput v5, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    .line 4357
    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v5, :cond_5b

    iget-object v5, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v5, :cond_5b

    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v5, :cond_5b

    .line 4361
    new-array v5, v3, [B

    .line 4362
    .local v5, "thumbnailBytes":[B
    int-to-long v6, v4

    invoke-virtual {p1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4363
    invoke-virtual {p1, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 4364
    iput-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 4367
    .end local v5    # "thumbnailBytes":[B
    :cond_5b
    sget-boolean v4, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v4, :cond_81

    .line 4368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting thumbnail attributes with offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ExifInterface"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4372
    .end local v2    # "thumbnailOffset":I
    .end local v3    # "thumbnailLength":I
    :cond_81
    return-void
.end method

.method private greylist-max-o handleThumbnailFromStrips(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .registers 23
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4377
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 4378
    const-string v3, "StripOffsets"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 4379
    .local v3, "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    nop

    .line 4380
    const-string v4, "StripByteCounts"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 4382
    .local v4, "stripByteCountsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_cf

    if-eqz v4, :cond_cf

    .line 4383
    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4384
    invoke-static {v3, v5}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroid/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v5

    .line 4385
    .local v5, "stripOffsets":[J
    iget-object v6, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4386
    invoke-static {v4, v6}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Landroid/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v6

    .line 4388
    .local v6, "stripByteCounts":[J
    const-string v7, "ExifInterface"

    if-eqz v5, :cond_c7

    array-length v8, v5

    if-nez v8, :cond_3a

    move-object/from16 v17, v3

    goto/16 :goto_c9

    .line 4392
    :cond_3a
    if-eqz v6, :cond_bf

    array-length v8, v6

    if-nez v8, :cond_43

    move-object/from16 v17, v3

    goto/16 :goto_c1

    .line 4396
    :cond_43
    array-length v8, v5

    array-length v9, v6

    if-eq v8, v9, :cond_4d

    .line 4397
    const-string v8, "stripOffsets and stripByteCounts should have same length."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4398
    return-void

    .line 4403
    :cond_4d
    nop

    .line 4404
    invoke-static {v6}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v8, v8, [B

    .line 4406
    .local v8, "totalStripBytes":[B
    const/4 v9, 0x0

    .line 4407
    .local v9, "bytesRead":I
    const/4 v10, 0x0

    .line 4408
    .local v10, "bytesAdded":I
    const/4 v11, 0x1

    iput-boolean v11, v0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    iput-boolean v11, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    iput-boolean v11, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 4409
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_63
    array-length v13, v5

    if-ge v12, v13, :cond_a9

    .line 4410
    aget-wide v14, v5, v12

    long-to-int v14, v14

    .line 4411
    .local v14, "stripOffset":I
    move/from16 v16, v14

    .end local v14    # "stripOffset":I
    .local v16, "stripOffset":I
    aget-wide v13, v6, v12

    long-to-int v14, v13

    .line 4415
    .local v14, "stripByteCount":I
    array-length v13, v5

    sub-int/2addr v13, v11

    if-ge v12, v13, :cond_83

    add-int v13, v16, v14

    move-object/from16 v17, v3

    .end local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .local v17, "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    int-to-long v2, v13

    add-int/lit8 v13, v12, 0x1

    aget-wide v18, v5, v13

    cmp-long v2, v2, v18

    if-eqz v2, :cond_85

    .line 4417
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    goto :goto_85

    .line 4415
    .end local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_83
    move-object/from16 v17, v3

    .line 4421
    .end local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_85
    :goto_85
    sub-int v2, v16, v9

    .line 4422
    .local v2, "skipBytes":I
    if-gez v2, :cond_8e

    .line 4423
    const-string v3, "Invalid strip offset value"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4425
    :cond_8e
    move v15, v12

    .end local v12    # "i":I
    .local v15, "i":I
    int-to-long v11, v2

    invoke-virtual {v1, v11, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4426
    add-int/2addr v9, v2

    .line 4430
    new-array v11, v14, [B

    .line 4431
    .local v11, "stripBytes":[B
    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 4432
    add-int/2addr v9, v14

    .line 4435
    array-length v12, v11

    const/4 v13, 0x0

    invoke-static {v11, v13, v8, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4437
    array-length v12, v11

    add-int/2addr v10, v12

    .line 4409
    .end local v2    # "skipBytes":I
    .end local v11    # "stripBytes":[B
    .end local v14    # "stripByteCount":I
    .end local v16    # "stripOffset":I
    add-int/lit8 v12, v15, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    const/4 v11, 0x1

    .end local v15    # "i":I
    .restart local v12    # "i":I
    goto :goto_63

    .end local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_a9
    move-object/from16 v17, v3

    move v15, v12

    .line 4439
    .end local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v12    # "i":I
    .restart local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iput-object v8, v0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 4441
    iget-boolean v2, v0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v2, :cond_d1

    .line 4443
    const/4 v2, 0x0

    aget-wide v2, v5, v2

    long-to-int v2, v2

    iget v3, v0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 4444
    array-length v2, v8

    iput v2, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    goto :goto_d1

    .line 4392
    .end local v8    # "totalStripBytes":[B
    .end local v9    # "bytesRead":I
    .end local v10    # "bytesAdded":I
    .end local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_bf
    move-object/from16 v17, v3

    .line 4393
    .end local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :goto_c1
    const-string v2, "stripByteCounts should not be null or have zero length."

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4394
    return-void

    .line 4388
    .end local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_c7
    move-object/from16 v17, v3

    .line 4389
    .end local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :goto_c9
    const-string v2, "stripOffsets should not be null or have zero length."

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4390
    return-void

    .line 4382
    .end local v5    # "stripOffsets":[J
    .end local v6    # "stripByteCounts":[J
    .end local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_cf
    move-object/from16 v17, v3

    .line 4447
    .end local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_d1
    :goto_d1
    return-void
.end method

.method private blacklist initForFilename(Ljava/lang/String;)V
    .registers 7
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2570
    const/4 v0, 0x0

    .line 2571
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 2572
    .local v1, "modernFd":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 2573
    iput-object p1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 2574
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 2576
    :try_start_a
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 2577
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/FileUtils;->convertToModernFd(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v1, v3

    .line 2578
    if-eqz v1, :cond_2b

    .line 2579
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2580
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v3

    .line 2581
    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_3b

    .line 2582
    :cond_2b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 2583
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    iput-object v3, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 2586
    :cond_3b
    :goto_3b
    invoke-direct {p0, v0, v2}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;Ljava/io/FileDescriptor;)V
    :try_end_3e
    .catchall {:try_start_a .. :try_end_3e} :catchall_47

    .line 2589
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2590
    if-eqz v1, :cond_46

    .line 2591
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2594
    :cond_46
    return-void

    .line 2589
    :catchall_47
    move-exception v2

    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2590
    if-eqz v1, :cond_50

    .line 2591
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2593
    :cond_50
    throw v2
.end method

.method private static blacklist isExifDataOnly(Ljava/io/BufferedInputStream;)Z
    .registers 5
    .param p0, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2819
    sget-object v0, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 2820
    array-length v0, v0

    new-array v0, v0, [B

    .line 2821
    .local v0, "signatureCheckBytes":[B
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 2822
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 2823
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    sget-object v2, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v3, v2

    if-ge v1, v3, :cond_20

    .line 2824
    aget-byte v3, v0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_1d

    .line 2825
    const/4 v2, 0x0

    return v2

    .line 2823
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2828
    .end local v1    # "i":I
    :cond_20
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o isHeifFormat([B)Z
    .registers 23
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2652
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2654
    .local v2, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v3, 0x0

    :try_start_4
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v2, v0

    .line 2656
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    int-to-long v4, v0

    .line 2657
    .local v4, "chunkSize":J
    const/4 v0, 0x4

    new-array v6, v0, [B

    .line 2658
    .local v6, "chunkType":[B
    invoke-virtual {v2, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 2660
    sget-object v7, Landroid/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_b4
    .catchall {:try_start_4 .. :try_end_1b} :catchall_b2

    if-nez v7, :cond_24

    .line 2661
    nop

    .line 2718
    nop

    .line 2719
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2720
    const/4 v0, 0x0

    .line 2661
    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .local v0, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    return v3

    .line 2664
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_24
    const-wide/16 v7, 0x8

    .line 2665
    .local v7, "chunkDataOffset":J
    const-wide/16 v9, 0x1

    cmp-long v11, v4, v9

    const-wide/16 v12, 0x8

    if-nez v11, :cond_41

    .line 2668
    :try_start_2e
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    move-result-wide v14
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_b4
    .catchall {:try_start_2e .. :try_end_32} :catchall_b2

    move-wide v4, v14

    .line 2669
    const-wide/16 v14, 0x10

    cmp-long v11, v4, v14

    if-gez v11, :cond_40

    .line 2671
    nop

    .line 2718
    nop

    .line 2719
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2720
    const/4 v0, 0x0

    .line 2671
    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    return v3

    .line 2673
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_40
    add-long/2addr v7, v12

    .line 2677
    :cond_41
    :try_start_41
    array-length v11, v1

    int-to-long v14, v11

    cmp-long v11, v4, v14

    if-lez v11, :cond_49

    .line 2678
    array-length v11, v1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_48} :catch_b4
    .catchall {:try_start_41 .. :try_end_48} :catchall_b2

    int-to-long v4, v11

    .line 2681
    :cond_49
    sub-long v14, v4, v7

    .line 2685
    .local v14, "chunkDataSize":J
    cmp-long v11, v14, v12

    if-gez v11, :cond_56

    .line 2686
    nop

    .line 2718
    nop

    .line 2719
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2720
    const/4 v0, 0x0

    .line 2686
    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    return v3

    .line 2689
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_56
    :try_start_56
    new-array v0, v0, [B

    .line 2690
    .local v0, "brand":[B
    const/4 v11, 0x0

    .line 2691
    .local v11, "isMif1":Z
    const/4 v12, 0x0

    .line 2692
    .local v12, "isHeic":Z
    const/4 v13, 0x0

    .line 2693
    .local v13, "isAvif":Z
    const-wide/16 v16, 0x0

    .local v16, "i":J
    :goto_5d
    const-wide/16 v18, 0x4

    div-long v18, v14, v18

    cmp-long v18, v16, v18

    if-gez v18, :cond_b1

    .line 2694
    invoke-virtual {v2, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v9

    array-length v10, v0
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6a} :catch_b4
    .catchall {:try_start_56 .. :try_end_6a} :catchall_b2

    if-eq v9, v10, :cond_73

    .line 2695
    nop

    .line 2718
    nop

    .line 2719
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2720
    const/4 v2, 0x0

    .line 2695
    return v3

    .line 2697
    :cond_73
    const-wide/16 v9, 0x1

    cmp-long v20, v16, v9

    if-nez v20, :cond_7a

    .line 2699
    goto :goto_ac

    .line 2701
    :cond_7a
    :try_start_7a
    sget-object v9, Landroid/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_84

    .line 2702
    const/4 v11, 0x1

    goto :goto_9f

    .line 2703
    :cond_84
    sget-object v9, Landroid/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 2704
    const/4 v12, 0x1

    goto :goto_9f

    .line 2705
    :cond_8e
    sget-object v9, Landroid/media/ExifInterface;->HEIF_BRAND_AVIF:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_9e

    sget-object v9, Landroid/media/ExifInterface;->HEIF_BRAND_AVIS:[B

    .line 2706
    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_9c} :catch_b4
    .catchall {:try_start_7a .. :try_end_9c} :catchall_b2

    if-eqz v9, :cond_9f

    .line 2707
    :cond_9e
    const/4 v13, 0x1

    .line 2709
    :cond_9f
    :goto_9f
    if-eqz v11, :cond_ac

    if-nez v12, :cond_a5

    if-eqz v13, :cond_ac

    .line 2710
    :cond_a5
    const/4 v3, 0x1

    .line 2718
    nop

    .line 2719
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2720
    const/4 v2, 0x0

    .line 2710
    return v3

    .line 2693
    :cond_ac
    :goto_ac
    const-wide/16 v9, 0x1

    add-long v16, v16, v9

    goto :goto_5d

    .line 2718
    .end local v0    # "brand":[B
    .end local v4    # "chunkSize":J
    .end local v6    # "chunkType":[B
    .end local v7    # "chunkDataOffset":J
    .end local v11    # "isMif1":Z
    .end local v12    # "isHeic":Z
    .end local v13    # "isAvif":Z
    .end local v14    # "chunkDataSize":J
    .end local v16    # "i":J
    :cond_b1
    goto :goto_c2

    :catchall_b2
    move-exception v0

    goto :goto_c9

    .line 2713
    :catch_b4
    move-exception v0

    .line 2714
    .local v0, "e":Ljava/lang/Exception;
    :try_start_b5
    sget-boolean v4, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v4, :cond_c0

    .line 2715
    const-string v4, "ExifInterface"

    const-string v5, "Exception parsing HEIF file type box."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c0
    .catchall {:try_start_b5 .. :try_end_c0} :catchall_b2

    .line 2718
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c0
    if-eqz v2, :cond_c7

    .line 2719
    :goto_c2
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2720
    const/4 v0, 0x0

    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .local v0, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    goto :goto_c8

    .line 2718
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_c7
    move-object v0, v2

    .line 2723
    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :goto_c8
    return v3

    .line 2718
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :goto_c9
    if-eqz v2, :cond_cf

    .line 2719
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2720
    const/4 v2, 0x0

    .line 2722
    :cond_cf
    throw v0
.end method

.method private static greylist-max-o isJpegFormat([B)Z
    .registers 4
    .param p0, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2627
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    array-length v2, v1

    if-ge v0, v2, :cond_11

    .line 2628
    aget-byte v2, p0, v0

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_e

    .line 2629
    const/4 v1, 0x0

    return v1

    .line 2627
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2632
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o isOrfFormat([B)Z
    .registers 6
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2735
    const/4 v0, 0x0

    .line 2738
    .local v0, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v0, v2

    .line 2741
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2743
    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2745
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_2a
    .catchall {:try_start_2 .. :try_end_15} :catchall_23

    .line 2746
    .local v2, "orfSignature":S
    const/16 v3, 0x4f52

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x5352

    if-ne v2, v3, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    .line 2750
    :cond_1e
    nop

    .line 2751
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2746
    return v1

    .line 2750
    .end local v2    # "orfSignature":S
    :catchall_23
    move-exception v1

    if-eqz v0, :cond_29

    .line 2751
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2753
    :cond_29
    throw v1

    .line 2747
    :catch_2a
    move-exception v2

    .line 2750
    if-eqz v0, :cond_30

    .line 2751
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2754
    :cond_30
    return v1
.end method

.method private blacklist isPngFormat([B)Z
    .registers 5
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2790
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v2, v1

    if-ge v0, v2, :cond_11

    .line 2791
    aget-byte v2, p1, v0

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_e

    .line 2792
    const/4 v1, 0x0

    return v1

    .line 2790
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2795
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o isRafFormat([B)Z
    .registers 6
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2642
    const-string v0, "FUJIFILMCCD-RAW"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2643
    .local v0, "rafSignatureBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 2644
    aget-byte v2, p1, v1

    aget-byte v3, v0, v1

    if-eq v2, v3, :cond_12

    .line 2645
    const/4 v2, 0x0

    return v2

    .line 2643
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2648
    .end local v1    # "i":I
    :cond_15
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o isRw2Format([B)Z
    .registers 6
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2762
    const/4 v0, 0x0

    .line 2765
    .local v0, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v0, v2

    .line 2768
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2770
    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2772
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2

    .line 2773
    .local v2, "signatureByte":S
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_29
    .catchall {:try_start_2 .. :try_end_18} :catchall_22

    .line 2774
    const/16 v3, 0x55

    if-ne v2, v3, :cond_1d

    const/4 v1, 0x1

    .line 2778
    :cond_1d
    nop

    .line 2779
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2774
    return v1

    .line 2778
    .end local v2    # "signatureByte":S
    :catchall_22
    move-exception v1

    if-eqz v0, :cond_28

    .line 2779
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2781
    :cond_28
    throw v1

    .line 2775
    :catch_29
    move-exception v2

    .line 2778
    if-eqz v0, :cond_2f

    .line 2779
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2782
    :cond_2f
    return v1
.end method

.method private static greylist-max-o isSeekableFD(Ljava/io/FileDescriptor;)Z
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 2056
    const-wide/16 v0, 0x0

    :try_start_2
    sget v2, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {p0, v0, v1, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_7} :catch_9

    .line 2057
    const/4 v0, 0x1

    return v0

    .line 2058
    :catch_9
    move-exception v0

    .line 2059
    .local v0, "e":Landroid/system/ErrnoException;
    sget-boolean v1, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_15

    .line 2060
    const-string v1, "ExifInterface"

    const-string v2, "The file descriptor for the given input is not seekable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o isSupportedDataType(Ljava/util/HashMap;)Z
    .registers 9
    .param p1, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4451
    nop

    .line 4452
    const-string v0, "BitsPerSample"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 4453
    .local v0, "bitsPerSampleAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_47

    .line 4454
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 4456
    .local v1, "bitsPerSampleValue":[I
    sget-object v2, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1d

    .line 4457
    return v4

    .line 4461
    :cond_1d
    iget v3, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_47

    .line 4462
    nop

    .line 4463
    const-string v3, "PhotometricInterpretation"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 4464
    .local v3, "photometricInterpretationAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_47

    .line 4465
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4466
    invoke-virtual {v3, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    .line 4467
    .local v5, "photometricInterpretationValue":I
    if-ne v5, v4, :cond_3d

    sget-object v6, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 4468
    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-nez v6, :cond_46

    :cond_3d
    const/4 v6, 0x6

    if-ne v5, v6, :cond_47

    .line 4470
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 4471
    :cond_46
    return v4

    .line 4478
    .end local v1    # "bitsPerSampleValue":[I
    .end local v3    # "photometricInterpretationAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "photometricInterpretationValue":I
    :cond_47
    sget-boolean v1, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_52

    .line 4479
    const-string v1, "ExifInterface"

    const-string v2, "Unsupported data type value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4481
    :cond_52
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isSupportedFormatForSavingAttributes()Z
    .registers 3

    .line 5279
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    const/16 v1, 0xd

    if-eq v0, v1, :cond_16

    const/16 v1, 0xe

    if-eq v0, v1, :cond_16

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    if-nez v0, :cond_18

    .line 5282
    :cond_16
    const/4 v0, 0x1

    return v0

    .line 5284
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isSupportedMimeType(Ljava/lang/String;)Z
    .registers 6
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 1650
    if-eqz p0, :cond_ba

    .line 1654
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_c2

    :cond_12
    goto/16 :goto_b5

    :sswitch_14
    const-string v2, "image/x-canon-cr2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x2

    goto/16 :goto_b5

    :sswitch_1f
    const-string v2, "image/x-nikon-nrw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x4

    goto/16 :goto_b5

    :sswitch_2a
    const-string v2, "image/x-nikon-nef"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x3

    goto/16 :goto_b5

    :sswitch_35
    const-string v2, "image/x-olympus-orf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x7

    goto/16 :goto_b5

    :sswitch_40
    const-string v2, "image/x-pentax-pef"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0x8

    goto/16 :goto_b5

    :sswitch_4c
    const-string v2, "image/png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0xd

    goto :goto_b5

    :sswitch_57
    const-string v2, "image/x-panasonic-rw2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x6

    goto :goto_b5

    :sswitch_61
    const-string v2, "image/x-adobe-dng"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v1, v4

    goto :goto_b5

    :sswitch_6b
    const-string v2, "image/webp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0xe

    goto :goto_b5

    :sswitch_76
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v1, v3

    goto :goto_b5

    :sswitch_80
    const-string v2, "image/heif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0xc

    goto :goto_b5

    :sswitch_8b
    const-string v2, "image/heic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0xb

    goto :goto_b5

    :sswitch_96
    const-string v2, "image/x-sony-arw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x5

    goto :goto_b5

    :sswitch_a0
    const-string v2, "image/x-samsung-srw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0x9

    goto :goto_b5

    :sswitch_ab
    const-string v2, "image/x-fuji-raf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0xa

    :goto_b5
    packed-switch v1, :pswitch_data_100

    .line 1672
    return v3

    .line 1670
    :pswitch_b9
    return v4

    .line 1651
    :cond_ba
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mimeType shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_c2
    .sparse-switch
        -0x6fc6acff -> :sswitch_ab
        -0x617ac9e4 -> :sswitch_a0
        -0x5f082c57 -> :sswitch_96
        -0x58a8e8f5 -> :sswitch_8b
        -0x58a8e8f2 -> :sswitch_80
        -0x58a7d764 -> :sswitch_76
        -0x58a21830 -> :sswitch_6b
        -0x54d6098a -> :sswitch_61
        -0x3ab85cc1 -> :sswitch_57
        -0x34686c8b -> :sswitch_4c
        -0x13d592a1 -> :sswitch_40
        0x52243d4a -> :sswitch_35
        0x7d1e84e8 -> :sswitch_2a
        0x7d1e868c -> :sswitch_1f
        0x7dd6e2bc -> :sswitch_14
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_b9
        :pswitch_b9
        :pswitch_b9
        :pswitch_b9
        :pswitch_b9
        :pswitch_b9
        :pswitch_b9
        :pswitch_b9
        :pswitch_b9
        :pswitch_b9
        :pswitch_b9
        :pswitch_b9
        :pswitch_b9
        :pswitch_b9
        :pswitch_b9
    .end packed-switch
.end method

.method private greylist-max-o isThumbnail(Ljava/util/HashMap;)Z
    .registers 7
    .param p1, "map"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4487
    const-string v0, "ImageLength"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 4488
    .local v0, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string v1, "ImageWidth"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4490
    .local v1, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_28

    if-eqz v1, :cond_28

    .line 4491
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 4492
    .local v2, "imageLengthValue":I
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 4493
    .local v3, "imageWidthValue":I
    const/16 v4, 0x200

    if-gt v2, v4, :cond_28

    if-gt v3, v4, :cond_28

    .line 4494
    const/4 v4, 0x1

    return v4

    .line 4497
    .end local v2    # "imageLengthValue":I
    .end local v3    # "imageWidthValue":I
    :cond_28
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isWebpFormat([B)Z
    .registers 6
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2804
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_11

    .line 2805
    aget-byte v2, p1, v0

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_e

    .line 2806
    return v3

    .line 2804
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2809
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_12
    sget-object v1, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v2, v1

    if-ge v0, v2, :cond_27

    .line 2810
    sget-object v2, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v2, v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x4

    aget-byte v2, p1, v2

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_24

    .line 2812
    return v3

    .line 2809
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 2815
    .end local v0    # "i":I
    :cond_27
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist loadAttributes(Ljava/io/InputStream;Ljava/io/FileDescriptor;)V
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 1967
    if-eqz p1, :cond_8e

    .line 1972
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    const/4 v1, 0x0

    :try_start_4
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v0, v2, :cond_15

    .line 1973
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v0

    .line 1972
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1977
    .end local v0    # "i":I
    :cond_15
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mIsExifDataOnly:Z

    if-nez v0, :cond_2a

    .line 1978
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v0, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    .line 1979
    move-object v0, p1

    check-cast v0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result v0

    iput v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    .line 1983
    :cond_2a
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1985
    .local v0, "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    iget-boolean v2, p0, Landroid/media/ExifInterface;->mIsExifDataOnly:Z

    if-nez v2, :cond_59

    .line 1986
    iget v2, p0, Landroid/media/ExifInterface;->mMimeType:I

    packed-switch v2, :pswitch_data_96

    .line 2029
    goto :goto_5c

    .line 2014
    :pswitch_39
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getWebpAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2015
    goto :goto_5c

    .line 2010
    :pswitch_3d
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getPngAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2011
    goto :goto_5c

    .line 1997
    :pswitch_41
    invoke-direct {p0, v0, p2}, Landroid/media/ExifInterface;->getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/FileDescriptor;)V

    .line 1999
    goto :goto_5c

    .line 2006
    :pswitch_45
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getRw2Attributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2007
    goto :goto_5c

    .line 1992
    :pswitch_49
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getRafAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 1993
    goto :goto_5c

    .line 2002
    :pswitch_4d
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getOrfAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2003
    goto :goto_5c

    .line 1988
    :pswitch_51
    invoke-direct {p0, v0, v1, v1}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 1989
    goto :goto_5c

    .line 2025
    :pswitch_55
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2026
    goto :goto_5c

    .line 2033
    :cond_59
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getStandaloneAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2036
    :goto_5c
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->setThumbnailData(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2037
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_62} :catch_6f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_62} :catch_6f
    .catchall {:try_start_4 .. :try_end_62} :catchall_6d

    .line 2046
    .end local v0    # "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 2048
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_82

    .line 2049
    :goto_69
    invoke-direct {p0}, Landroid/media/ExifInterface;->printAttributes()V

    goto :goto_82

    .line 2046
    :catchall_6d
    move-exception v0

    goto :goto_83

    .line 2038
    :catch_6f
    move-exception v0

    .line 2041
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_70
    iput-boolean v1, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    .line 2042
    const-string v1, "ExifInterface"

    const-string v2, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_6d

    .line 2046
    nop

    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 2048
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_82

    .line 2049
    goto :goto_69

    .line 2052
    :cond_82
    :goto_82
    return-void

    .line 2046
    :goto_83
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 2048
    sget-boolean v1, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_8d

    .line 2049
    invoke-direct {p0}, Landroid/media/ExifInterface;->printAttributes()V

    .line 2051
    :cond_8d
    throw v0

    .line 1968
    :cond_8e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputstream shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_51
        :pswitch_55
        :pswitch_55
        :pswitch_4d
        :pswitch_55
        :pswitch_49
        :pswitch_45
        :pswitch_55
        :pswitch_41
        :pswitch_3d
        :pswitch_39
    .end packed-switch
.end method

.method private static blacklist parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 13
    .param p0, "dateTimeString"    # Ljava/lang/String;
    .param p1, "subSecs"    # Ljava/lang/String;
    .param p2, "offsetString"    # Ljava/lang/String;

    .line 2472
    const-wide/16 v0, -0x1

    if-eqz p0, :cond_72

    sget-object v2, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 2473
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_72

    .line 2475
    :cond_11
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2480
    .local v2, "pos":Ljava/text/ParsePosition;
    :try_start_17
    sget-object v4, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    monitor-enter v4
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1a} :catch_70

    .line 2481
    :try_start_1a
    sget-object v5, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, p0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    .line 2482
    .local v5, "datetime":Ljava/util/Date;
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_6d

    .line 2484
    if-eqz p2, :cond_50

    .line 2485
    :try_start_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object p0, v4

    .line 2486
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v3}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v3, v4

    .line 2487
    .local v3, "position":Ljava/text/ParsePosition;
    sget-object v4, Landroid/media/ExifInterface;->sFormatterTz:Ljava/text/SimpleDateFormat;

    monitor-enter v4
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_44} :catch_70

    .line 2488
    :try_start_44
    sget-object v6, Landroid/media/ExifInterface;->sFormatterTz:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v6

    move-object v5, v6

    .line 2489
    monitor-exit v4

    goto :goto_50

    :catchall_4d
    move-exception v6

    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_44 .. :try_end_4f} :catchall_4d

    .end local v2    # "pos":Ljava/text/ParsePosition;
    .end local p0    # "dateTimeString":Ljava/lang/String;
    .end local p1    # "subSecs":Ljava/lang/String;
    .end local p2    # "offsetString":Ljava/lang/String;
    :try_start_4f
    throw v6

    .line 2492
    .end local v3    # "position":Ljava/text/ParsePosition;
    .restart local v2    # "pos":Ljava/text/ParsePosition;
    .restart local p0    # "dateTimeString":Ljava/lang/String;
    .restart local p1    # "subSecs":Ljava/lang/String;
    .restart local p2    # "offsetString":Ljava/lang/String;
    :cond_50
    :goto_50
    if-nez v5, :cond_53

    return-wide v0

    .line 2493
    :cond_53
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v3
    :try_end_57
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_57} :catch_70

    .line 2495
    .local v3, "msecs":J
    if-eqz p1, :cond_6c

    .line 2497
    :try_start_59
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2498
    .local v6, "sub":J
    :goto_5d
    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_69

    .line 2499
    const-wide/16 v8, 0xa

    div-long v8, v6, v8
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_67} :catch_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_67} :catch_70

    move-wide v6, v8

    goto :goto_5d

    .line 2501
    :cond_69
    add-long/2addr v3, v6

    .line 2504
    .end local v6    # "sub":J
    goto :goto_6c

    .line 2502
    :catch_6b
    move-exception v0

    .line 2506
    :cond_6c
    :goto_6c
    return-wide v3

    .line 2482
    .end local v3    # "msecs":J
    .end local v5    # "datetime":Ljava/util/Date;
    :catchall_6d
    move-exception v3

    :try_start_6e
    monitor-exit v4
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    .end local v2    # "pos":Ljava/text/ParsePosition;
    .end local p0    # "dateTimeString":Ljava/lang/String;
    .end local p1    # "subSecs":Ljava/lang/String;
    .end local p2    # "offsetString":Ljava/lang/String;
    :try_start_6f
    throw v3
    :try_end_70
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6f .. :try_end_70} :catch_70

    .line 2507
    .restart local v2    # "pos":Ljava/text/ParsePosition;
    .restart local p0    # "dateTimeString":Ljava/lang/String;
    .restart local p1    # "subSecs":Ljava/lang/String;
    .restart local p2    # "offsetString":Ljava/lang/String;
    :catch_70
    move-exception v3

    .line 2508
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    return-wide v0

    .line 2473
    .end local v2    # "pos":Ljava/text/ParsePosition;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_72
    :goto_72
    return-wide v0
.end method

.method private greylist-max-o parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .registers 8
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "exifBytesLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4019
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4021
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4024
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 4025
    .local v0, "startCode":I
    iget v1, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_38

    const/16 v2, 0xa

    if-eq v1, v2, :cond_38

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1b

    goto :goto_38

    .line 4026
    :cond_1b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid start code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4030
    :cond_38
    :goto_38
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    .line 4031
    .local v1, "firstIfdOffset":I
    const/16 v2, 0x8

    if-lt v1, v2, :cond_67

    if-ge v1, p2, :cond_67

    .line 4034
    add-int/lit8 v1, v1, -0x8

    .line 4035
    if-lez v1, :cond_66

    .line 4036
    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    if-ne v2, v1, :cond_4d

    goto :goto_66

    .line 4037
    :cond_4d
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t jump to first Ifd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4040
    :cond_66
    :goto_66
    return-void

    .line 4032
    :cond_67
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid first Ifd offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o printAttributes()V
    .registers 8

    .line 2068
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v1, v1

    if-ge v0, v1, :cond_91

    .line 2069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The size of tag group["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExifInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2071
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 2072
    .local v4, "tagValue":Landroid/media/ExifInterface$ExifAttribute;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tagType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tagValue: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2073
    invoke-virtual {v4, v6}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2072
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "tagValue":Landroid/media/ExifInterface$ExifAttribute;
    goto :goto_3c

    .line 2068
    :cond_8d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2076
    .end local v0    # "i":I
    :cond_91
    return-void
.end method

.method private greylist-max-o readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .registers 6
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3999
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 4000
    .local v0, "byteOrder":S
    const-string v1, "ExifInterface"

    sparse-switch v0, :sswitch_data_3e

    .line 4012
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid byte order: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4007
    :sswitch_26
    sget-boolean v2, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_2f

    .line 4008
    const-string v2, "readExifSegment: Byte Align MM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4010
    :cond_2f
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1

    .line 4002
    :sswitch_32
    sget-boolean v2, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_3b

    .line 4003
    const-string v2, "readExifSegment: Byte Align II"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4005
    :cond_3b
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1

    :sswitch_data_3e
    .sparse-switch
        0x4949 -> :sswitch_32
        0x4d4d -> :sswitch_26
    .end sparse-switch
.end method

.method private greylist-max-o readExifSegment([BI)V
    .registers 5
    .param p1, "exifBytes"    # [B
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3959
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 3963
    .local v0, "dataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    array-length v1, p1

    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3966
    invoke-direct {p0, v0, p2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3967
    return-void
.end method

.method private greylist-max-o readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .registers 32
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "ifdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4046
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmPosition(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4048
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmPosition(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    const/4 v4, 0x2

    add-int/2addr v3, v4

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    if-le v3, v5, :cond_20

    .line 4050
    return-void

    .line 4053
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    .line 4054
    .local v3, "numberOfDirectoryEntry":S
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmPosition(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    mul-int/lit8 v6, v3, 0xc

    add-int/2addr v5, v6

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v6

    if-gt v5, v6, :cond_3ff

    if-gtz v3, :cond_37

    move/from16 v23, v3

    goto/16 :goto_401

    .line 4060
    :cond_37
    sget-boolean v5, Landroid/media/ExifInterface;->DEBUG:Z

    const-string v6, "ExifInterface"

    if-eqz v5, :cond_53

    .line 4061
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numberOfDirectoryEntry: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    :cond_53
    const/4 v5, 0x0

    .local v5, "i":S
    :goto_54
    const/4 v9, 0x0

    const/4 v10, 0x5

    const/4 v12, 0x4

    if-ge v5, v3, :cond_368

    .line 4066
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v13

    .line 4067
    .local v13, "tagNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v15

    .line 4068
    .local v15, "dataFormat":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v14

    .line 4070
    .local v14, "numberOfComponents":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v16

    add-int/lit8 v7, v16, 0x4

    int-to-long v7, v7

    .line 4073
    .local v7, "nextEntryOffset":J
    sget-object v16, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v12, v16, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifTag;

    .line 4075
    .local v4, "tag":Landroid/media/ExifInterface$ExifTag;
    sget-boolean v12, Landroid/media/ExifInterface;->DEBUG:Z

    const/4 v11, 0x3

    if-eqz v12, :cond_b0

    .line 4076
    new-array v10, v10, [Ljava/lang/Object;

    .line 4077
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v10, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v16, 0x1

    aput-object v20, v10, v16

    .line 4078
    if-eqz v4, :cond_94

    iget-object v9, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    goto :goto_95

    :cond_94
    const/4 v9, 0x0

    :goto_95
    const/16 v21, 0x2

    aput-object v9, v10, v21

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v19, 0x4

    aput-object v9, v10, v19

    .line 4076
    const-string v9, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4081
    :cond_b0
    const-wide/16 v9, 0x0

    .line 4082
    .local v9, "byteCount":J
    const/16 v22, 0x0

    .line 4083
    .local v22, "valid":Z
    if-nez v4, :cond_d8

    .line 4084
    if-eqz v12, :cond_d3

    .line 4085
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v3

    .end local v3    # "numberOfDirectoryEntry":S
    .local v23, "numberOfDirectoryEntry":S
    const-string v3, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v24, v9

    goto :goto_12f

    .line 4084
    .end local v23    # "numberOfDirectoryEntry":S
    .restart local v3    # "numberOfDirectoryEntry":S
    :cond_d3
    move/from16 v23, v3

    .end local v3    # "numberOfDirectoryEntry":S
    .restart local v23    # "numberOfDirectoryEntry":S
    move-wide/from16 v24, v9

    goto :goto_12f

    .line 4087
    .end local v23    # "numberOfDirectoryEntry":S
    .restart local v3    # "numberOfDirectoryEntry":S
    :cond_d8
    move/from16 v23, v3

    .end local v3    # "numberOfDirectoryEntry":S
    .restart local v23    # "numberOfDirectoryEntry":S
    if-lez v15, :cond_115

    sget-object v3, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    array-length v11, v3

    if-lt v15, v11, :cond_e4

    move-wide/from16 v24, v9

    goto :goto_117

    .line 4092
    :cond_e4
    move-wide/from16 v24, v9

    .end local v9    # "byteCount":J
    .local v24, "byteCount":J
    int-to-long v9, v14

    aget v3, v3, v15

    int-to-long v2, v3

    mul-long/2addr v9, v2

    .line 4093
    .end local v24    # "byteCount":J
    .restart local v9    # "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v11, v9, v2

    if-ltz v11, :cond_fc

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v9, v2

    if-lez v2, :cond_f9

    goto :goto_fc

    .line 4099
    :cond_f9
    const/16 v22, 0x1

    goto :goto_131

    .line 4094
    :cond_fc
    :goto_fc
    if-eqz v12, :cond_131

    .line 4095
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_131

    .line 4087
    :cond_115
    move-wide/from16 v24, v9

    .line 4088
    .end local v9    # "byteCount":J
    .restart local v24    # "byteCount":J
    :goto_117
    if-eqz v12, :cond_12f

    .line 4089
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4102
    .end local v24    # "byteCount":J
    .restart local v9    # "byteCount":J
    :cond_12f
    :goto_12f
    move-wide/from16 v9, v24

    :cond_131
    :goto_131
    if-nez v22, :cond_13b

    .line 4103
    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4104
    move/from16 v24, v5

    const/4 v5, 0x2

    goto/16 :goto_35d

    .line 4109
    :cond_13b
    const-wide/16 v2, 0x4

    cmp-long v2, v9, v2

    const-string v3, "Compression"

    if-lez v2, :cond_20c

    .line 4110
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    .line 4111
    .local v2, "offset":I
    if-eqz v12, :cond_162

    .line 4112
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v5

    .end local v5    # "i":S
    .local v24, "i":S
    const-string v5, "seek to data offset: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_164

    .line 4111
    .end local v24    # "i":S
    .restart local v5    # "i":S
    :cond_162
    move/from16 v24, v5

    .line 4114
    .end local v5    # "i":S
    .restart local v24    # "i":S
    :goto_164
    iget v5, v0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v11, 0x7

    if-ne v5, v11, :cond_1c9

    .line 4115
    iget-object v5, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v11, "MakerNote"

    if-ne v5, v11, :cond_178

    .line 4117
    iput v2, v0, Landroid/media/ExifInterface;->mOrfMakerNoteOffset:I

    move/from16 v27, v13

    move/from16 v26, v14

    move/from16 v25, v15

    goto :goto_1db

    .line 4118
    :cond_178
    const/4 v5, 0x6

    move/from16 v11, p2

    if-ne v11, v5, :cond_1c2

    iget-object v5, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v11, "ThumbnailImage"

    if-ne v5, v11, :cond_1c2

    .line 4121
    iput v2, v0, Landroid/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 4122
    iput v14, v0, Landroid/media/ExifInterface;->mOrfThumbnailLength:I

    .line 4124
    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4125
    const/4 v11, 0x6

    invoke-static {v11, v5}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 4126
    .local v5, "compressionAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget v11, v0, Landroid/media/ExifInterface;->mOrfThumbnailOffset:I

    move/from16 v26, v14

    move/from16 v25, v15

    .end local v14    # "numberOfComponents":I
    .end local v15    # "dataFormat":I
    .local v25, "dataFormat":I
    .local v26, "numberOfComponents":I
    int-to-long v14, v11

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4127
    invoke-static {v14, v15, v11}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 4128
    .local v11, "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget v14, v0, Landroid/media/ExifInterface;->mOrfThumbnailLength:I

    int-to-long v14, v14

    move/from16 v27, v13

    .end local v13    # "tagNumber":I
    .local v27, "tagNumber":I
    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4129
    invoke-static {v14, v15, v13}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 4131
    .local v13, "jpegInterchangeFormatLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v15, 0x4

    aget-object v14, v14, v15

    invoke-virtual {v14, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4132
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v15

    const-string v15, "JPEGInterchangeFormat"

    invoke-virtual {v14, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4134
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v15, 0x4

    aget-object v14, v14, v15

    const-string v15, "JPEGInterchangeFormatLength"

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4136
    .end local v5    # "compressionAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v11    # "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v13    # "jpegInterchangeFormatLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    goto :goto_1db

    .line 4118
    .end local v25    # "dataFormat":I
    .end local v26    # "numberOfComponents":I
    .end local v27    # "tagNumber":I
    .local v13, "tagNumber":I
    .restart local v14    # "numberOfComponents":I
    .restart local v15    # "dataFormat":I
    :cond_1c2
    move/from16 v27, v13

    move/from16 v26, v14

    move/from16 v25, v15

    .end local v13    # "tagNumber":I
    .end local v14    # "numberOfComponents":I
    .end local v15    # "dataFormat":I
    .restart local v25    # "dataFormat":I
    .restart local v26    # "numberOfComponents":I
    .restart local v27    # "tagNumber":I
    goto :goto_1db

    .line 4137
    .end local v25    # "dataFormat":I
    .end local v26    # "numberOfComponents":I
    .end local v27    # "tagNumber":I
    .restart local v13    # "tagNumber":I
    .restart local v14    # "numberOfComponents":I
    .restart local v15    # "dataFormat":I
    :cond_1c9
    move/from16 v27, v13

    move/from16 v26, v14

    move/from16 v25, v15

    .end local v13    # "tagNumber":I
    .end local v14    # "numberOfComponents":I
    .end local v15    # "dataFormat":I
    .restart local v25    # "dataFormat":I
    .restart local v26    # "numberOfComponents":I
    .restart local v27    # "tagNumber":I
    const/16 v11, 0xa

    if-ne v5, v11, :cond_1db

    .line 4138
    iget-object v5, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v11, "JpgFromRaw"

    if-ne v5, v11, :cond_1db

    .line 4139
    iput v2, v0, Landroid/media/ExifInterface;->mRw2JpgFromRawOffset:I

    .line 4142
    :cond_1db
    :goto_1db
    int-to-long v13, v2

    add-long/2addr v13, v9

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    move-object/from16 v28, v3

    move-object v11, v4

    .end local v4    # "tag":Landroid/media/ExifInterface$ExifTag;
    .local v11, "tag":Landroid/media/ExifInterface$ExifTag;
    int-to-long v3, v5

    cmp-long v3, v13, v3

    if-gtz v3, :cond_1ee

    .line 4143
    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_217

    .line 4146
    :cond_1ee
    if-eqz v12, :cond_206

    .line 4147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip the tag entry since data offset is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4149
    :cond_206
    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4150
    const/4 v5, 0x2

    goto/16 :goto_35d

    .line 4109
    .end local v2    # "offset":I
    .end local v11    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v24    # "i":S
    .end local v25    # "dataFormat":I
    .end local v26    # "numberOfComponents":I
    .end local v27    # "tagNumber":I
    .restart local v4    # "tag":Landroid/media/ExifInterface$ExifTag;
    .local v5, "i":S
    .restart local v13    # "tagNumber":I
    .restart local v14    # "numberOfComponents":I
    .restart local v15    # "dataFormat":I
    :cond_20c
    move-object/from16 v28, v3

    move-object v11, v4

    move/from16 v24, v5

    move/from16 v27, v13

    move/from16 v26, v14

    move/from16 v25, v15

    .line 4155
    .end local v4    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v5    # "i":S
    .end local v13    # "tagNumber":I
    .end local v14    # "numberOfComponents":I
    .end local v15    # "dataFormat":I
    .restart local v11    # "tag":Landroid/media/ExifInterface$ExifTag;
    .restart local v24    # "i":S
    .restart local v25    # "dataFormat":I
    .restart local v26    # "numberOfComponents":I
    .restart local v27    # "tagNumber":I
    :goto_217
    sget-object v2, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4156
    .local v2, "nextIfdType":Ljava/lang/Integer;
    if-eqz v12, :cond_245

    .line 4157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nextIfdType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " byteCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    :cond_245
    if-eqz v2, :cond_2ed

    .line 4161
    const-wide/16 v3, -0x1

    .line 4163
    .local v3, "offset":J
    sparse-switch v25, :sswitch_data_402

    goto :goto_264

    .line 4178
    :sswitch_24d
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v5

    int-to-long v3, v5

    .line 4179
    goto :goto_264

    .line 4169
    :sswitch_253
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v5

    int-to-long v3, v5

    .line 4170
    goto :goto_264

    .line 4173
    :sswitch_259
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    .line 4174
    goto :goto_264

    .line 4165
    :sswitch_25e
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    int-to-long v3, v5

    .line 4166
    nop

    .line 4186
    :goto_264
    if-eqz v12, :cond_27f

    .line 4187
    const/4 v5, 0x2

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    iget-object v14, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string v14, "Offset: %d, tagName: %s"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_280

    .line 4186
    :cond_27f
    const/4 v5, 0x2

    .line 4193
    :goto_280
    const-wide/16 v13, 0x0

    cmp-long v13, v3, v13

    if-lez v13, :cond_2d0

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v13

    int-to-long v13, v13

    cmp-long v13, v3, v13

    if-gez v13, :cond_2d0

    .line 4194
    iget-object v13, v0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    long-to-int v14, v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2a7

    .line 4195
    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4196
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v0, v1, v12}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_2e8

    .line 4198
    :cond_2a7
    if-eqz v12, :cond_2e8

    .line 4199
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e8

    .line 4204
    :cond_2d0
    if-eqz v12, :cond_2e8

    .line 4205
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4209
    :cond_2e8
    :goto_2e8
    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4210
    goto/16 :goto_35d

    .line 4213
    .end local v3    # "offset":J
    :cond_2ed
    const/4 v5, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v3

    iget v4, v0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v3, v4

    .line 4214
    .local v3, "bytesOffset":I
    long-to-int v4, v9

    new-array v4, v4, [B

    .line 4215
    .local v4, "bytes":[B
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 4216
    new-instance v12, Landroid/media/ExifInterface$ExifAttribute;

    int-to-long v13, v3

    const/16 v20, 0x0

    move-wide/from16 v17, v13

    move/from16 v13, v26

    .end local v26    # "numberOfComponents":I
    .local v13, "numberOfComponents":I
    move-object v14, v12

    move/from16 v21, v25

    .end local v25    # "dataFormat":I
    .local v21, "dataFormat":I
    move/from16 v15, v21

    move/from16 v16, v13

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v20}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[BLandroid/media/ExifInterface$ExifAttribute-IA;)V

    .line 4218
    .local v12, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, p2

    iget-object v15, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v14, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4223
    iget-object v14, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v15, "DNGVersion"

    if-ne v14, v15, :cond_322

    .line 4224
    const/4 v14, 0x3

    iput v14, v0, Landroid/media/ExifInterface;->mMimeType:I

    .line 4230
    :cond_322
    iget-object v14, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v15, "Make"

    if-eq v14, v15, :cond_32e

    iget-object v14, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v15, "Model"

    if-ne v14, v15, :cond_33c

    :cond_32e
    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4231
    invoke-virtual {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "PENTAX"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_34d

    :cond_33c
    iget-object v14, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v15, v28

    if-ne v14, v15, :cond_351

    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4233
    invoke-virtual {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v14

    const v15, 0xffff

    if-ne v14, v15, :cond_351

    .line 4234
    :cond_34d
    const/16 v14, 0x8

    iput v14, v0, Landroid/media/ExifInterface;->mMimeType:I

    .line 4238
    :cond_351
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v14

    int-to-long v14, v14

    cmp-long v14, v14, v7

    if-eqz v14, :cond_35d

    .line 4239
    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4065
    .end local v2    # "nextIfdType":Ljava/lang/Integer;
    .end local v3    # "bytesOffset":I
    .end local v4    # "bytes":[B
    .end local v7    # "nextEntryOffset":J
    .end local v9    # "byteCount":J
    .end local v11    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v12    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v13    # "numberOfComponents":I
    .end local v21    # "dataFormat":I
    .end local v22    # "valid":Z
    .end local v27    # "tagNumber":I
    :cond_35d
    :goto_35d
    add-int/lit8 v2, v24, 0x1

    int-to-short v2, v2

    move v4, v5

    move/from16 v3, v23

    move v5, v2

    move/from16 v2, p2

    .end local v24    # "i":S
    .local v2, "i":S
    goto/16 :goto_54

    .end local v2    # "i":S
    .end local v23    # "numberOfDirectoryEntry":S
    .local v3, "numberOfDirectoryEntry":S
    .restart local v5    # "i":S
    :cond_368
    move/from16 v23, v3

    move/from16 v24, v5

    .line 4243
    .end local v3    # "numberOfDirectoryEntry":S
    .end local v5    # "i":S
    .restart local v23    # "numberOfDirectoryEntry":S
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    if-gt v2, v3, :cond_3fe

    .line 4244
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    .line 4245
    .local v2, "nextIfdOffset":I
    sget-boolean v3, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_393

    .line 4246
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string v5, "nextIfdOffset: %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    :cond_393
    int-to-long v4, v2

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-lez v4, :cond_3e6

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    if-ge v2, v4, :cond_3e6

    .line 4252
    iget-object v4, v0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3cd

    .line 4253
    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4255
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3bf

    .line 4256
    invoke-direct {v0, v1, v4}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_3fe

    .line 4257
    :cond_3bf
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3fe

    .line 4258
    invoke-direct {v0, v1, v10}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_3fe

    .line 4261
    :cond_3cd
    if-eqz v3, :cond_3fe

    .line 4262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3fe

    .line 4267
    :cond_3e6
    if-eqz v3, :cond_3fe

    .line 4268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4273
    .end local v2    # "nextIfdOffset":I
    :cond_3fe
    :goto_3fe
    return-void

    .line 4054
    .end local v23    # "numberOfDirectoryEntry":S
    .restart local v3    # "numberOfDirectoryEntry":S
    :cond_3ff
    move/from16 v23, v3

    .line 4057
    .end local v3    # "numberOfDirectoryEntry":S
    .restart local v23    # "numberOfDirectoryEntry":S
    :goto_401
    return-void

    :sswitch_data_402
    .sparse-switch
        0x3 -> :sswitch_25e
        0x4 -> :sswitch_259
        0x8 -> :sswitch_253
        0x9 -> :sswitch_24d
        0xd -> :sswitch_24d
    .end sparse-switch
.end method

.method private greylist-max-o removeAttribute(Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 1957
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 1958
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1960
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method private blacklist replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "ifdType"    # I
    .param p2, "invalidTag"    # Ljava/lang/String;
    .param p3, "validTag"    # Ljava/lang/String;

    .line 5269
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 5270
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 5271
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    .line 5272
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5271
    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5273
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5276
    :cond_26
    return-void
.end method

.method private greylist-max-o retrieveJpegImageSize(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .registers 7
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4284
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    .line 4285
    const-string v1, "ImageLength"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 4286
    .local v0, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    .line 4287
    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4289
    .local v1, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_1c

    if-nez v1, :cond_33

    .line 4291
    :cond_1c
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    .line 4292
    const-string v3, "JPEGInterchangeFormat"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 4293
    .local v2, "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_33

    .line 4294
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4295
    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 4298
    .local v3, "jpegInterchangeFormat":I
    invoke-direct {p0, p1, v3, p2}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 4301
    .end local v2    # "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "jpegInterchangeFormat":I
    :cond_33
    return-void
.end method

.method private greylist-max-o saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 16
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3537
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 3538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveJpegAttributes starting with (inputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3541
    :cond_2c
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3542
    .local v0, "dataInputStream":Ljava/io/DataInputStream;
    new-instance v1, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p2, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3544
    .local v1, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    const-string v3, "Invalid marker"

    const/4 v4, -0x1

    if-ne v2, v4, :cond_131

    .line 3547
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3548
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    const/16 v5, -0x28

    if-ne v2, v5, :cond_12b

    .line 3551
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3556
    const/4 v2, 0x0

    .line 3557
    .local v2, "xmpAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string v5, "Xmp"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_68

    iget-boolean v6, p0, Landroid/media/ExifInterface;->mXmpIsFromSeparateMarker:Z

    if-eqz v6, :cond_68

    .line 3558
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v7

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 3562
    :cond_68
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3563
    const/16 v6, -0x1f

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3564
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3567
    if-eqz v2, :cond_7c

    .line 3568
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v7

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3571
    :cond_7c
    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 3574
    .local v5, "bytes":[B
    :goto_80
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 3575
    .local v6, "marker":B
    if-ne v6, v4, :cond_125

    .line 3578
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 3579
    const-string v8, "Invalid length"

    sparse-switch v6, :sswitch_data_138

    .line 3624
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3625
    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3626
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    .line 3627
    .local v9, "length":I
    invoke-virtual {v1, v9}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 3628
    add-int/lit8 v9, v9, -0x2

    .line 3629
    if-ltz v9, :cond_11f

    goto :goto_10a

    .line 3581
    .end local v9    # "length":I
    :sswitch_a1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    .line 3582
    .restart local v9    # "length":I
    if-ltz v9, :cond_fa

    .line 3585
    const/4 v10, 0x6

    new-array v11, v10, [B

    .line 3586
    .local v11, "identifier":[B
    if-lt v9, v10, :cond_d5

    .line 3587
    invoke-virtual {v0, v11}, Ljava/io/DataInputStream;->read([B)I

    move-result v12

    if-ne v12, v10, :cond_cd

    .line 3590
    sget-object v12, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_d5

    .line 3592
    add-int/lit8 v10, v9, -0x6

    invoke-virtual {v0, v10}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v10

    add-int/lit8 v12, v9, -0x6

    if-ne v10, v12, :cond_c7

    goto :goto_11d

    .line 3593
    :cond_c7
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3588
    :cond_cd
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid exif"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3599
    :cond_d5
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3600
    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3601
    add-int/lit8 v8, v9, 0x2

    invoke-virtual {v1, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 3602
    if-lt v9, v10, :cond_e7

    .line 3603
    add-int/lit8 v9, v9, -0x6

    .line 3604
    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3607
    :cond_e7
    :goto_e7
    if-lez v9, :cond_11d

    array-length v8, v5

    .line 3608
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 3607
    invoke-virtual {v0, v5, v7, v8}, Ljava/io/DataInputStream;->read([BII)I

    move-result v8

    move v10, v8

    .local v10, "read":I
    if-ltz v8, :cond_11d

    .line 3609
    invoke-virtual {v1, v5, v7, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 3610
    sub-int/2addr v9, v10

    goto :goto_e7

    .line 3583
    .end local v10    # "read":I
    .end local v11    # "identifier":[B
    :cond_fa
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3616
    .end local v9    # "length":I
    :sswitch_100
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3617
    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3619
    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 3620
    return-void

    .line 3633
    .restart local v9    # "length":I
    :goto_10a
    if-lez v9, :cond_11d

    array-length v8, v5

    .line 3634
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 3633
    invoke-virtual {v0, v5, v7, v8}, Ljava/io/DataInputStream;->read([BII)I

    move-result v8

    move v10, v8

    .restart local v10    # "read":I
    if-ltz v8, :cond_11d

    .line 3635
    invoke-virtual {v1, v5, v7, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 3636
    sub-int/2addr v9, v10

    goto :goto_10a

    .line 3641
    .end local v6    # "marker":B
    .end local v9    # "length":I
    .end local v10    # "read":I
    :cond_11d
    :goto_11d
    goto/16 :goto_80

    .line 3630
    .restart local v6    # "marker":B
    .restart local v9    # "length":I
    :cond_11f
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3576
    .end local v9    # "length":I
    :cond_125
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3549
    .end local v2    # "xmpAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "bytes":[B
    .end local v6    # "marker":B
    :cond_12b
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3545
    :cond_131
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_138
    .sparse-switch
        -0x27 -> :sswitch_100
        -0x26 -> :sswitch_100
        -0x1f -> :sswitch_a1
    .end sparse-switch
.end method

.method private blacklist savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 12
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3646
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 3647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePngAttributes starting with (inputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3650
    :cond_2c
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3651
    .local v0, "dataInputStream":Ljava/io/DataInputStream;
    new-instance v1, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p2, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3654
    .local v1, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    sget-object v2, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v3, v2

    invoke-static {v0, v1, v3}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3661
    iget v3, p0, Landroid/media/ExifInterface;->mExifOffset:I

    const/4 v4, 0x4

    if-nez v3, :cond_51

    .line 3663
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 3664
    .local v2, "ihdrChunkLength":I
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3665
    add-int/lit8 v3, v2, 0x4

    add-int/2addr v3, v4

    invoke-static {v0, v1, v3}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3667
    .end local v2    # "ihdrChunkLength":I
    goto :goto_62

    .line 3669
    :cond_51
    array-length v2, v2

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    sub-int/2addr v3, v4

    .line 3672
    .local v3, "copyLength":I
    invoke-static {v0, v1, v3}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3674
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 3675
    .local v2, "exifChunkLength":I
    add-int/lit8 v5, v2, 0x4

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 3679
    .end local v2    # "exifChunkLength":I
    .end local v3    # "copyLength":I
    :goto_62
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3682
    .local v2, "exifByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_67
    new-instance v3, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, v2, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3686
    .local v3, "exifDataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-direct {p0, v3}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3687
    iget-object v5, v3, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    check-cast v5, Ljava/io/ByteArrayOutputStream;

    .line 3688
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 3690
    .local v5, "exifBytes":[B
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3692
    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    .line 3693
    .local v6, "crc":Ljava/util/zip/CRC32;
    array-length v7, v5

    sub-int/2addr v7, v4

    invoke-virtual {v6, v5, v4, v7}, Ljava/util/zip/CRC32;->update([BII)V

    .line 3694
    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    long-to-int v4, v7

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V
    :try_end_8e
    .catchall {:try_start_67 .. :try_end_8e} :catchall_95

    .line 3695
    .end local v3    # "exifDataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v5    # "exifBytes":[B
    .end local v6    # "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3697
    .end local v2    # "exifByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 3698
    return-void

    .line 3679
    .restart local v2    # "exifByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_95
    move-exception v3

    :try_start_96
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    goto :goto_9e

    :catchall_9a
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9e
    throw v3
.end method

.method private blacklist saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 23
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3734
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 3735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveWebpAttributes starting with (inputStream: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", outputStream: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ExifInterface"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    :cond_32
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v2, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    move-object v4, v0

    .line 3740
    .local v4, "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v3, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    move-object v5, v0

    .line 3744
    .local v5, "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    sget-object v0, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v6, v0

    invoke-static {v4, v5, v6}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3746
    sget-object v6, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v7, v6

    const/4 v8, 0x4

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3749
    const/4 v7, 0x0

    .line 3751
    .local v7, "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_51
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v7, v9

    .line 3752
    new-instance v9, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v9, v7, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3756
    .local v9, "nonHeaderOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    iget v10, v1, Landroid/media/ExifInterface;->mExifOffset:I

    if-eqz v10, :cond_7b

    .line 3759
    array-length v0, v0

    add-int/2addr v0, v8

    array-length v6, v6

    add-int/2addr v0, v6

    .line 3761
    .local v0, "bytesRead":I
    sub-int/2addr v10, v0

    sub-int/2addr v10, v8

    sub-int/2addr v10, v8

    invoke-static {v4, v9, v10}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3766
    invoke-virtual {v4, v8}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3767
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    .line 3768
    .local v6, "exifChunkLength":I
    invoke-virtual {v4, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3771
    invoke-direct {v1, v9}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3772
    .end local v0    # "bytesRead":I
    .end local v6    # "exifChunkLength":I
    goto/16 :goto_1e0

    .line 3774
    :cond_7b
    new-array v0, v8, [B

    .line 3775
    .local v0, "firstChunkType":[B
    invoke-virtual {v4, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v6

    array-length v10, v0

    if-ne v6, v10, :cond_1f9

    .line 3780
    sget-object v6, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v10, :cond_e2

    .line 3782
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v10

    .line 3784
    .local v10, "size":I
    rem-int/lit8 v14, v10, 0x2

    if-ne v14, v13, :cond_9b

    add-int/lit8 v14, v10, 0x1

    goto :goto_9c

    :cond_9b
    move v14, v10

    :goto_9c
    new-array v14, v14, [B

    .line 3785
    .local v14, "data":[B
    invoke-virtual {v4, v14}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 3788
    aget-byte v15, v14, v12

    or-int/2addr v11, v15

    int-to-byte v11, v11

    aput-byte v11, v14, v12

    .line 3791
    aget-byte v11, v14, v12

    shr-int/2addr v11, v13

    and-int/2addr v11, v13

    if-ne v11, v13, :cond_ae

    move v12, v13

    :cond_ae
    move v11, v12

    .line 3794
    .local v11, "containsAnimation":Z
    invoke-virtual {v9, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3795
    invoke-virtual {v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3796
    invoke-virtual {v9, v14}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3805
    if-eqz v11, :cond_d6

    .line 3806
    sget-object v6, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    const/4 v12, 0x0

    invoke-direct {v1, v4, v9, v6, v12}, Landroid/media/ExifInterface;->copyChunksUpToGivenChunkType(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V

    .line 3810
    :goto_c0
    new-array v6, v8, [B

    .line 3811
    .local v6, "type":[B
    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .line 3812
    .local v12, "read":I
    sget-object v13, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    invoke-static {v6, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-nez v13, :cond_d2

    .line 3814
    invoke-direct {v1, v9}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3815
    goto :goto_e0

    .line 3817
    :cond_d2
    invoke-direct {v1, v4, v9, v6}, Landroid/media/ExifInterface;->copyWebPChunk(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B)V

    .line 3818
    .end local v6    # "type":[B
    .end local v12    # "read":I
    goto :goto_c0

    .line 3821
    :cond_d6
    sget-object v6, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    sget-object v8, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-direct {v1, v4, v9, v6, v8}, Landroid/media/ExifInterface;->copyChunksUpToGivenChunkType(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V

    .line 3823
    invoke-direct {v1, v9}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3825
    .end local v10    # "size":I
    .end local v11    # "containsAnimation":Z
    .end local v14    # "data":[B
    :goto_e0
    goto/16 :goto_1e0

    :cond_e2
    sget-object v10, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    invoke-static {v0, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-nez v14, :cond_f2

    sget-object v14, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 3826
    invoke-static {v0, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_1e0

    .line 3827
    :cond_f2
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v14

    .line 3828
    .local v14, "size":I
    move v15, v14

    .line 3830
    .local v15, "bytesToRead":I
    rem-int/lit8 v11, v14, 0x2

    if-ne v11, v13, :cond_fd

    .line 3831
    add-int/lit8 v15, v15, 0x1

    .line 3835
    :cond_fd
    const/4 v11, 0x0

    .line 3836
    .local v11, "widthAndHeight":I
    const/16 v16, 0x0

    .line 3837
    .local v16, "width":I
    const/16 v17, 0x0

    .line 3838
    .local v17, "height":I
    const/16 v18, 0x0

    .line 3840
    .local v18, "alpha":I
    const/4 v12, 0x3

    new-array v13, v12, [B

    .line 3842
    .local v13, "vp8Frame":[B
    invoke-static {v0, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v19

    if-eqz v19, :cond_13d

    .line 3843
    invoke-virtual {v4, v13}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 3846
    new-array v12, v12, [B

    .line 3847
    .local v12, "vp8Signature":[B
    invoke-virtual {v4, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v8

    array-length v2, v12

    if-ne v8, v2, :cond_135

    sget-object v2, Landroid/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 3848
    invoke-static {v2, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_135

    .line 3854
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    move v11, v2

    .line 3855
    shl-int/lit8 v2, v11, 0x12

    shr-int/lit8 v16, v2, 0x12

    .line 3856
    shl-int/lit8 v2, v11, 0x2

    shr-int/lit8 v17, v2, 0x12

    .line 3857
    array-length v2, v13

    array-length v8, v12

    add-int/2addr v2, v8

    const/4 v8, 0x4

    add-int/2addr v2, v8

    sub-int/2addr v15, v2

    .end local v12    # "vp8Signature":[B
    goto :goto_16c

    .line 3849
    .restart local v12    # "vp8Signature":[B
    :cond_135
    new-instance v2, Ljava/io/IOException;

    const-string v6, "Encountered error while checking VP8 signature"

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v2

    .line 3858
    .end local v12    # "vp8Signature":[B
    .restart local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :cond_13d
    sget-object v2, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_16c

    .line 3860
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v2

    .line 3861
    .local v2, "vp8lSignature":B
    const/16 v8, 0x2f

    if-ne v2, v8, :cond_164

    .line 3867
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v8

    move v11, v8

    .line 3870
    shl-int/lit8 v8, v11, 0x12

    shr-int/lit8 v8, v8, 0x12

    const/4 v12, 0x1

    add-int/lit8 v16, v8, 0x1

    .line 3871
    shl-int/lit8 v8, v11, 0x4

    shr-int/lit8 v8, v8, 0x12

    add-int/lit8 v17, v8, 0x1

    .line 3873
    and-int/lit8 v18, v11, 0x8

    .line 3874
    add-int/lit8 v15, v15, -0x5

    goto :goto_16d

    .line 3862
    :cond_164
    new-instance v6, Ljava/io/IOException;

    const-string v8, "Encountered error while checking VP8L signature"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v6

    .line 3858
    .end local v2    # "vp8lSignature":B
    .restart local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :cond_16c
    :goto_16c
    nop

    .line 3878
    :goto_16d
    invoke-virtual {v9, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3879
    const/16 v2, 0xa

    invoke-virtual {v9, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3880
    new-array v2, v2, [B

    .line 3882
    .local v2, "data":[B
    const/4 v6, 0x0

    aget-byte v8, v2, v6

    const/16 v12, 0x8

    or-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    .line 3884
    aget-byte v8, v2, v6

    shl-int/lit8 v12, v18, 0x4

    or-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    .line 3886
    add-int/lit8 v6, v16, -0x1

    .line 3887
    .end local v16    # "width":I
    .local v6, "width":I
    add-int/lit8 v8, v17, -0x1

    .line 3888
    .end local v17    # "height":I
    .local v8, "height":I
    int-to-byte v12, v6

    const/16 v16, 0x4

    aput-byte v12, v2, v16

    .line 3889
    const/4 v12, 0x5

    shr-int/lit8 v3, v6, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v12

    .line 3890
    const/4 v3, 0x6

    shr-int/lit8 v12, v6, 0x10

    int-to-byte v12, v12

    aput-byte v12, v2, v3

    .line 3891
    const/4 v3, 0x7

    int-to-byte v12, v8

    aput-byte v12, v2, v3

    .line 3892
    shr-int/lit8 v3, v8, 0x8

    int-to-byte v3, v3

    const/16 v12, 0x8

    aput-byte v3, v2, v12

    .line 3893
    const/16 v3, 0x9

    shr-int/lit8 v12, v8, 0x10

    int-to-byte v12, v12

    aput-byte v12, v2, v3

    .line 3894
    invoke-virtual {v9, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3897
    invoke-virtual {v9, v0}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3898
    invoke-virtual {v9, v14}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3899
    invoke-static {v0, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1ca

    .line 3900
    invoke-virtual {v9, v13}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3901
    sget-object v3, Landroid/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    invoke-virtual {v9, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3902
    invoke-virtual {v9, v11}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_1da

    .line 3903
    :cond_1ca
    sget-object v3, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1da

    .line 3904
    const/16 v3, 0x2f

    invoke-virtual {v9, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write(I)V

    .line 3905
    invoke-virtual {v9, v11}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3907
    :cond_1da
    :goto_1da
    invoke-static {v4, v9, v15}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3910
    invoke-direct {v1, v9}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3915
    .end local v0    # "firstChunkType":[B
    .end local v2    # "data":[B
    .end local v6    # "width":I
    .end local v8    # "height":I
    .end local v11    # "widthAndHeight":I
    .end local v13    # "vp8Frame":[B
    .end local v14    # "size":I
    .end local v15    # "bytesToRead":I
    .end local v18    # "alpha":I
    :cond_1e0
    :goto_1e0
    invoke-static {v4, v9}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 3918
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    sget-object v2, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v3, v2

    add-int/2addr v0, v3

    invoke-virtual {v5, v0}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3920
    invoke-virtual {v5, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3921
    invoke-virtual {v7, v5}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_1f4} :catch_203
    .catchall {:try_start_51 .. :try_end_1f4} :catchall_201

    .line 3925
    .end local v9    # "nonHeaderOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-static {v7}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 3926
    nop

    .line 3927
    return-void

    .line 3776
    .restart local v0    # "firstChunkType":[B
    .restart local v9    # "nonHeaderOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    :cond_1f9
    :try_start_1f9
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Encountered invalid length while parsing WebP chunk type"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v2
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_201} :catch_203
    .catchall {:try_start_1f9 .. :try_end_201} :catchall_201

    .line 3925
    .end local v0    # "firstChunkType":[B
    .end local v9    # "nonHeaderOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :catchall_201
    move-exception v0

    goto :goto_20c

    .line 3922
    :catch_203
    move-exception v0

    .line 3923
    .local v0, "e":Ljava/lang/Exception;
    :try_start_204
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to save WebP file"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v2
    :try_end_20c
    .catchall {:try_start_204 .. :try_end_20c} :catchall_201

    .line 3925
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :goto_20c
    invoke-static {v7}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 3926
    throw v0
.end method

.method private greylist-max-o setThumbnailData(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 5
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4305
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 4307
    .local v0, "thumbnailData":Ljava/util/HashMap;
    nop

    .line 4308
    const-string v1, "Compression"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4309
    .local v1, "compressionAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_2a

    .line 4310
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iput v2, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    .line 4311
    sparse-switch v2, :sswitch_data_2e

    goto :goto_29

    .line 4313
    :sswitch_1c
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 4314
    goto :goto_29

    .line 4318
    :sswitch_20
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 4319
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromStrips(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    :cond_29
    :goto_29
    goto :goto_2d

    .line 4326
    :cond_2a
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 4328
    :goto_2d
    return-void

    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_20
        0x6 -> :sswitch_1c
        0x7 -> :sswitch_20
    .end sparse-switch
.end method

.method private greylist-max-o swapBasedOnImageSize(II)V
    .registers 14
    .param p1, "firstIfdType"    # I
    .param p2, "secondIfdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5229
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "ExifInterface"

    if-nez v0, :cond_89

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_89

    .line 5236
    :cond_18
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    .line 5237
    const-string v2, "ImageLength"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 5238
    .local v0, "firstImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p1

    .line 5239
    const-string v4, "ImageWidth"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 5240
    .local v3, "firstImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 5241
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 5242
    .local v2, "secondImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 5243
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 5245
    .local v4, "secondImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_7f

    if-nez v3, :cond_49

    goto :goto_7f

    .line 5249
    :cond_49
    if-eqz v2, :cond_75

    if-nez v4, :cond_4e

    goto :goto_75

    .line 5254
    :cond_4e
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 5255
    .local v1, "firstImageLengthValue":I
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    .line 5256
    .local v5, "firstImageWidthValue":I
    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v6}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v6

    .line 5257
    .local v6, "secondImageLengthValue":I
    iget-object v7, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v7}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v7

    .line 5259
    .local v7, "secondImageWidthValue":I
    if-ge v1, v6, :cond_88

    if-ge v5, v7, :cond_88

    .line 5261
    iget-object v8, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v8, p1

    .line 5262
    .local v9, "tempMap":Ljava/util/HashMap;
    aget-object v10, v8, p2

    aput-object v10, v8, p1

    .line 5263
    aput-object v9, v8, p2

    goto :goto_88

    .line 5250
    .end local v1    # "firstImageLengthValue":I
    .end local v5    # "firstImageWidthValue":I
    .end local v6    # "secondImageLengthValue":I
    .end local v7    # "secondImageWidthValue":I
    .end local v9    # "tempMap":Ljava/util/HashMap;
    :cond_75
    :goto_75
    sget-boolean v5, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v5, :cond_88

    .line 5251
    const-string v5, "Second image does not contain valid size information"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 5246
    :cond_7f
    :goto_7f
    sget-boolean v5, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v5, :cond_88

    .line 5247
    const-string v5, "First image does not contain valid size information"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5266
    :cond_88
    :goto_88
    return-void

    .line 5230
    .end local v0    # "firstImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v2    # "secondImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "firstImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v4    # "secondImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_89
    :goto_89
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_92

    .line 5231
    const-string v0, "Cannot perform swap since only one image data exists"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5233
    :cond_92
    return-void
.end method

.method private greylist-max-o updateAttribute(Ljava/lang/String;Landroid/media/ExifInterface$ExifAttribute;)Z
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/media/ExifInterface$ExifAttribute;

    .line 1941
    const/4 v0, 0x0

    .line 1942
    .local v0, "updated":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_1c

    .line 1943
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1944
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    const/4 v0, 0x1

    .line 1942
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1948
    .end local v1    # "i":I
    :cond_1c
    return v0
.end method

.method private greylist-max-o updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .registers 20
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4559
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    .line 4560
    const-string v2, "DefaultCropSize"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4562
    .local v1, "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    .line 4563
    const-string v3, "SensorTopBorder"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 4564
    .local v2, "topBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    .line 4565
    const-string v4, "SensorLeftBorder"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 4566
    .local v3, "leftBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    .line 4567
    const-string v5, "SensorBottomBorder"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 4568
    .local v4, "bottomBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 4569
    const-string v6, "SensorRightBorder"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/ExifInterface$ExifAttribute;

    .line 4571
    .local v5, "rightBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string v6, "ImageLength"

    const-string v7, "ImageWidth"

    if-eqz v1, :cond_8e

    .line 4574
    iget v8, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v8, v9, :cond_64

    .line 4575
    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4576
    invoke-static {v1, v8}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/media/ExifInterface$Rational;

    .line 4577
    .local v8, "defaultCropSizeValue":[Landroid/media/ExifInterface$Rational;
    aget-object v9, v8, v11

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4578
    invoke-static {v9, v11}, Landroid/media/ExifInterface$ExifAttribute;->createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4579
    .local v9, "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    aget-object v10, v8, v10

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4580
    invoke-static {v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 4581
    .local v8, "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    goto :goto_7d

    .line 4582
    .end local v8    # "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v9    # "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_64
    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4583
    invoke-static {v1, v8}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 4584
    .local v8, "defaultCropSizeValue":[I
    aget v9, v8, v11

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4585
    invoke-static {v9, v11}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4586
    .restart local v9    # "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    aget v10, v8, v10

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4587
    invoke-static {v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v10

    move-object v8, v10

    .line 4589
    .local v8, "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :goto_7d
    iget-object v10, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, p2

    invoke-virtual {v10, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4590
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, p2

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4591
    .end local v8    # "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v9    # "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v16, v1

    goto :goto_db

    :cond_8e
    if-eqz v2, :cond_d6

    if-eqz v3, :cond_d6

    if-eqz v4, :cond_d6

    if-eqz v5, :cond_d6

    .line 4594
    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v8}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v8

    .line 4595
    .local v8, "topBorderValue":I
    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v9}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v9

    .line 4596
    .local v9, "bottomBorderValue":I
    iget-object v10, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v10}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v10

    .line 4597
    .local v10, "rightBorderValue":I
    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v11}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v11

    .line 4598
    .local v11, "leftBorderValue":I
    if-le v9, v8, :cond_d3

    if-le v10, v11, :cond_d3

    .line 4599
    sub-int v12, v9, v8

    .line 4600
    .local v12, "length":I
    sub-int v13, v10, v11

    .line 4601
    .local v13, "width":I
    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4602
    invoke-static {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 4603
    .local v14, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4604
    invoke-static {v13, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v15

    .line 4605
    .local v15, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v16, v1

    .end local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .local v16, "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4606
    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d5

    .line 4598
    .end local v12    # "length":I
    .end local v13    # "width":I
    .end local v14    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v15    # "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v16    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_d3
    move-object/from16 v16, v1

    .line 4608
    .end local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v8    # "topBorderValue":I
    .end local v9    # "bottomBorderValue":I
    .end local v10    # "rightBorderValue":I
    .end local v11    # "leftBorderValue":I
    .restart local v16    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :goto_d5
    goto :goto_db

    .line 4591
    .end local v16    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_d6
    move-object/from16 v16, v1

    .line 4609
    .end local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v16    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-direct/range {p0 .. p2}, Landroid/media/ExifInterface;->retrieveJpegImageSize(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4611
    :goto_db
    return-void
.end method

.method private blacklist validateImages()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4503
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 4504
    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 4505
    invoke-direct {p0, v1, v2}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 4511
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 4512
    const-string v5, "PixelXDimension"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 4513
    .local v3, "pixelXDimAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    .line 4514
    const-string v5, "PixelYDimension"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 4515
    .local v4, "pixelYDimAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v3, :cond_3b

    if-eqz v4, :cond_3b

    .line 4516
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4517
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4522
    :cond_3b
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 4523
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v1

    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 4524
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v7, v1

    aput-object v8, v7, v2

    .line 4525
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    aput-object v8, v7, v1

    .line 4530
    :cond_5c
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v2

    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v7

    if-nez v7, :cond_6d

    .line 4531
    const-string v7, "ExifInterface"

    const-string v8, "No image meets the size requirements of a thumbnail image."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4535
    :cond_6d
    const-string v7, "ThumbnailOrientation"

    const-string v8, "Orientation"

    invoke-direct {p0, v0, v7, v8}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4536
    const-string v9, "ThumbnailImageLength"

    invoke-direct {p0, v0, v9, v5}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4537
    const-string v10, "ThumbnailImageWidth"

    invoke-direct {p0, v0, v10, v6}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4538
    invoke-direct {p0, v1, v7, v8}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4539
    invoke-direct {p0, v1, v9, v5}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4540
    invoke-direct {p0, v1, v10, v6}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4541
    invoke-direct {p0, v2, v8, v7}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4542
    invoke-direct {p0, v2, v5, v9}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4543
    invoke-direct {p0, v2, v6, v10}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4544
    return-void
.end method

.method private blacklist writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I
    .registers 19
    .param p1, "dataOutputStream"    # Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4616
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v2

    new-array v3, v3, [I

    .line 4617
    .local v3, "ifdOffsets":[I
    array-length v2, v2

    new-array v2, v2, [I

    .line 4620
    .local v2, "ifdDataSizes":[I
    sget-object v4, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v5, :cond_1c

    aget-object v8, v4, v7

    .line 4621
    .local v8, "tag":Landroid/media/ExifInterface$ExifTag;
    iget-object v9, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v9}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 4620
    .end local v8    # "tag":Landroid/media/ExifInterface$ExifTag;
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 4624
    :cond_1c
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const-string v5, "StripByteCounts"

    const-string v7, "JPEGInterchangeFormatLength"

    const-string v8, "StripOffsets"

    const-string v9, "JPEGInterchangeFormat"

    if-eqz v4, :cond_39

    .line 4625
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v4, :cond_33

    .line 4626
    invoke-direct {v0, v8}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 4627
    invoke-direct {v0, v5}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    goto :goto_39

    .line 4629
    :cond_33
    invoke-direct {v0, v9}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 4630
    invoke-direct {v0, v7}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 4635
    :cond_39
    :goto_39
    const/4 v4, 0x0

    .local v4, "ifdType":I
    :goto_3a
    sget-object v10, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v10, v10

    if-ge v4, v10, :cond_6b

    .line 4636
    iget-object v10, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_4d
    if-ge v12, v11, :cond_68

    aget-object v13, v10, v12

    .line 4637
    .local v13, "obj":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Ljava/util/Map$Entry;

    .line 4638
    .local v14, "entry":Ljava/util/Map$Entry;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_65

    .line 4639
    iget-object v15, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v15, v15, v4

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4636
    .end local v13    # "obj":Ljava/lang/Object;
    .end local v14    # "entry":Ljava/util/Map$Entry;
    :cond_65
    add-int/lit8 v12, v12, 0x1

    goto :goto_4d

    .line 4635
    :cond_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 4646
    .end local v4    # "ifdType":I
    :cond_6b
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const-wide/16 v10, 0x0

    if-nez v4, :cond_8c

    .line 4647
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v12, 0x0

    aget-object v4, v4, v12

    sget-object v12, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v12, v12, v6

    iget-object v12, v12, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4648
    invoke-static {v10, v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 4647
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4650
    :cond_8c
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v12, 0x2

    aget-object v4, v4, v12

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ab

    .line 4651
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v4, v4, v13

    sget-object v13, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v13, v13, v12

    iget-object v13, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4652
    invoke-static {v10, v11, v14}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 4651
    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4654
    :cond_ab
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x3

    aget-object v4, v4, v13

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c9

    .line 4655
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v14, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v14, v14, v13

    iget-object v14, v14, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4656
    invoke-static {v10, v11, v15}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v15

    .line 4655
    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4658
    :cond_c9
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v14, 0x4

    if-eqz v4, :cond_10d

    .line 4659
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v4, :cond_f0

    .line 4660
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4661
    const/4 v15, 0x0

    invoke-static {v15, v7}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 4660
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4662
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget v7, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4663
    invoke-static {v7, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 4662
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10d

    .line 4665
    :cond_f0
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4666
    invoke-static {v10, v11, v5}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 4665
    invoke-virtual {v4, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4667
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget v5, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    int-to-long v10, v5

    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4668
    invoke-static {v10, v11, v5}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 4667
    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4674
    :cond_10d
    :goto_10d
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10e
    sget-object v5, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v5, v5

    if-ge v4, v5, :cond_142

    .line 4675
    const/4 v5, 0x0

    .line 4676
    .local v5, "sum":I
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_120
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 4677
    .local v10, "entry":Ljava/util/Map$Entry;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/ExifInterface$ExifAttribute;

    .line 4678
    .local v11, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-virtual {v11}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v15

    .line 4679
    .local v15, "size":I
    if-le v15, v14, :cond_139

    .line 4680
    add-int/2addr v5, v15

    .line 4682
    .end local v10    # "entry":Ljava/util/Map$Entry;
    .end local v11    # "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v15    # "size":I
    :cond_139
    goto :goto_120

    .line 4683
    :cond_13a
    aget v7, v2, v4

    add-int/2addr v7, v5

    aput v7, v2, v4

    .line 4674
    .end local v5    # "sum":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_10e

    .line 4689
    .end local v4    # "i":I
    :cond_142
    const/16 v4, 0x8

    .line 4690
    .local v4, "position":I
    const/4 v5, 0x0

    .local v5, "ifdType":I
    :goto_145
    sget-object v7, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v5, v7, :cond_169

    .line 4691
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_166

    .line 4692
    aput v4, v3, v5

    .line 4693
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0xc

    add-int/2addr v7, v12

    add-int/2addr v7, v14

    aget v10, v2, v5

    add-int/2addr v7, v10

    add-int/2addr v4, v7

    .line 4690
    :cond_166
    add-int/lit8 v5, v5, 0x1

    goto :goto_145

    .line 4696
    .end local v5    # "ifdType":I
    :cond_169
    iget-boolean v5, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v5, :cond_196

    .line 4697
    move v5, v4

    .line 4698
    .local v5, "thumbnailOffset":I
    iget-boolean v7, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v7, :cond_180

    .line 4699
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v14

    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4700
    invoke-static {v5, v9}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4699
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18e

    .line 4702
    :cond_180
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v14

    int-to-long v10, v5

    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4703
    invoke-static {v10, v11, v8}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 4702
    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4706
    :goto_18e
    iget v7, v0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v7, v5

    iput v7, v0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 4707
    iget v7, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    add-int/2addr v4, v7

    .line 4710
    .end local v5    # "thumbnailOffset":I
    :cond_196
    move v5, v4

    .line 4711
    .local v5, "totalSize":I
    iget v7, v0, Landroid/media/ExifInterface;->mMimeType:I

    if-ne v7, v14, :cond_19d

    .line 4713
    add-int/lit8 v5, v5, 0x8

    .line 4715
    :cond_19d
    sget-boolean v7, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v7, :cond_1e3

    .line 4716
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1a2
    sget-object v8, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v7, v8, :cond_1e3

    .line 4717
    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    .line 4718
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    aget v9, v3, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v9, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    aget v9, v2, v7

    .line 4719
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v14

    .line 4717
    const-string v9, "index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ExifInterface"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4716
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a2

    .line 4724
    .end local v7    # "i":I
    :cond_1e3
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_204

    .line 4725
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sget-object v8, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v8, v8, v6

    iget-object v8, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v9, v3, v6

    int-to-long v9, v9

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4726
    invoke-static {v9, v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4725
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4728
    :cond_204
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v12

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_225

    .line 4729
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sget-object v8, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v8, v8, v12

    iget-object v8, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v9, v3, v12

    int-to-long v9, v9

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4730
    invoke-static {v9, v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4729
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4732
    :cond_225
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v13

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_245

    .line 4733
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    sget-object v8, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v8, v8, v13

    iget-object v8, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v9, v3, v13

    int-to-long v9, v9

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4737
    :cond_245
    iget v7, v0, Landroid/media/ExifInterface;->mMimeType:I

    sparse-switch v7, :sswitch_data_384

    goto :goto_266

    .line 4750
    :sswitch_24b
    sget-object v7, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4751
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_266

    .line 4745
    :sswitch_254
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 4746
    sget-object v7, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4747
    goto :goto_266

    .line 4740
    :sswitch_25d
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4741
    sget-object v7, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4742
    nop

    .line 4756
    :goto_266
    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v7, v8, :cond_26f

    .line 4757
    const/16 v7, 0x4d4d

    goto :goto_271

    :cond_26f
    const/16 v7, 0x4949

    .line 4756
    :goto_271
    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 4758
    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4759
    const/16 v7, 0x2a

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4760
    const-wide/16 v7, 0x8

    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 4763
    const/4 v7, 0x0

    .local v7, "ifdType":I
    :goto_284
    sget-object v8, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v7, v8, :cond_363

    .line 4764
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_35a

    .line 4767
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4770
    aget v8, v3, v7

    add-int/2addr v8, v12

    iget-object v9, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0xc

    add-int/2addr v8, v9

    add-int/2addr v8, v14

    .line 4771
    .local v8, "dataOffset":I
    iget-object v9, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2b9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_311

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 4773
    .restart local v10    # "entry":Ljava/util/Map$Entry;
    sget-object v11, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v11, v11, v7

    .line 4774
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/ExifInterface$ExifTag;

    .line 4775
    .local v11, "tag":Landroid/media/ExifInterface$ExifTag;
    iget v13, v11, Landroid/media/ExifInterface$ExifTag;->number:I

    .line 4776
    .local v13, "tagNumber":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/ExifInterface$ExifAttribute;

    .line 4777
    .local v15, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-virtual {v15}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v12

    .line 4779
    .local v12, "size":I
    invoke-virtual {v1, v13}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4780
    iget v6, v15, Landroid/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4781
    iget v6, v15, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 4782
    if-le v12, v14, :cond_2f6

    .line 4783
    move-object/from16 v16, v15

    .end local v15    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .local v16, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    int-to-long v14, v8

    invoke-virtual {v1, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 4784
    add-int/2addr v8, v12

    goto :goto_30d

    .line 4786
    .end local v16    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v15    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_2f6
    move-object/from16 v16, v15

    .end local v15    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v16    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v14, v16

    .end local v16    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .local v14, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v15, v14, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {v1, v15}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4788
    const/4 v6, 0x4

    if-ge v12, v6, :cond_30d

    .line 4789
    move v15, v12

    .local v15, "i":I
    :goto_303
    if-ge v15, v6, :cond_30d

    .line 4790
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 4789
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x4

    goto :goto_303

    .line 4794
    .end local v10    # "entry":Ljava/util/Map$Entry;
    .end local v11    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v12    # "size":I
    .end local v13    # "tagNumber":I
    .end local v14    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v15    # "i":I
    :cond_30d
    :goto_30d
    const/4 v6, 0x1

    const/4 v12, 0x2

    const/4 v14, 0x4

    goto :goto_2b9

    .line 4799
    :cond_311
    if-nez v7, :cond_327

    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x4

    aget-object v6, v6, v9

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_327

    .line 4800
    aget v10, v3, v9

    int-to-long v9, v10

    invoke-virtual {v1, v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const-wide/16 v9, 0x0

    goto :goto_32c

    .line 4802
    :cond_327
    const-wide/16 v9, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 4806
    :goto_32c
    iget-object v11, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_338
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_35c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 4807
    .local v12, "entry":Ljava/util/Map$Entry;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/ExifInterface$ExifAttribute;

    .line 4809
    .local v13, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v14, v13, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v14, v14

    const/4 v6, 0x4

    if-le v14, v6, :cond_359

    .line 4810
    iget-object v14, v13, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    iget-object v15, v13, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v15, v15

    const/4 v6, 0x0

    invoke-virtual {v1, v14, v6, v15}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 4812
    .end local v12    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_359
    goto :goto_338

    .line 4764
    .end local v8    # "dataOffset":I
    :cond_35a
    const-wide/16 v9, 0x0

    .line 4763
    :cond_35c
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    const/4 v12, 0x2

    const/4 v14, 0x4

    goto/16 :goto_284

    .line 4817
    .end local v7    # "ifdType":I
    :cond_363
    iget-boolean v6, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v6, :cond_36e

    .line 4818
    invoke-virtual/range {p0 .. p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4822
    :cond_36e
    iget v6, v0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v7, 0xe

    if-ne v6, v7, :cond_37d

    rem-int/lit8 v6, v5, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_37d

    .line 4823
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 4827
    :cond_37d
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4829
    return v5

    nop

    :sswitch_data_384
    .sparse-switch
        0x4 -> :sswitch_25d
        0xd -> :sswitch_254
        0xe -> :sswitch_24b
    .end sparse-switch
.end method


# virtual methods
.method public whitelist getAltitude(D)D
    .registers 9
    .param p1, "defaultValue"    # D

    .line 2433
    const-string v0, "GPSAltitude"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 2434
    .local v0, "altitude":D
    const-string v2, "GPSAltitudeRef"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 2436
    .local v2, "ref":I
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1f

    if-ltz v2, :cond_1f

    .line 2437
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1b

    goto :goto_1c

    :cond_1b
    move v3, v4

    :goto_1c
    int-to-double v3, v3

    mul-double/2addr v3, v0

    return-wide v3

    .line 2439
    :cond_1f
    return-wide p1
.end method

.method public whitelist getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;

    .line 1704
    if-eqz p1, :cond_89

    .line 1707
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 1708
    .local v0, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    const/4 v1, 0x0

    if-eqz v0, :cond_88

    .line 1709
    sget-object v2, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1710
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1712
    :cond_18
    const-string v2, "GPSTimeStamp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 1714
    iget v2, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2c

    iget v2, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2c

    .line 1716
    return-object v1

    .line 1718
    :cond_2c
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/ExifInterface$Rational;

    .line 1719
    .local v2, "array":[Landroid/media/ExifInterface$Rational;
    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_39

    .line 1720
    return-object v1

    .line 1722
    :cond_39
    new-array v1, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v4, v4

    aget-object v5, v2, v3

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 1723
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aget-object v4, v2, v3

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v4, v4

    aget-object v5, v2, v3

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 1724
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aget-object v4, v2, v3

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v4, v4

    aget-object v5, v2, v3

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 1725
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1722
    const-string v3, "%02d:%02d:%02d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1728
    .end local v2    # "array":[Landroid/media/ExifInterface$Rational;
    :cond_7b
    :try_start_7b
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_85} :catch_86

    return-object v1

    .line 1729
    :catch_86
    move-exception v2

    .line 1730
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-object v1

    .line 1733
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_88
    return-object v1

    .line 1705
    .end local v0    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributeBytes(Ljava/lang/String;)[B
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 2391
    if-eqz p1, :cond_d

    .line 2394
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 2395
    .local v0, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_b

    .line 2396
    iget-object v1, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    return-object v1

    .line 2398
    :cond_b
    const/4 v1, 0x0

    return-object v1

    .line 2392
    .end local v0    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributeDouble(Ljava/lang/String;D)D
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 1769
    if-eqz p1, :cond_12

    .line 1772
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 1773
    .local v0, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-nez v0, :cond_9

    .line 1774
    return-wide p2

    .line 1778
    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v1
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_f} :catch_10

    return-wide v1

    .line 1779
    :catch_10
    move-exception v1

    .line 1780
    .local v1, "e":Ljava/lang/NumberFormatException;
    return-wide p2

    .line 1770
    .end local v0    # "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributeInt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 1745
    if-eqz p1, :cond_12

    .line 1748
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 1749
    .local v0, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-nez v0, :cond_9

    .line 1750
    return p2

    .line 1754
    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_f} :catch_10

    return v1

    .line 1755
    :catch_10
    move-exception v1

    .line 1756
    .local v1, "e":Ljava/lang/NumberFormatException;
    return p2

    .line 1746
    .end local v0    # "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributeRange(Ljava/lang/String;)[J
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;

    .line 2367
    if-eqz p1, :cond_26

    .line 2370
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mModified:Z

    if-nez v0, :cond_1e

    .line 2375
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 2376
    .local v0, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_1c

    .line 2377
    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytesOffset:J

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v3, v3

    int-to-long v3, v3

    aput-wide v3, v1, v2

    return-object v1

    .line 2379
    :cond_1c
    const/4 v1, 0x0

    return-object v1

    .line 2371
    .end local v0    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The underlying file has been modified since being parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2368
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDateTime()J
    .registers 4

    .line 2447
    const-string v0, "DateTime"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2448
    const-string v1, "SubSecTime"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2449
    const-string v2, "OffsetTime"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2447
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getDateTimeDigitized()J
    .registers 4

    .line 2456
    const-string v0, "DateTimeDigitized"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2457
    const-string v1, "SubSecTimeDigitized"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2458
    const-string v2, "OffsetTimeDigitized"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2456
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getDateTimeOriginal()J
    .registers 4

    .line 2465
    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2466
    const-string v1, "SubSecTimeOriginal"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2467
    const-string v2, "OffsetTimeOriginal"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2465
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getGpsDateTime()J
    .registers 9

    .line 2517
    const-string v0, "GPSDateStamp"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2518
    .local v0, "date":Ljava/lang/String;
    const-string v1, "GPSTimeStamp"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2519
    .local v1, "time":Ljava/lang/String;
    const-wide/16 v2, -0x1

    if-eqz v0, :cond_5d

    if-eqz v1, :cond_5d

    sget-object v4, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 2520
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_29

    .line 2521
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_5d

    .line 2525
    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2527
    .local v4, "dateTimeString":Ljava/lang/String;
    new-instance v5, Ljava/text/ParsePosition;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2530
    .local v5, "pos":Ljava/text/ParsePosition;
    :try_start_46
    sget-object v6, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    monitor-enter v6
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_49} :catch_5b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_46 .. :try_end_49} :catch_5b

    .line 2531
    :try_start_49
    sget-object v7, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v7

    .line 2532
    .local v7, "datetime":Ljava/util/Date;
    monitor-exit v6
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_58

    .line 2533
    if-nez v7, :cond_53

    return-wide v2

    .line 2534
    :cond_53
    :try_start_53
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_57
    .catch Ljava/lang/IllegalArgumentException; {:try_start_53 .. :try_end_57} :catch_5b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_53 .. :try_end_57} :catch_5b

    return-wide v2

    .line 2532
    .end local v7    # "datetime":Ljava/util/Date;
    :catchall_58
    move-exception v7

    :try_start_59
    monitor-exit v6
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "time":Ljava/lang/String;
    .end local v4    # "dateTimeString":Ljava/lang/String;
    .end local v5    # "pos":Ljava/text/ParsePosition;
    .end local p0    # "this":Landroid/media/ExifInterface;
    :try_start_5a
    throw v7
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_5b} :catch_5b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5a .. :try_end_5b} :catch_5b

    .line 2535
    .restart local v0    # "date":Ljava/lang/String;
    .restart local v1    # "time":Ljava/lang/String;
    .restart local v4    # "dateTimeString":Ljava/lang/String;
    .restart local v5    # "pos":Ljava/text/ParsePosition;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :catch_5b
    move-exception v6

    .line 2536
    .local v6, "e":Ljava/lang/RuntimeException;
    return-wide v2

    .line 2522
    .end local v4    # "dateTimeString":Ljava/lang/String;
    .end local v5    # "pos":Ljava/text/ParsePosition;
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_5d
    :goto_5d
    return-wide v2
.end method

.method public whitelist getLatLong([F)Z
    .registers 9
    .param p1, "output"    # [F

    .line 2408
    const-string v0, "GPSLatitude"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2409
    .local v0, "latValue":Ljava/lang/String;
    const-string v1, "GPSLatitudeRef"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2410
    .local v1, "latRef":Ljava/lang/String;
    const-string v2, "GPSLongitude"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2411
    .local v2, "lngValue":Ljava/lang/String;
    const-string v3, "GPSLongitudeRef"

    invoke-virtual {p0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2413
    .local v3, "lngRef":Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz v0, :cond_30

    if-eqz v1, :cond_30

    if-eqz v2, :cond_30

    if-eqz v3, :cond_30

    .line 2415
    :try_start_21
    invoke-static {v0, v1}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    aput v5, p1, v4

    .line 2416
    invoke-static {v2, v3}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x1

    aput v5, p1, v6
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_2e} :catch_2f

    .line 2417
    return v6

    .line 2418
    :catch_2f
    move-exception v5

    .line 2423
    :cond_30
    return v4
.end method

.method public whitelist getThumbnail()[B
    .registers 3

    .line 2217
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_b

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    goto :goto_b

    .line 2220
    :cond_9
    const/4 v0, 0x0

    return-object v0

    .line 2218
    :cond_b
    :goto_b
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getThumbnailBitmap()Landroid/graphics/Bitmap;
    .registers 9

    .line 2285
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2286
    return-object v1

    .line 2287
    :cond_6
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-nez v0, :cond_10

    .line 2288
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 2291
    :cond_10
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_76

    const/4 v2, 0x7

    if-ne v0, v2, :cond_19

    goto :goto_76

    .line 2293
    :cond_19
    const/4 v2, 0x1

    if-ne v0, v2, :cond_75

    .line 2294
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    .line 2295
    .local v0, "rgbValues":[I
    const/4 v3, 0x0

    .line 2296
    .local v3, "alpha":B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    array-length v5, v0

    if-ge v4, v5, :cond_45

    .line 2297
    iget-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v6, v4, 0x3

    aget-byte v6, v5, v6

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v3

    mul-int/lit8 v7, v4, 0x3

    add-int/2addr v7, v2

    aget-byte v7, v5, v7

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    mul-int/lit8 v7, v4, 0x3

    add-int/lit8 v7, v7, 0x2

    aget-byte v5, v5, v7

    add-int/2addr v6, v5

    aput v6, v0, v4

    .line 2296
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 2301
    .end local v4    # "i":I
    :cond_45
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x4

    aget-object v2, v2, v4

    .line 2302
    const-string v5, "ThumbnailImageLength"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 2303
    .local v2, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    .line 2304
    const-string v5, "ThumbnailImageWidth"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 2305
    .local v4, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_75

    if-eqz v4, :cond_75

    .line 2306
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 2307
    .local v1, "imageLength":I
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    .line 2308
    .local v5, "imageWidth":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 2312
    .end local v0    # "rgbValues":[I
    .end local v1    # "imageLength":I
    .end local v2    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "alpha":B
    .end local v4    # "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "imageWidth":I
    :cond_75
    return-object v1

    .line 2292
    :cond_76
    :goto_76
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getThumbnailBytes()[B
    .registers 9

    .line 2228
    const-string v0, "ExifInterface"

    iget-boolean v1, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8

    .line 2229
    return-object v2

    .line 2231
    :cond_8
    iget-object v1, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-eqz v1, :cond_d

    .line 2232
    return-object v1

    .line 2236
    :cond_d
    const/4 v1, 0x0

    .line 2237
    .local v1, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 2239
    .local v3, "newFileDescriptor":Ljava/io/FileDescriptor;
    :try_start_f
    iget-object v4, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v4, :cond_2d

    .line 2240
    move-object v1, v4

    .line 2241
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2242
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    goto :goto_50

    .line 2244
    :cond_1e
    const-string v4, "Cannot read thumbnail from inputstream without mark/reset support"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_23} :catch_8e
    .catch Landroid/system/ErrnoException; {:try_start_f .. :try_end_23} :catch_8e
    .catchall {:try_start_f .. :try_end_23} :catchall_8c

    .line 2245
    nop

    .line 2272
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2273
    if-eqz v3, :cond_2c

    .line 2274
    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2245
    :cond_2c
    return-object v2

    .line 2247
    :cond_2d
    :try_start_2d
    iget-object v4, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v4, :cond_3a

    .line 2248
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_50

    .line 2249
    :cond_3a
    iget-object v4, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_50

    .line 2250
    invoke-static {v4}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v3, v4

    .line 2251
    const-wide/16 v4, 0x0

    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 2252
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v4

    .line 2254
    :cond_50
    :goto_50
    if-eqz v1, :cond_86

    .line 2258
    iget v4, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    iget v6, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_5b} :catch_8e
    .catch Landroid/system/ErrnoException; {:try_start_2d .. :try_end_5b} :catch_8e
    .catchall {:try_start_2d .. :try_end_5b} :catchall_8c

    int-to-long v6, v6

    cmp-long v4, v4, v6

    const-string v5, "Corrupted image"

    if-nez v4, :cond_80

    .line 2262
    :try_start_62
    iget v4, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    new-array v4, v4, [B

    .line 2263
    .local v4, "buffer":[B
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    iget v7, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    if-ne v6, v7, :cond_7a

    .line 2266
    iput-object v4, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_70} :catch_8e
    .catch Landroid/system/ErrnoException; {:try_start_62 .. :try_end_70} :catch_8e
    .catchall {:try_start_62 .. :try_end_70} :catchall_8c

    .line 2267
    nop

    .line 2272
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2273
    if-eqz v3, :cond_79

    .line 2274
    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2267
    :cond_79
    return-object v4

    .line 2264
    :cond_7a
    :try_start_7a
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v6

    .line 2259
    .end local v4    # "buffer":[B
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :cond_80
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v4

    .line 2256
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :cond_86
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v4
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_8c} :catch_8e
    .catch Landroid/system/ErrnoException; {:try_start_7a .. :try_end_8c} :catch_8e
    .catchall {:try_start_7a .. :try_end_8c} :catchall_8c

    .line 2272
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :catchall_8c
    move-exception v0

    goto :goto_9e

    .line 2268
    :catch_8e
    move-exception v4

    .line 2270
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8f
    const-string v5, "Encountered exception while getting thumbnail"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_8c

    .line 2272
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2273
    if-eqz v3, :cond_9d

    .line 2274
    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2277
    :cond_9d
    return-object v2

    .line 2272
    :goto_9e
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2273
    if-eqz v3, :cond_a6

    .line 2274
    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2276
    :cond_a6
    throw v0
.end method

.method public whitelist getThumbnailRange()[J
    .registers 5

    .line 2342
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mModified:Z

    if-nez v0, :cond_23

    .line 2347
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 2348
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-nez v0, :cond_12

    .line 2349
    return-object v1

    .line 2351
    :cond_12
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    return-object v0

    .line 2353
    :cond_22
    return-object v1

    .line 2343
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The underlying file has been modified since being parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist hasAttribute(Ljava/lang/String;)Z
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 2207
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasThumbnail()Z
    .registers 2

    .line 2198
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public whitelist isThumbnailCompressed()Z
    .registers 4

    .line 2320
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2321
    return v1

    .line 2323
    :cond_6
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_10

    const/4 v2, 0x7

    if-ne v0, v2, :cond_f

    goto :goto_10

    .line 2326
    :cond_f
    return v1

    .line 2324
    :cond_10
    :goto_10
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist saveAttributes()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2099
    invoke-direct {p0}, Landroid/media/ExifInterface;->isSupportedFormatForSavingAttributes()Z

    move-result v0

    if-eqz v0, :cond_152

    .line 2103
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    if-nez v0, :cond_14a

    iget-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_14a

    .line 2107
    :cond_12
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v0, :cond_1f

    goto :goto_27

    .line 2108
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes when the image file has non-consecutive thumbnail strips"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2114
    :cond_27
    :goto_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/ExifInterface;->mModified:Z

    .line 2117
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 2119
    const/4 v0, 0x0

    .line 2120
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 2121
    .local v1, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 2124
    .local v2, "tempFile":Ljava/io/File;
    :try_start_33
    const-string v3, "temp"

    const-string v4, "tmp"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object v2, v3

    .line 2125
    iget-object v3, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_4b

    .line 2126
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_5c

    .line 2127
    :cond_4b
    iget-object v3, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_5c

    .line 2128
    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 2129
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v3

    .line 2131
    :cond_5c
    :goto_5c
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 2132
    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_65} :catch_13a
    .catchall {:try_start_33 .. :try_end_65} :catchall_138

    .line 2136
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2137
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2138
    nop

    .line 2140
    const/4 v0, 0x0

    .line 2141
    const/4 v1, 0x0

    .line 2144
    :try_start_6e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 2145
    iget-object v3, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v3, :cond_81

    .line 2146
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_92

    .line 2147
    :cond_81
    iget-object v3, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_92

    .line 2148
    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 2149
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v3

    .line 2151
    :cond_92
    :goto_92
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_97} :catch_ee
    .catchall {:try_start_6e .. :try_end_97} :catchall_ec

    .line 2152
    .local v3, "bufferedIn":Ljava/io/BufferedInputStream;
    :try_start_97
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_e2

    .line 2153
    .local v6, "bufferedOut":Ljava/io/BufferedOutputStream;
    :try_start_9c
    iget v7, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_a5

    .line 2154
    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_c4

    .line 2155
    :cond_a5
    const/16 v8, 0xd

    if-ne v7, v8, :cond_ad

    .line 2156
    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_c4

    .line 2157
    :cond_ad
    const/16 v8, 0xe

    if-ne v7, v8, :cond_b5

    .line 2158
    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_c4

    .line 2159
    :cond_b5
    const/4 v8, 0x3

    if-eq v7, v8, :cond_ba

    if-nez v7, :cond_c4

    .line 2160
    :cond_ba
    new-instance v7, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v7, v6, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 2162
    .local v7, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I
    :try_end_c4
    .catchall {:try_start_9c .. :try_end_c4} :catchall_d8

    .line 2164
    .end local v7    # "dataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    :cond_c4
    :goto_c4
    :try_start_c4
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_e2

    .end local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    :try_start_c7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ca} :catch_ee
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_ec

    .line 2185
    .end local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2186
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2187
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2188
    nop

    .line 2191
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 2192
    return-void

    .line 2151
    .restart local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .restart local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    :catchall_d8
    move-exception v7

    :try_start_d9
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_dd

    goto :goto_e1

    :catchall_dd
    move-exception v8

    :try_start_de
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    :goto_e1
    throw v7
    :try_end_e2
    .catchall {:try_start_de .. :try_end_e2} :catchall_e2

    .end local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :catchall_e2
    move-exception v6

    :try_start_e3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_e7

    goto :goto_eb

    :catchall_e7
    move-exception v7

    :try_start_e8
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local p0    # "this":Landroid/media/ExifInterface;
    :goto_eb
    throw v6
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_ec} :catch_ee
    .catchall {:try_start_e8 .. :try_end_ec} :catchall_ec

    .line 2185
    .end local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :catchall_ec
    move-exception v3

    goto :goto_12e

    .line 2165
    :catch_ee
    move-exception v3

    .line 2167
    .local v3, "e":Ljava/lang/Exception;
    :try_start_ef
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v6

    .line 2168
    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v6, :cond_115

    .line 2170
    iget-object v6, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;
    :try_end_fb
    .catchall {:try_start_ef .. :try_end_fb} :catchall_ec

    if-eqz v6, :cond_11d

    .line 2172
    :try_start_fd
    sget v7, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v6, v4, v5, v7}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_102
    .catch Landroid/system/ErrnoException; {:try_start_fd .. :try_end_102} :catch_10c
    .catchall {:try_start_fd .. :try_end_102} :catchall_ec

    .line 2177
    nop

    .line 2178
    :try_start_103
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v4

    goto :goto_11d

    .line 2173
    :catch_10c
    move-exception v4

    .line 2174
    .local v4, "exception":Landroid/system/ErrnoException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to save new file. Original file may be corrupted since error occurred while trying to restore it."

    invoke-direct {v5, v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v5

    .line 2169
    .end local v4    # "exception":Landroid/system/ErrnoException;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :cond_115
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 2180
    :cond_11d
    :goto_11d
    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 2181
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2182
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2183
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to save new file"

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v4
    :try_end_12e
    .catchall {:try_start_103 .. :try_end_12e} :catchall_ec

    .line 2185
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :goto_12e
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2186
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2187
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2188
    throw v3

    .line 2136
    :catchall_138
    move-exception v3

    goto :goto_143

    .line 2133
    :catch_13a
    move-exception v3

    .line 2134
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_13b
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to copy original file to temp file"

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v4
    :try_end_143
    .catchall {:try_start_13b .. :try_end_143} :catchall_138

    .line 2136
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :goto_143
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2137
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2138
    throw v3

    .line 2104
    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    :cond_14a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2100
    :cond_152
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface only supports saving attributes for JPEG, PNG, WebP, and DNG formats."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 29
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1791
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_394

    .line 1795
    const/4 v0, 0x2

    const-string v4, "ExifInterface"

    const/4 v5, 0x1

    if-eqz v3, :cond_c8

    sget-object v6, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c8

    .line 1796
    const-string v6, "GPSTimeStamp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, " : "

    const-string v8, "Invalid value for "

    if-eqz v6, :cond_8a

    .line 1797
    sget-object v6, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1798
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_4b

    .line 1799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    return-void

    .line 1802
    :cond_4b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/1,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    .line 1803
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1804
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local p2    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    goto :goto_c8

    .line 1806
    .end local v3    # "value":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :cond_8a
    :try_start_8a
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 1807
    .local v9, "doubleValue":D
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v11, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v11, v9

    double-to-long v11, v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "/10000"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_a8
    .catch Ljava/lang/NumberFormatException; {:try_start_8a .. :try_end_a8} :catch_aa

    move-object v3, v6

    .line 1811
    .end local v9    # "doubleValue":D
    .end local p2    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_c8

    .line 1808
    .end local v3    # "value":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :catch_aa
    move-exception v0

    .line 1809
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    return-void

    .line 1815
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local p2    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_c8
    :goto_c8
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_c9
    sget-object v7, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v6, v7, :cond_393

    .line 1816
    const/4 v7, 0x4

    if-ne v6, v7, :cond_db

    iget-boolean v7, v1, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v7, :cond_db

    .line 1817
    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_38c

    .line 1819
    :cond_db
    sget-object v7, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1820
    .local v7, "obj":Ljava/lang/Object;
    if-eqz v7, :cond_386

    .line 1821
    if-nez v3, :cond_f4

    .line 1822
    iget-object v8, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v6

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_38c

    .line 1825
    :cond_f4
    move-object v8, v7

    check-cast v8, Landroid/media/ExifInterface$ExifTag;

    .line 1826
    .local v8, "exifTag":Landroid/media/ExifInterface$ExifTag;
    invoke-static {v3}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 1828
    .local v9, "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v10, v11, :cond_1e5

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_115

    goto/16 :goto_1e5

    .line 1830
    :cond_115
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_136

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v10, v12, :cond_132

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    .line 1831
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v10, v12, :cond_136

    .line 1832
    :cond_132
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    .local v10, "dataFormat":I
    goto/16 :goto_1e7

    .line 1833
    .end local v10    # "dataFormat":I
    :cond_136
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    if-eq v10, v5, :cond_1e2

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v12, 0x7

    if-eq v10, v12, :cond_1e2

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    if-ne v10, v0, :cond_145

    goto/16 :goto_1e2

    .line 1838
    :cond_145
    sget-boolean v10, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v10, :cond_1dc

    .line 1839
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Given tag ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ") value didn\'t match with one of expected formats: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v13, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v13, v12, v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1842
    iget v13, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const-string v14, ""

    const-string v15, ", "

    if-ne v13, v11, :cond_172

    move-object v0, v14

    goto :goto_187

    .line 1843
    :cond_172
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v0, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v0, v12, v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_187
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " (guess: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    .line 1844
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v10, v12, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v11, :cond_1aa

    goto :goto_1c5

    .line 1845
    :cond_1aa
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v12, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_1c5
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ")"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1839
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_38c

    .line 1838
    :cond_1dc
    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_38c

    .line 1836
    :cond_1e2
    :goto_1e2
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .restart local v10    # "dataFormat":I
    goto :goto_1e7

    .line 1829
    .end local v10    # "dataFormat":I
    :cond_1e5
    :goto_1e5
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 1849
    .restart local v10    # "dataFormat":I
    :goto_1e7
    const/4 v0, 0x0

    const-string v11, "/"

    const-string v12, ","

    packed-switch v10, :pswitch_data_39c

    .line 1924
    :pswitch_1ef
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .local v23, "obj":Ljava/lang/Object;
    .local v24, "i":I
    .local v25, "exifTag":Landroid/media/ExifInterface$ExifTag;
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_38c

    .line 1925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data format isn\'t one of expected formats: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38c

    .line 1914
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v24    # "i":I
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v6    # "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    :pswitch_213
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1915
    .local v0, "values":[Ljava/lang/String;
    array-length v11, v0

    new-array v11, v11, [D

    .line 1916
    .local v11, "doubleArray":[D
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_21b
    array-length v13, v0

    if-ge v12, v13, :cond_229

    .line 1917
    aget-object v13, v0, v12

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    aput-wide v13, v11, v12

    .line 1916
    add-int/lit8 v12, v12, 0x1

    goto :goto_21b

    .line 1919
    .end local v12    # "j":I
    :cond_229
    iget-object v12, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v6

    iget-object v13, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1920
    invoke-static {v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 1919
    invoke-virtual {v12, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1921
    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_38c

    .line 1902
    .end local v0    # "values":[Ljava/lang/String;
    .end local v11    # "doubleArray":[D
    :pswitch_23c
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1903
    .local v12, "values":[Ljava/lang/String;
    array-length v13, v12

    new-array v13, v13, [Landroid/media/ExifInterface$Rational;

    .line 1904
    .local v13, "rationalArray":[Landroid/media/ExifInterface$Rational;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_244
    array-length v15, v12

    if-ge v14, v15, :cond_275

    .line 1905
    aget-object v15, v12, v14

    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1906
    .local v15, "numbers":[Ljava/lang/String;
    new-instance v22, Landroid/media/ExifInterface$Rational;

    aget-object v16, v15, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    aget-object v16, v15, v5

    .line 1907
    move/from16 v24, v6

    .end local v6    # "i":I
    .restart local v24    # "i":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-long v5, v5

    const/16 v21, 0x0

    move-object/from16 v16, v22

    move-wide/from16 v17, v0

    move-wide/from16 v19, v5

    invoke-direct/range {v16 .. v21}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational-IA;)V

    aput-object v22, v13, v14

    .line 1904
    .end local v15    # "numbers":[Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v6, v24

    goto :goto_244

    .end local v24    # "i":I
    .restart local v6    # "i":I
    :cond_275
    move/from16 v24, v6

    .line 1909
    .end local v6    # "i":I
    .end local v14    # "j":I
    .restart local v24    # "i":I
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v24

    iget-object v5, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1910
    invoke-static {v13, v5}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 1909
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1911
    const/16 v22, 0x1

    goto/16 :goto_38c

    .line 1870
    .end local v12    # "values":[Ljava/lang/String;
    .end local v13    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    .end local v24    # "i":I
    .restart local v6    # "i":I
    :pswitch_28a
    move/from16 v24, v6

    .end local v6    # "i":I
    .restart local v24    # "i":I
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1871
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [I

    .line 1872
    .local v5, "intArray":[I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_294
    array-length v11, v0

    if-ge v6, v11, :cond_2a2

    .line 1873
    aget-object v11, v0, v6

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v5, v6

    .line 1872
    add-int/lit8 v6, v6, 0x1

    goto :goto_294

    .line 1875
    .end local v6    # "j":I
    :cond_2a2
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v24

    iget-object v11, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1876
    invoke-static {v5, v11}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 1875
    invoke-virtual {v6, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1877
    const/16 v22, 0x1

    goto/16 :goto_38c

    .line 1890
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "intArray":[I
    .end local v24    # "i":I
    .local v6, "i":I
    :pswitch_2b3
    move/from16 v24, v6

    .end local v6    # "i":I
    .restart local v24    # "i":I
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1891
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [Landroid/media/ExifInterface$Rational;

    .line 1892
    .local v5, "rationalArray":[Landroid/media/ExifInterface$Rational;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2bd
    array-length v12, v0

    if-ge v6, v12, :cond_2f1

    .line 1893
    aget-object v12, v0, v6

    invoke-virtual {v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1894
    .local v12, "numbers":[Ljava/lang/String;
    new-instance v13, Landroid/media/ExifInterface$Rational;

    const/4 v14, 0x0

    aget-object v15, v12, v14

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-long v14, v14

    const/16 v22, 0x1

    aget-object v16, v12, v22

    .line 1895
    move-object/from16 v23, v7

    move-object/from16 v25, v8

    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    const/16 v21, 0x0

    move-object/from16 v16, v13

    move-wide/from16 v17, v14

    move-wide/from16 v19, v7

    invoke-direct/range {v16 .. v21}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational-IA;)V

    aput-object v13, v5, v6

    .line 1892
    .end local v12    # "numbers":[Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, v23

    move-object/from16 v8, v25

    goto :goto_2bd

    .end local v23    # "obj":Ljava/lang/Object;
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    :cond_2f1
    move-object/from16 v23, v7

    move-object/from16 v25, v8

    const/16 v22, 0x1

    .line 1897
    .end local v6    # "j":I
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v24

    iget-object v7, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1898
    invoke-static {v5, v7}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 1897
    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1899
    goto/16 :goto_38c

    .line 1880
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v24    # "i":I
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .local v6, "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    :pswitch_306
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v24    # "i":I
    .restart local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1881
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [J

    .line 1882
    .local v5, "longArray":[J
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_316
    array-length v7, v0

    if-ge v6, v7, :cond_324

    .line 1883
    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    .line 1882
    add-int/lit8 v6, v6, 0x1

    goto :goto_316

    .line 1885
    .end local v6    # "j":I
    :cond_324
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v24

    iget-object v7, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1886
    invoke-static {v5, v7}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 1885
    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    goto :goto_38c

    .line 1860
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "longArray":[J
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v24    # "i":I
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .local v6, "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    :pswitch_332
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v24    # "i":I
    .restart local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1861
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [I

    .line 1862
    .local v5, "intArray":[I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_342
    array-length v7, v0

    if-ge v6, v7, :cond_350

    .line 1863
    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    .line 1862
    add-int/lit8 v6, v6, 0x1

    goto :goto_342

    .line 1865
    .end local v6    # "j":I
    :cond_350
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v24

    iget-object v7, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1866
    invoke-static {v5, v7}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 1865
    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1867
    goto :goto_38c

    .line 1856
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "intArray":[I
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v24    # "i":I
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .local v6, "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    :pswitch_35e
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v24    # "i":I
    .restart local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    iget-object v0, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v24

    invoke-static {v3}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    goto :goto_38c

    .line 1851
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v24    # "i":I
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v6    # "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    :pswitch_372
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v24    # "i":I
    .restart local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    iget-object v0, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v24

    invoke-static {v3}, Landroid/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    goto :goto_38c

    .line 1820
    .end local v9    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v10    # "dataFormat":I
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v24    # "i":I
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v6    # "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_386
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    .line 1815
    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .restart local v24    # "i":I
    :cond_38c
    :goto_38c
    add-int/lit8 v6, v24, 0x1

    move/from16 v5, v22

    const/4 v0, 0x2

    .end local v24    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_c9

    .line 1931
    .end local v6    # "i":I
    :cond_393
    return-void

    .line 1792
    .end local v3    # "value":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :cond_394
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "tag shouldn\'t be null"

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_39c
    .packed-switch 0x1
        :pswitch_372
        :pswitch_35e
        :pswitch_332
        :pswitch_306
        :pswitch_2b3
        :pswitch_1ef
        :pswitch_35e
        :pswitch_1ef
        :pswitch_28a
        :pswitch_23c
        :pswitch_1ef
        :pswitch_213
    .end packed-switch
.end method
