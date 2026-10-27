.class public Lcom/android/server/location/gnss/hal/GnssNative;
.super Ljava/lang/Object;
.source "GnssNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;,
        Lcom/android/server/location/gnss/hal/GnssNative$NativeEntryPoint;,
        Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$AgpsSetIdType;,
        Lcom/android/server/location/gnss/hal/GnssNative$AgpsReferenceLocationType;,
        Lcom/android/server/location/gnss/hal/GnssNative$GnssAidingTypeFlags;,
        Lcom/android/server/location/gnss/hal/GnssNative$GnssRealtimeFlags;,
        Lcom/android/server/location/gnss/hal/GnssNative$GnssLocationFlags;,
        Lcom/android/server/location/gnss/hal/GnssNative$GnssPositionRecurrence;,
        Lcom/android/server/location/gnss/hal/GnssNative$GnssPositionMode;
    }
.end annotation


# static fields
.field public static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field public static final AGPS_REF_LOCATION_TYPE_LTE_CELLID:I = 0x4

.field public static final AGPS_REF_LOCATION_TYPE_NR_CELLID:I = 0x8

.field public static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field public static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field public static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field public static final AGPS_SETID_TYPE_NONE:I = 0x0

.field public static final GNSS_AIDING_TYPE_ALL:I = 0xffff

.field public static final GNSS_AIDING_TYPE_ALMANAC:I = 0x2

.field public static final GNSS_AIDING_TYPE_CELLDB_INFO:I = 0x8000

.field public static final GNSS_AIDING_TYPE_EPHEMERIS:I = 0x1

.field public static final GNSS_AIDING_TYPE_HEALTH:I = 0x40

.field public static final GNSS_AIDING_TYPE_IONO:I = 0x10

.field public static final GNSS_AIDING_TYPE_POSITION:I = 0x4

.field public static final GNSS_AIDING_TYPE_RTI:I = 0x400

.field public static final GNSS_AIDING_TYPE_SADATA:I = 0x200

.field public static final GNSS_AIDING_TYPE_SVDIR:I = 0x80

.field public static final GNSS_AIDING_TYPE_SVSTEER:I = 0x100

.field public static final GNSS_AIDING_TYPE_TIME:I = 0x8

.field public static final GNSS_AIDING_TYPE_UTC:I = 0x20

.field public static final GNSS_LOCATION_HAS_ALTITUDE:I = 0x2

.field public static final GNSS_LOCATION_HAS_BEARING:I = 0x8

.field public static final GNSS_LOCATION_HAS_BEARING_ACCURACY:I = 0x80

.field public static final GNSS_LOCATION_HAS_HORIZONTAL_ACCURACY:I = 0x10

.field public static final GNSS_LOCATION_HAS_LAT_LONG:I = 0x1

.field public static final GNSS_LOCATION_HAS_SPEED:I = 0x4

.field public static final GNSS_LOCATION_HAS_SPEED_ACCURACY:I = 0x40

.field public static final GNSS_LOCATION_HAS_VERTICAL_ACCURACY:I = 0x20

.field public static final GNSS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field public static final GNSS_POSITION_MODE_MS_BASED:I = 0x1

.field public static final GNSS_POSITION_MODE_STANDALONE:I = 0x0

.field public static final GNSS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field public static final GNSS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field public static final GNSS_REALTIME_HAS_TIMESTAMP_NS:I = 0x1

.field public static final GNSS_REALTIME_HAS_TIME_UNCERTAINTY_NS:I = 0x2

.field private static final ITAR_SPEED_LIMIT_METERS_PER_SECOND:F = 400.0f

.field private static sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

.field private static sGnssHalInitialized:Z

.field private static sInstance:Lcom/android/server/location/gnss/hal/GnssNative;


# instance fields
.field private mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

.field private mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

.field private mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

.field private mCapabilities:Landroid/location/GnssCapabilities;

.field private final mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

.field private final mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

.field private mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

.field private final mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

.field private mHardwareModelName:Ljava/lang/String;

.field private mHardwareYear:I

.field private mHasFirstFix:Z

.field private volatile mItarSpeedLimitExceeded:Z

.field private mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

.field private mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

.field private mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

.field private mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

.field private mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

.field public mNmeaStatus:Z

.field private mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

.field private mPowerStats:Lcom/android/server/location/gnss/GnssPowerStats;

.field private mPsdsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

.field private mRegistered:Z

.field private mStartRealtimeMs:J

.field private mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

.field private mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

.field private mTimeCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

.field private mTopFlags:I


# direct methods
.method static bridge synthetic -$$Nest$mnative_init_once(Lcom/android/server/location/gnss/hal/GnssNative;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_init_once(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnative_add_geofence(IDDDIIII)Z
    .registers 11

    invoke-static/range {p0 .. p10}, Lcom/android/server/location/gnss/hal/GnssNative;->native_add_geofence(IDDDIIII)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnative_agps_set_id(ILjava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_agps_set_id(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnative_agps_set_ref_location_cellid(IIIIJIII)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/android/server/location/gnss/hal/GnssNative;->native_agps_set_ref_location_cellid(IIIIJIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnative_class_init_once()V
    .registers 0

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_class_init_once()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnative_cleanup()V
    .registers 0

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_cleanup()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnative_cleanup_batching()V
    .registers 0

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_cleanup_batching()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnative_delete_aiding_data(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->native_delete_aiding_data(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnative_flush_batch()V
    .registers 0

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_flush_batch()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnative_get_batch_size()I
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_get_batch_size()I

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_get_internal_state()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_get_internal_state()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smnative_init()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_init()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_init_batching()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_init_batching()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_inject_best_location(IDDDFFFFFFJIJD)V
    .registers 20

    invoke-static/range {p0 .. p19}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_best_location(IDDDFFFFFFJIJD)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnative_inject_location(IDDDFFFFFFJIJD)V
    .registers 20

    invoke-static/range {p0 .. p19}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_location(IDDDFFFFFFJIJD)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnative_inject_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnative_inject_psds_data([BII)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_psds_data([BII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnative_inject_time(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_time(JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnative_is_antenna_info_supported()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_antenna_info_supported()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_is_geofence_supported()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_is_gnss_visibility_control_supported()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_gnss_visibility_control_supported()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_is_measurement_corrections_supported()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_measurement_corrections_supported()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_is_measurement_supported()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_measurement_supported()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_is_navigation_message_supported()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_navigation_message_supported()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_is_supported()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_pause_geofence(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->native_pause_geofence(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnative_read_nmea([BI)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_read_nmea([BI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnative_remove_geofence(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->native_remove_geofence(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnative_request_power_stats()V
    .registers 0

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_request_power_stats()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnative_resume_geofence(II)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_resume_geofence(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnative_send_ni_response(II)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_send_ni_response(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnative_set_agps_server(ILjava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->native_set_agps_server(ILjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnative_set_position_mode(IIIIIZ)Z
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/location/gnss/hal/GnssNative;->native_set_position_mode(IIIIIZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnative_start()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_start_antenna_info_listening()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_antenna_info_listening()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_start_batch(JFZ)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_batch(JFZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnative_start_measurement_collection(ZZI)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_measurement_collection(ZZI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnative_start_navigation_message_collection()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_start_nmea_message_collection()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_nmea_message_collection()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_start_sv_status_collection()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_sv_status_collection()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_stop()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_stop_antenna_info_listening()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_antenna_info_listening()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_stop_batch()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_batch()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_stop_measurement_collection()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_stop_navigation_message_collection()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_stop_nmea_message_collection()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_nmea_message_collection()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_stop_sv_status_collection()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_sv_status_collection()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnative_supports_psds()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_supports_psds()Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/GnssConfiguration;)V
    .registers 7
    .param p1, "gnssHal"    # Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;
    .param p2, "injector"    # Lcom/android/server/location/injector/Injector;
    .param p3, "configuration"    # Lcom/android/server/location/gnss/GnssConfiguration;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaStatus:Z

    .line 378
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    .line 379
    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    .line 380
    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    .line 381
    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    .line 382
    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    .line 383
    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    .line 384
    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    .line 385
    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    .line 400
    new-instance v1, Landroid/location/GnssCapabilities$Builder;

    invoke-direct {v1}, Landroid/location/GnssCapabilities$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/location/GnssCapabilities$Builder;->build()Landroid/location/GnssCapabilities;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 402
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPowerStats:Lcom/android/server/location/gnss/GnssPowerStats;

    .line 403
    iput v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareYear:I

    .line 404
    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareModelName:Ljava/lang/String;

    .line 405
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStartRealtimeMs:J

    .line 406
    iput-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHasFirstFix:Z

    .line 409
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    .line 410
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getEmergencyHelper()Lcom/android/server/location/injector/EmergencyHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

    .line 411
    iput-object p3, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 412
    return-void
.end method

.method public static declared-synchronized create(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/GnssConfiguration;)Lcom/android/server/location/gnss/hal/GnssNative;
    .registers 5
    .param p0, "injector"    # Lcom/android/server/location/injector/Injector;
    .param p1, "configuration"    # Lcom/android/server/location/gnss/GnssConfiguration;

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative;

    monitor-enter v0

    .line 368
    :try_start_3
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->isSupported()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 369
    sget-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sInstance:Lcom/android/server/location/gnss/hal/GnssNative;

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 370
    new-instance v1, Lcom/android/server/location/gnss/hal/GnssNative;

    sget-object v2, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;-><init>(Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/GnssConfiguration;)V

    sput-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sInstance:Lcom/android/server/location/gnss/hal/GnssNative;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v0

    return-object v1

    .line 367
    .end local p0    # "injector":Lcom/android/server/location/injector/Injector;
    .end local p1    # "configuration":Lcom/android/server/location/gnss/GnssConfiguration;
    :catchall_1f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initializeGnss(Z)V
    .registers 4
    .param p1, "restart"    # Z

    .line 514
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 515
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTopFlags:I

    .line 516
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->initOnce(Lcom/android/server/location/gnss/hal/GnssNative;Z)V

    .line 520
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->init()Z

    move-result v0

    const-string v1, "GnssManager"

    if-eqz v0, :cond_23

    .line 521
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->cleanup()V

    .line 522
    const-string/jumbo v0, "gnss hal initialized"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 524
    :cond_23
    const-string/jumbo v0, "gnss hal initialization failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_29
    return-void
.end method

.method private static declared-synchronized initializeHal()V
    .registers 2

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative;

    monitor-enter v0

    .line 343
    :try_start_3
    sget-boolean v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHalInitialized:Z

    if-nez v1, :cond_1a

    .line 344
    sget-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    if-nez v1, :cond_12

    .line 345
    new-instance v1, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-direct {v1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;-><init>()V

    sput-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    .line 347
    :cond_12
    sget-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->classInitOnce()V

    .line 348
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHalInitialized:Z
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    .line 350
    :cond_1a
    monitor-exit v0

    return-void

    .line 342
    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isSupported()Z
    .registers 2

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative;

    monitor-enter v0

    .line 357
    :try_start_3
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->initializeHal()V

    .line 358
    sget-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isSupported()Z

    move-result v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return v1

    .line 356
    :catchall_e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private static native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private static native native_agps_set_ref_location_cellid(IIIIJIII)V
.end method

.method private static native native_class_init_once()V
.end method

.method private static native native_cleanup()V
.end method

.method private static native native_cleanup_batching()V
.end method

.method private static native native_delete_aiding_data(I)V
.end method

.method private static native native_flush_batch()V
.end method

.method private static native native_get_batch_size()I
.end method

.method private static native native_get_internal_state()Ljava/lang/String;
.end method

.method private static native native_init()Z
.end method

.method private static native native_init_batching()Z
.end method

.method private native native_init_once(Z)V
.end method

.method private static native native_inject_best_location(IDDDFFFFFFJIJD)V
.end method

.method private static native native_inject_location(IDDDFFFFFFJIJD)V
.end method

.method private static native native_inject_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z
.end method

.method private static native native_inject_psds_data([BII)V
.end method

.method private static native native_inject_time(JJI)V
.end method

.method private static native native_is_antenna_info_supported()Z
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_is_gnss_visibility_control_supported()Z
.end method

.method private static native native_is_measurement_corrections_supported()Z
.end method

.method private static native native_is_measurement_supported()Z
.end method

.method private static native native_is_navigation_message_supported()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private static native native_read_nmea([BI)I
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_request_power_stats()V
.end method

.method private static native native_resume_geofence(II)Z
.end method

.method private static native native_send_ni_response(II)V
.end method

.method private static native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private static native native_set_position_mode(IIIIIZ)Z
.end method

.method private static native native_start()Z
.end method

.method private static native native_start_antenna_info_listening()Z
.end method

.method private static native native_start_batch(JFZ)Z
.end method

.method private static native native_start_measurement_collection(ZZI)Z
.end method

.method private static native native_start_navigation_message_collection()Z
.end method

.method private static native native_start_nmea_message_collection()Z
.end method

.method private static native native_start_sv_status_collection()Z
.end method

.method private static native native_stop()Z
.end method

.method private static native native_stop_antenna_info_listening()Z
.end method

.method private static native native_stop_batch()Z
.end method

.method private static native native_stop_measurement_collection()Z
.end method

.method private static native native_stop_navigation_message_collection()Z
.end method

.method private static native native_stop_nmea_message_collection()Z
.end method

.method private static native native_stop_sv_status_collection()Z
.end method

.method private static native native_supports_psds()Z
.end method

.method private onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V
    .registers 4
    .param p1, "oldCapabilities"    # Landroid/location/GnssCapabilities;
    .param p2, "newCapabilities"    # Landroid/location/GnssCapabilities;

    .line 1237
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1248
    return-void
.end method

.method public static declared-synchronized setGnssHalForTest(Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;)V
    .registers 3
    .param p0, "gnssHal"    # Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative;

    monitor-enter v0

    .line 337
    :try_start_3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    sput-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    .line 338
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHalInitialized:Z

    .line 339
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sInstance:Lcom/android/server/location/gnss/hal/GnssNative;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    .line 340
    monitor-exit v0

    return-void

    .line 336
    .end local p0    # "gnssHal":Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;
    :catchall_13
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setGnssHardwareModelName(Ljava/lang/String;)V
    .registers 2
    .param p1, "modelName"    # Ljava/lang/String;

    .line 1262
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareModelName:Ljava/lang/String;

    .line 1263
    return-void
.end method


# virtual methods
.method public addAntennaInfoCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;)V
    .registers 4
    .param p1, "callbacks"    # Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    .line 450
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 451
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    .line 453
    return-void
.end method

.method public addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V
    .registers 4
    .param p1, "callbacks"    # Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    .line 415
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 416
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    .line 417
    return-void
.end method

.method public addGeofence(IDDDIIII)Z
    .registers 26
    .param p1, "geofenceId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # D
    .param p8, "lastTransition"    # I
    .param p9, "monitorTransitions"    # I
    .param p10, "notificationResponsiveness"    # I
    .param p11, "unknownTimer"    # I

    .line 931
    move-object v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 932
    iget-object v2, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    move v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->addGeofence(IDDDIIII)Z

    move-result v1

    return v1
.end method

.method public addLocationCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;)V
    .registers 4
    .param p1, "callbacks"    # Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    .line 438
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 439
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    .line 441
    return-void
.end method

.method public addMeasurementCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;)V
    .registers 4
    .param p1, "callbacks"    # Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    .line 444
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 445
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    .line 447
    return-void
.end method

.method public addNavigationMessageCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;)V
    .registers 4
    .param p1, "callbacks"    # Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    .line 456
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 457
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    .line 459
    return-void
.end method

.method public addNmeaCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;)V
    .registers 4
    .param p1, "callbacks"    # Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    .line 432
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 433
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    .line 435
    return-void
.end method

.method public addStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;)V
    .registers 4
    .param p1, "callbacks"    # Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    .line 420
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 421
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    .line 423
    return-void
.end method

.method public addSvStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;)V
    .registers 4
    .param p1, "callbacks"    # Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    .line 426
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 427
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    .line 429
    return-void
.end method

.method public cleanup()V
    .registers 2

    .line 546
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 547
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->cleanup()V

    .line 548
    return-void
.end method

.method public cleanupBatching()V
    .registers 2

    .line 880
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 881
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->cleanupBatching()V

    .line 882
    return-void
.end method

.method public deleteAidingData(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 637
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 638
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->deleteAidingData(I)V

    .line 639
    return-void
.end method

.method public flushBatch()V
    .registers 2

    .line 897
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 898
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->flushBatch()V

    .line 899
    return-void
.end method

.method public getBatchSize()I
    .registers 2

    .line 913
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 914
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->getBatchSize()I

    move-result v0

    return v0
.end method

.method public getCapabilities()Landroid/location/GnssCapabilities;
    .registers 2

    .line 561
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    return-object v0
.end method

.method public getConfiguration()Lcom/android/server/location/gnss/GnssConfiguration;
    .registers 2

    .line 529
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    return-object v0
.end method

.method public getHardwareModelName()Ljava/lang/String;
    .registers 2

    .line 575
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareModelName:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareYear()I
    .registers 2

    .line 568
    iget v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareYear:I

    return v0
.end method

.method public getInternalState()Ljava/lang/String;
    .registers 2

    .line 629
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 630
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->getInternalState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerStats()Lcom/android/server/location/gnss/GnssPowerStats;
    .registers 2

    .line 554
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPowerStats:Lcom/android/server/location/gnss/GnssPowerStats;

    return-object v0
.end method

.method public init()Z
    .registers 2

    .line 537
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 538
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->init()Z

    move-result v0

    return v0
.end method

.method public initBatching()Z
    .registers 2

    .line 872
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 873
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->initBatching()Z

    move-result v0

    return v0
.end method

.method public injectBestLocation(Landroid/location/Location;)V
    .registers 45
    .param p1, "location"    # Landroid/location/Location;

    .line 695
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 697
    nop

    .line 698
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    move v1, v2

    goto :goto_13

    :cond_12
    move v1, v3

    :goto_13
    or-int/lit8 v1, v1, 0x1

    .line 699
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v4, 0x4

    goto :goto_1e

    :cond_1d
    move v4, v3

    :goto_1e
    or-int/2addr v1, v4

    .line 700
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_28

    const/16 v4, 0x8

    goto :goto_29

    :cond_28
    move v4, v3

    :goto_29
    or-int/2addr v1, v4

    .line 701
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_33

    const/16 v4, 0x10

    goto :goto_34

    :cond_33
    move v4, v3

    :goto_34
    or-int/2addr v1, v4

    .line 702
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v4

    if-eqz v4, :cond_3e

    const/16 v4, 0x20

    goto :goto_3f

    :cond_3e
    move v4, v3

    :goto_3f
    or-int/2addr v1, v4

    .line 703
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v4

    if-eqz v4, :cond_49

    const/16 v4, 0x40

    goto :goto_4a

    :cond_49
    move v4, v3

    :goto_4a
    or-int/2addr v1, v4

    .line 704
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v4

    if-eqz v4, :cond_54

    const/16 v4, 0x80

    goto :goto_55

    :cond_54
    move v4, v3

    :goto_55
    or-int/2addr v1, v4

    .line 706
    .local v1, "gnssLocationFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v26

    .line 707
    .local v26, "latitudeDegrees":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v28

    .line 708
    .local v28, "longitudeDegrees":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v30

    .line 709
    .local v30, "altitudeMeters":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    .line 710
    .local v4, "speedMetersPerSec":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v32

    .line 711
    .local v32, "bearingDegrees":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v33

    .line 712
    .local v33, "horizontalAccuracyMeters":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v34

    .line 713
    .local v34, "verticalAccuracyMeters":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v35

    .line 714
    .local v35, "speedAccuracyMetersPerSecond":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v36

    .line 715
    .local v36, "bearingAccuracyDegrees":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v37

    .line 717
    .local v37, "timestamp":J
    nop

    .line 718
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v5

    if-eqz v5, :cond_86

    .line 719
    goto :goto_87

    :cond_86
    move v2, v3

    :goto_87
    or-int/lit8 v2, v2, 0x1

    .local v2, "elapsedRealtimeFlags":I
    move/from16 v21, v2

    .line 720
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v39

    .local v39, "elapsedRealtimeNanos":J
    move-wide/from16 v22, v39

    .line 721
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v41

    .local v41, "elapsedRealtimeUncertaintyNanos":D
    move-wide/from16 v24, v41

    .line 723
    iget-object v5, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    move v6, v1

    move-wide/from16 v7, v26

    move-wide/from16 v9, v28

    move-wide/from16 v11, v30

    move v13, v4

    move/from16 v14, v32

    move/from16 v15, v33

    move/from16 v16, v34

    move/from16 v17, v35

    move/from16 v18, v36

    move-wide/from16 v19, v37

    invoke-virtual/range {v5 .. v25}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectBestLocation(IDDDFFFFFFJIJD)V

    .line 728
    return-void
.end method

.method public injectLocation(Landroid/location/Location;)V
    .registers 45
    .param p1, "location"    # Landroid/location/Location;

    .line 654
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 655
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 657
    nop

    .line 658
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    move v1, v2

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    or-int/lit8 v1, v1, 0x1

    .line 659
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x4

    goto :goto_24

    :cond_23
    move v4, v3

    :goto_24
    or-int/2addr v1, v4

    .line 660
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_2e

    const/16 v4, 0x8

    goto :goto_2f

    :cond_2e
    move v4, v3

    :goto_2f
    or-int/2addr v1, v4

    .line 661
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_39

    const/16 v4, 0x10

    goto :goto_3a

    :cond_39
    move v4, v3

    :goto_3a
    or-int/2addr v1, v4

    .line 662
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v4

    if-eqz v4, :cond_44

    const/16 v4, 0x20

    goto :goto_45

    :cond_44
    move v4, v3

    :goto_45
    or-int/2addr v1, v4

    .line 663
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v4

    if-eqz v4, :cond_4f

    const/16 v4, 0x40

    goto :goto_50

    :cond_4f
    move v4, v3

    :goto_50
    or-int/2addr v1, v4

    .line 664
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v4

    if-eqz v4, :cond_5a

    const/16 v4, 0x80

    goto :goto_5b

    :cond_5a
    move v4, v3

    :goto_5b
    or-int/2addr v1, v4

    .line 666
    .local v1, "gnssLocationFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v26

    .line 667
    .local v26, "latitudeDegrees":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v28

    .line 668
    .local v28, "longitudeDegrees":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v30

    .line 669
    .local v30, "altitudeMeters":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    .line 670
    .local v4, "speedMetersPerSec":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v32

    .line 671
    .local v32, "bearingDegrees":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v33

    .line 672
    .local v33, "horizontalAccuracyMeters":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v34

    .line 673
    .local v34, "verticalAccuracyMeters":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v35

    .line 674
    .local v35, "speedAccuracyMetersPerSecond":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v36

    .line 675
    .local v36, "bearingAccuracyDegrees":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v37

    .line 677
    .local v37, "timestamp":J
    nop

    .line 678
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 679
    goto :goto_8d

    :cond_8c
    move v2, v3

    :goto_8d
    or-int/lit8 v2, v2, 0x1

    .local v2, "elapsedRealtimeFlags":I
    move/from16 v21, v2

    .line 680
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v39

    .local v39, "elapsedRealtimeNanos":J
    move-wide/from16 v22, v39

    .line 681
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v41

    .local v41, "elapsedRealtimeUncertaintyNanos":D
    move-wide/from16 v24, v41

    .line 683
    iget-object v5, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    move v6, v1

    move-wide/from16 v7, v26

    move-wide/from16 v9, v28

    move-wide/from16 v11, v30

    move v13, v4

    move/from16 v14, v32

    move/from16 v15, v33

    move/from16 v16, v34

    move/from16 v17, v35

    move/from16 v18, v36

    move-wide/from16 v19, v37

    invoke-virtual/range {v5 .. v25}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectLocation(IDDDFFFFFFJIJD)V

    .line 689
    .end local v1    # "gnssLocationFlags":I
    .end local v2    # "elapsedRealtimeFlags":I
    .end local v4    # "speedMetersPerSec":F
    .end local v26    # "latitudeDegrees":D
    .end local v28    # "longitudeDegrees":D
    .end local v30    # "altitudeMeters":D
    .end local v32    # "bearingDegrees":F
    .end local v33    # "horizontalAccuracyMeters":F
    .end local v34    # "verticalAccuracyMeters":F
    .end local v35    # "speedAccuracyMetersPerSecond":F
    .end local v36    # "bearingAccuracyDegrees":F
    .end local v37    # "timestamp":J
    .end local v39    # "elapsedRealtimeNanos":J
    .end local v41    # "elapsedRealtimeUncertaintyNanos":D
    :cond_b6
    return-void
.end method

.method public injectMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z
    .registers 3
    .param p1, "corrections"    # Landroid/location/GnssMeasurementCorrections;

    .line 864
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 865
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z

    move-result v0

    return v0
.end method

.method public injectPsdsData([BII)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "psdsType"    # I

    .line 1021
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1022
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectPsdsData([BII)V

    .line 1023
    return-void
.end method

.method public injectTime(JJI)V
    .registers 13
    .param p1, "time"    # J
    .param p3, "timeReference"    # J
    .param p5, "uncertainty"    # I

    .line 734
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 735
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectTime(JJI)V

    .line 736
    return-void
.end method

.method public isAntennaInfoSupported()Z
    .registers 2

    .line 766
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 767
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isAntennaInfoSupported()Z

    move-result v0

    return v0
.end method

.method public isGeofencingSupported()Z
    .registers 2

    .line 921
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 922
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isGeofencingSupported()Z

    move-result v0

    return v0
.end method

.method public isGnssVisibilityControlSupported()Z
    .registers 2

    .line 964
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 965
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isGnssVisibilityControlSupported()Z

    move-result v0

    return v0
.end method

.method isInEmergencySession()Z
    .registers 2

    .line 1362
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isItarSpeedLimitExceeded()Z
    .registers 2

    .line 583
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    return v0
.end method

.method public isMeasurementCorrectionsSupported()Z
    .registers 2

    .line 856
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 857
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isMeasurementCorrectionsSupported()Z

    move-result v0

    return v0
.end method

.method public isMeasurementSupported()Z
    .registers 2

    .line 790
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 791
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isMeasurementSupported()Z

    move-result v0

    return v0
.end method

.method public isNavigationMessageCollectionSupported()Z
    .registers 2

    .line 742
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 743
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isNavigationMessageCollectionSupported()Z

    move-result v0

    return v0
.end method

.method public isPsdsSupported()Z
    .registers 2

    .line 1013
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1014
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isPsdsSupported()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$isInEmergencySession$23$com-android-server-location-gnss-hal-GnssNative()Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1363
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 1364
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssConfiguration;->getEsExtensionSec()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 1363
    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/EmergencyHelper;->isInEmergency(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onCapabilitiesChanged$8$com-android-server-location-gnss-hal-GnssNative(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V
    .registers 6
    .param p1, "newCapabilities"    # Landroid/location/GnssCapabilities;
    .param p2, "oldCapabilities"    # Landroid/location/GnssCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1238
    invoke-virtual {p1, p2}, Landroid/location/GnssCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1239
    return-void

    .line 1242
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "gnss capabilities changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_2e

    .line 1245
    aget-object v1, v1, v0

    invoke-interface {v1, p2, p1}, Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;->onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    .line 1244
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1247
    .end local v0    # "i":I
    :cond_2e
    return-void
.end method

.method synthetic lambda$psdsDownloadRequest$10$com-android-server-location-gnss-hal-GnssNative(I)V
    .registers 3
    .param p1, "psdsType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1276
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPsdsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;->onRequestPsdsDownload(I)V

    return-void
.end method

.method synthetic lambda$reportAGpsStatus$3$com-android-server-location-gnss-hal-GnssNative(II[B)V
    .registers 5
    .param p1, "agpsType"    # I
    .param p2, "agpsStatus"    # I
    .param p3, "suplIpAddr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1138
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;->onReportAGpsStatus(II[B)V

    return-void
.end method

.method synthetic lambda$reportAntennaInfo$6$com-android-server-location-gnss-hal-GnssNative(Ljava/util/List;)V
    .registers 5
    .param p1, "antennaInfos"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 1190
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;->onReportAntennaInfo(Ljava/util/List;)V

    .line 1189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1192
    .end local v0    # "i":I
    :cond_e
    return-void
.end method

.method synthetic lambda$reportGeofenceAddStatus$13$com-android-server-location-gnss-hal-GnssNative(II)V
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1296
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;->onReportGeofenceAddStatus(II)V

    return-void
.end method

.method synthetic lambda$reportGeofencePauseStatus$15$com-android-server-location-gnss-hal-GnssNative(II)V
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1308
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;->onReportGeofencePauseStatus(II)V

    return-void
.end method

.method synthetic lambda$reportGeofenceRemoveStatus$14$com-android-server-location-gnss-hal-GnssNative(II)V
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1302
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;->onReportGeofenceRemoveStatus(II)V

    return-void
.end method

.method synthetic lambda$reportGeofenceResumeStatus$16$com-android-server-location-gnss-hal-GnssNative(II)V
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1314
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;->onReportGeofenceResumeStatus(II)V

    return-void
.end method

.method synthetic lambda$reportGeofenceStatus$12$com-android-server-location-gnss-hal-GnssNative(ILandroid/location/Location;)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "location"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1290
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;->onReportGeofenceStatus(ILandroid/location/Location;)V

    return-void
.end method

.method synthetic lambda$reportGeofenceTransition$11$com-android-server-location-gnss-hal-GnssNative(ILandroid/location/Location;IJ)V
    .registers 12
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "transitionTimestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1283
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;->onReportGeofenceTransition(ILandroid/location/Location;IJ)V

    return-void
.end method

.method synthetic lambda$reportLocation$0$com-android-server-location-gnss-hal-GnssNative(Landroid/location/Location;Z)V
    .registers 9
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "hasLatLong"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1048
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    move-result v0

    const-string v1, "GnssManager"

    if-nez v0, :cond_f

    .line 1049
    const-string/jumbo v0, "location is not complete"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    return-void

    .line 1052
    :cond_f
    const/4 v0, 0x1

    if-eqz p2, :cond_2e

    iget-boolean v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHasFirstFix:Z

    if-nez v2, :cond_2e

    .line 1053
    iput-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHasFirstFix:Z

    .line 1056
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStartRealtimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 1057
    .local v2, "ttff":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    iget-object v4, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    array-length v5, v4

    if-ge v3, v5, :cond_2e

    .line 1058
    aget-object v4, v4, v3

    invoke-interface {v4, v2}, Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;->onReportFirstFix(I)V

    .line 1057
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 1062
    .end local v2    # "ttff":I
    .end local v3    # "i":I
    :cond_2e
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1063
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    const/high16 v3, 0x43c80000    # 400.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    .line 1064
    .local v0, "exceeded":Z
    :goto_40
    iget-boolean v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-nez v2, :cond_4d

    if-eqz v0, :cond_4d

    .line 1065
    const-string/jumbo v2, "speed nearing ITAR threshold - blocking further GNSS output"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 1066
    :cond_4d
    iget-boolean v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v2, :cond_59

    if-nez v0, :cond_59

    .line 1067
    const-string/jumbo v2, "speed leaving ITAR threshold - allowing further GNSS output"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_59
    :goto_59
    iput-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    .line 1072
    .end local v0    # "exceeded":Z
    :cond_5b
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v0, :cond_60

    .line 1073
    return-void

    .line 1076
    :cond_60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_61
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_6e

    .line 1077
    aget-object v1, v1, v0

    invoke-interface {v1, p2, p1}, Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;->onReportLocation(ZLandroid/location/Location;)V

    .line 1076
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 1079
    .end local v0    # "i":I
    :cond_6e
    return-void
.end method

.method synthetic lambda$reportLocationBatch$9$com-android-server-location-gnss-hal-GnssNative([Landroid/location/Location;)V
    .registers 5
    .param p1, "locations"    # [Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 1269
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;->onReportLocations([Landroid/location/Location;)V

    .line 1268
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1271
    .end local v0    # "i":I
    :cond_e
    return-void
.end method

.method synthetic lambda$reportMeasurementData$5$com-android-server-location-gnss-hal-GnssNative(Landroid/location/GnssMeasurementsEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1176
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v0, :cond_5

    .line 1177
    return-void

    .line 1180
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 1181
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;->onReportMeasurements(Landroid/location/GnssMeasurementsEvent;)V

    .line 1180
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1183
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method synthetic lambda$reportNavigationMessage$7$com-android-server-location-gnss-hal-GnssNative(Landroid/location/GnssNavigationMessage;)V
    .registers 5
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1198
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v0, :cond_5

    .line 1199
    return-void

    .line 1202
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 1203
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;->onReportNavigationMessage(Landroid/location/GnssNavigationMessage;)V

    .line 1202
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1205
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method synthetic lambda$reportNfwNotification$22$com-android-server-location-gnss-hal-GnssNative(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 19
    .param p1, "proxyAppPackageName"    # Ljava/lang/String;
    .param p2, "protocolStack"    # B
    .param p3, "otherProtocolStackName"    # Ljava/lang/String;
    .param p4, "requestor"    # B
    .param p5, "requestorId"    # Ljava/lang/String;
    .param p6, "responseType"    # B
    .param p7, "inEmergencyMode"    # Z
    .param p8, "isCachedLocation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1355
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;->onReportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    return-void
.end method

.method synthetic lambda$reportNiNotification$17$com-android-server-location-gnss-hal-GnssNative(IIIIILjava/lang/String;Ljava/lang/String;II)V
    .registers 21
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1322
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;->onReportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method synthetic lambda$reportNmea$4$com-android-server-location-gnss-hal-GnssNative(J)V
    .registers 9
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1144
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v0, :cond_5

    .line 1145
    return-void

    .line 1149
    :cond_5
    const/16 v0, 0x78

    new-array v0, v0, [B

    .line 1150
    .local v0, "mNmeaBuffer":[B
    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/hal/GnssNative;->readNmea([BI)I

    move-result v1

    .line 1151
    .local v1, "length":I
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 1153
    .local v2, "mNmea":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getInstance()Lcom/android/server/location/gnss/GnssLocationProviderStub;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->precisionProcessByType(Ljava/lang/String;)Ljava/lang/String;

    .line 1155
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4, v2}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 1157
    invoke-static {}, Lcom/android/server/location/gnss/GnssCollectDataStub;->getInstance()Lcom/android/server/location/gnss/GnssCollectDataStub;

    move-result-object v3

    const/4 v4, 0x6

    invoke-interface {v3, v4, v2}, Lcom/android/server/location/gnss/GnssCollectDataStub;->savePoint(ILjava/lang/String;)V

    .line 1159
    const-string v3, "$P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1160
    return-void

    .line 1162
    :cond_34
    iget-boolean v3, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaStatus:Z

    if-nez v3, :cond_39

    .line 1163
    return-void

    .line 1167
    :cond_39
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3a
    iget-object v4, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    array-length v5, v4

    if-ge v3, v5, :cond_47

    .line 1168
    aget-object v4, v4, v3

    invoke-interface {v4, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;->onReportNmea(J)V

    .line 1167
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 1170
    .end local v3    # "i":I
    :cond_47
    return-void
.end method

.method synthetic lambda$reportStatus$1$com-android-server-location-gnss-hal-GnssNative(I)V
    .registers 7
    .param p1, "gnssStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1087
    const/4 v0, 0x0

    const-string v1, "GnssManager"

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p1, v2, :cond_35

    .line 1088
    const-string/jumbo v2, "gnss engine report: on"

    .line 1089
    .local v2, "dumpInfo":Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    invoke-static {}, Lcom/android/server/location/gnss/GnssCollectDataStub;->getInstance()Lcom/android/server/location/gnss/GnssCollectDataStub;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v1, v4, v0}, Lcom/android/server/location/gnss/GnssCollectDataStub;->savePoint(ILjava/lang/String;)V

    .line 1092
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 1094
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getInstance()Lcom/android/server/location/gnss/GnssLocationProviderStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getSendingSwitch()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1095
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getInstance()Lcom/android/server/location/gnss/GnssLocationProviderStub;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->notifyState(I)V

    .line 1097
    :cond_2d
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssScoringModelStub;->getInstance()Lcom/android/server/location/gnss/hal/GnssScoringModelStub;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/server/location/gnss/hal/GnssScoringModelStub;->startScoringModel(Z)V

    .end local v2    # "dumpInfo":Ljava/lang/String;
    goto :goto_66

    .line 1098
    :cond_35
    const/4 v4, 0x4

    if-ne p1, v4, :cond_66

    .line 1099
    const-string/jumbo v4, "gnss engine report: off"

    .line 1100
    .local v4, "dumpInfo":Ljava/lang/String;
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-static {}, Lcom/android/server/location/gnss/GnssCollectDataStub;->getInstance()Lcom/android/server/location/gnss/GnssCollectDataStub;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/android/server/location/gnss/GnssCollectDataStub;->savePoint(ILjava/lang/String;)V

    .line 1103
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 1105
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getInstance()Lcom/android/server/location/gnss/GnssLocationProviderStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getSendingSwitch()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1106
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->getInstance()Lcom/android/server/location/gnss/GnssLocationProviderStub;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/server/location/gnss/GnssLocationProviderStub;->notifyState(I)V

    .line 1108
    :cond_5d
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssScoringModelStub;->getInstance()Lcom/android/server/location/gnss/hal/GnssScoringModelStub;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/location/gnss/hal/GnssScoringModelStub;->startScoringModel(Z)V

    goto :goto_67

    .line 1098
    .end local v4    # "dumpInfo":Ljava/lang/String;
    :cond_66
    :goto_66
    nop

    .line 1111
    :goto_67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_68
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_75

    .line 1112
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;->onReportStatus(I)V

    .line 1111
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 1114
    .end local v0    # "i":I
    :cond_75
    return-void
.end method

.method synthetic lambda$reportSvStatus$2$com-android-server-location-gnss-hal-GnssNative(I[I[F[F[F[F[F)V
    .registers 20
    .param p1, "svCount"    # I
    .param p2, "svidWithFlags"    # [I
    .param p3, "cn0DbHzs"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "carrierFrequencies"    # [F
    .param p7, "basebandCn0DbHzs"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1122
    invoke-static/range {p1 .. p7}, Landroid/location/GnssStatus;->wrap(I[I[F[F[F[F[F)Landroid/location/GnssStatus;

    move-result-object v0

    .line 1124
    .local v0, "gnssStatus":Landroid/location/GnssStatus;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/location/gnss/hal/GnssNative;->mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    array-length v4, v3

    if-ge v1, v4, :cond_13

    .line 1125
    aget-object v3, v3, v1

    invoke-interface {v3, v0}, Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;->onReportSvStatus(Landroid/location/GnssStatus;)V

    .line 1124
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1128
    .end local v1    # "i":I
    :cond_13
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssScoringModelStub;->getInstance()Lcom/android/server/location/gnss/hal/GnssScoringModelStub;

    move-result-object v1

    move-object/from16 v11, p7

    invoke-interface {v1, v11}, Lcom/android/server/location/gnss/hal/GnssScoringModelStub;->reportSvStatus2Score([F)V

    .line 1129
    invoke-static {}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->get()Lcom/android/server/location/MiuiBlurLocationManagerStub;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/location/MiuiBlurLocationManagerStub;->updateSvStatusData(I[I[F[F[F[F[F)V

    .line 1132
    return-void
.end method

.method synthetic lambda$requestLocation$19$com-android-server-location-gnss-hal-GnssNative(ZZ)V
    .registers 4
    .param p1, "independentFromGnss"    # Z
    .param p2, "isUserEmergency"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1335
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;->onRequestLocation(ZZ)V

    return-void
.end method

.method synthetic lambda$requestRefLocation$21$com-android-server-location-gnss-hal-GnssNative()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1347
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    invoke-interface {v0}, Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;->onRequestRefLocation()V

    return-void
.end method

.method synthetic lambda$requestSetID$18$com-android-server-location-gnss-hal-GnssNative(I)V
    .registers 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1329
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;->onRequestSetID(I)V

    return-void
.end method

.method synthetic lambda$requestUtcTime$20$com-android-server-location-gnss-hal-GnssNative()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1341
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTimeCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

    invoke-interface {v0}, Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;->onRequestUtcTime()V

    return-void
.end method

.method public pauseGeofence(I)Z
    .registers 3
    .param p1, "geofenceId"    # I

    .line 948
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 949
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->pauseGeofence(I)Z

    move-result v0

    return v0
.end method

.method psdsDownloadRequest(I)V
    .registers 3
    .param p1, "psdsType"    # I

    .line 1276
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1277
    return-void
.end method

.method public readNmea([BI)I
    .registers 4
    .param p1, "buffer"    # [B
    .param p2, "bufferSize"    # I

    .line 646
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 647
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->readNmea([BI)I

    move-result v0

    return v0
.end method

.method public register()V
    .registers 4

    .line 502
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 503
    iput-boolean v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    .line 505
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->initializeGnss(Z)V

    .line 506
    const-string v0, "GnssManager"

    const-string/jumbo v1, "gnss hal started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_23

    .line 509
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;->onHalStarted()V

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 511
    .end local v0    # "i":I
    :cond_23
    return-void
.end method

.method public removeGeofence(I)Z
    .registers 3
    .param p1, "geofenceId"    # I

    .line 956
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 957
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->removeGeofence(I)Z

    move-result v0

    return v0
.end method

.method reportAGpsStatus(II[B)V
    .registers 5
    .param p1, "agpsType"    # I
    .param p2, "agpsStatus"    # I
    .param p3, "suplIpAddr"    # [B

    .line 1137
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II[B)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1139
    return-void
.end method

.method reportAntennaInfo(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;)V"
        }
    .end annotation

    .line 1188
    .local p1, "antennaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAntennaInfo;>;"
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Ljava/util/List;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1193
    return-void
.end method

.method reportGeofenceAddStatus(II)V
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 1295
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1297
    return-void
.end method

.method reportGeofencePauseStatus(II)V
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 1307
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1309
    return-void
.end method

.method reportGeofenceRemoveStatus(II)V
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 1301
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1303
    return-void
.end method

.method reportGeofenceResumeStatus(II)V
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 1313
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1315
    return-void
.end method

.method reportGeofenceStatus(ILandroid/location/Location;)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "location"    # Landroid/location/Location;

    .line 1289
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;ILandroid/location/Location;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1291
    return-void
.end method

.method reportGeofenceTransition(ILandroid/location/Location;IJ)V
    .registers 14
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "transitionTimestamp"    # J

    .line 1282
    new-instance v7, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;ILandroid/location/Location;IJ)V

    invoke-static {v7}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1285
    return-void
.end method

.method reportGnssPowerStats(Lcom/android/server/location/gnss/GnssPowerStats;)V
    .registers 2
    .param p1, "powerStats"    # Lcom/android/server/location/gnss/GnssPowerStats;

    .line 1252
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPowerStats:Lcom/android/server/location/gnss/GnssPowerStats;

    .line 1253
    return-void
.end method

.method reportGnssServiceDied()V
    .registers 3

    .line 1028
    const-string v0, "GnssManager"

    const-string/jumbo v1, "gnss hal died - restarting shortly..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1033
    return-void
.end method

.method reportLocation(ZLandroid/location/Location;)V
    .registers 4
    .param p1, "hasLatLong"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .line 1047
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Landroid/location/Location;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1080
    return-void
.end method

.method reportLocationBatch([Landroid/location/Location;)V
    .registers 3
    .param p1, "locations"    # [Landroid/location/Location;

    .line 1267
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;[Landroid/location/Location;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1272
    return-void
.end method

.method reportMeasurementData(Landroid/location/GnssMeasurementsEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    .line 1175
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Landroid/location/GnssMeasurementsEvent;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1184
    return-void
.end method

.method reportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
    .registers 3
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .line 1197
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Landroid/location/GnssNavigationMessage;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1206
    return-void
.end method

.method reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 20
    .param p1, "proxyAppPackageName"    # Ljava/lang/String;
    .param p2, "protocolStack"    # B
    .param p3, "otherProtocolStackName"    # Ljava/lang/String;
    .param p4, "requestor"    # B
    .param p5, "requestorId"    # Ljava/lang/String;
    .param p6, "responseType"    # B
    .param p7, "inEmergencyMode"    # Z
    .param p8, "isCachedLocation"    # Z

    .line 1354
    new-instance v10, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    invoke-static {v10}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1358
    return-void
.end method

.method reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V
    .registers 22
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I

    .line 1321
    new-instance v11, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;IIIIILjava/lang/String;Ljava/lang/String;II)V

    invoke-static {v11}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1325
    return-void
.end method

.method reportNmea(J)V
    .registers 4
    .param p1, "timestamp"    # J

    .line 1143
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;J)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1171
    return-void
.end method

.method reportStatus(I)V
    .registers 3
    .param p1, "gnssStatus"    # I

    .line 1084
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1115
    return-void
.end method

.method reportSvStatus(I[I[F[F[F[F[F)V
    .registers 18
    .param p1, "svCount"    # I
    .param p2, "svidWithFlags"    # [I
    .param p3, "cn0DbHzs"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "carrierFrequencies"    # [F
    .param p7, "basebandCn0DbHzs"    # [F

    .line 1121
    new-instance v9, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda19;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I[I[F[F[F[F[F)V

    invoke-static {v9}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1133
    return-void
.end method

.method requestLocation(ZZ)V
    .registers 4
    .param p1, "independentFromGnss"    # Z
    .param p2, "isUserEmergency"    # Z

    .line 1334
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;ZZ)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1337
    return-void
.end method

.method public requestPowerStats()V
    .registers 2

    .line 980
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 981
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->requestPowerStats()V

    .line 982
    return-void
.end method

.method requestRefLocation()V
    .registers 2

    .line 1346
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1348
    return-void
.end method

.method requestSetID(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 1329
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1330
    return-void
.end method

.method requestUtcTime()V
    .registers 2

    .line 1341
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1342
    return-void
.end method

.method restartHal()V
    .registers 4

    .line 1037
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->initializeGnss(Z)V

    .line 1038
    const-string v0, "GnssManager"

    const-string/jumbo v1, "gnss hal restarted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_1a

    .line 1041
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;->onHalRestarted()V

    .line 1040
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1043
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method public resumeGeofence(II)Z
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I

    .line 940
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 941
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->resumeGeofence(II)Z

    move-result v0

    return v0
.end method

.method public sendNiResponse(II)V
    .registers 4
    .param p1, "notificationId"    # I
    .param p2, "userResponse"    # I

    .line 972
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 973
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->sendNiResponse(II)V

    .line 974
    return-void
.end method

.method public setAGpsCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;)V
    .registers 4
    .param p1, "callbacks"    # Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    .line 486
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 487
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 488
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    .line 489
    return-void
.end method

.method public setAgpsReferenceLocationCellId(IIIIJIII)V
    .registers 22
    .param p1, "type"    # I
    .param p2, "mcc"    # I
    .param p3, "mnc"    # I
    .param p4, "lac"    # I
    .param p5, "cid"    # J
    .param p7, "tac"    # I
    .param p8, "pcid"    # I
    .param p9, "arfcn"    # I

    .line 1005
    move-object v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1006
    iget-object v2, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->setAgpsReferenceLocationCellId(IIIIJIII)V

    .line 1007
    return-void
.end method

.method public setAgpsServer(ILjava/lang/String;I)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I

    .line 988
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 989
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->setAgpsServer(ILjava/lang/String;I)V

    .line 990
    return-void
.end method

.method public setAgpsSetId(ILjava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "setId"    # Ljava/lang/String;

    .line 996
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 997
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->setAgpsSetId(ILjava/lang/String;)V

    .line 998
    return-void
.end method

.method public setGeofenceCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;)V
    .registers 4
    .param p1, "callbacks"    # Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    .line 462
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 464
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    .line 465
    return-void
.end method

.method setGnssYearOfHardware(I)V
    .registers 2
    .param p1, "year"    # I

    .line 1257
    iput p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareYear:I

    .line 1258
    return-void
.end method

.method public setLocationRequestCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;)V
    .registers 4
    .param p1, "callbacks"    # Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    .line 474
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 475
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 476
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    .line 477
    return-void
.end method

.method public setNotificationCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;)V
    .registers 4
    .param p1, "callbacks"    # Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    .line 492
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 493
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 494
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    .line 495
    return-void
.end method

.method public setPositionMode(IIIIIZ)Z
    .registers 15
    .param p1, "mode"    # I
    .param p2, "recurrence"    # I
    .param p3, "minInterval"    # I
    .param p4, "preferredAccuracy"    # I
    .param p5, "preferredTime"    # I
    .param p6, "lowPowerMode"    # Z

    .line 620
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 621
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->setPositionMode(IIIIIZ)Z

    move-result v0

    return v0
.end method

.method public setPsdsCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;)V
    .registers 4
    .param p1, "callbacks"    # Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

    .line 480
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 481
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPsdsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 482
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPsdsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

    .line 483
    return-void
.end method

.method setSubHalMeasurementCorrectionsCapabilities(I)V
    .registers 4
    .param p1, "capabilities"    # I

    .line 1222
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1223
    .local v0, "oldCapabilities":Landroid/location/GnssCapabilities;
    invoke-virtual {v0, p1}, Landroid/location/GnssCapabilities;->withSubHalMeasurementCorrectionsFlags(I)Landroid/location/GnssCapabilities;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1224
    invoke-direct {p0, v0, v1}, Lcom/android/server/location/gnss/hal/GnssNative;->onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    .line 1225
    return-void
.end method

.method setSubHalPowerIndicationCapabilities(I)V
    .registers 4
    .param p1, "capabilities"    # I

    .line 1230
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1231
    .local v0, "oldCapabilities":Landroid/location/GnssCapabilities;
    invoke-virtual {v0, p1}, Landroid/location/GnssCapabilities;->withSubHalPowerFlags(I)Landroid/location/GnssCapabilities;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1232
    invoke-direct {p0, v0, v1}, Lcom/android/server/location/gnss/hal/GnssNative;->onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    .line 1233
    return-void
.end method

.method public setTimeCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;)V
    .registers 4
    .param p1, "callbacks"    # Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

    .line 468
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTimeCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 470
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTimeCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

    .line 471
    return-void
.end method

.method setTopHalCapabilities(I)V
    .registers 4
    .param p1, "capabilities"    # I

    .line 1213
    iget v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTopFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTopFlags:I

    .line 1214
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1215
    .local v1, "oldCapabilities":Landroid/location/GnssCapabilities;
    invoke-virtual {v1, v0}, Landroid/location/GnssCapabilities;->withTopHalFlags(I)Landroid/location/GnssCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1216
    invoke-direct {p0, v1, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    .line 1217
    return-void
.end method

.method public start()Z
    .registers 5

    .line 590
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 591
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStartRealtimeMs:J

    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHasFirstFix:Z

    .line 596
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->getInstance()Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->blockEngineStart()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 598
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->getInstance()Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->setEngineStatus(I)V

    .line 599
    invoke-static {}, Lcom/android/server/location/gnss/GnssEventTrackingStub;->getInstance()Lcom/android/server/location/gnss/GnssEventTrackingStub;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStartRealtimeMs:J

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/location/gnss/GnssEventTrackingStub;->recordEngineUsage(IJ)V

    .line 600
    return v1

    .line 603
    :cond_2a
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->start()Z

    move-result v0

    return v0
.end method

.method public startAntennaInfoListening()Z
    .registers 2

    .line 774
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 775
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->startAntennaInfoListening()Z

    move-result v0

    return v0
.end method

.method public startBatch(JFZ)Z
    .registers 6
    .param p1, "periodNanos"    # J
    .param p3, "minUpdateDistanceMeters"    # F
    .param p4, "wakeOnFifoFull"    # Z

    .line 889
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 890
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->startBatch(JFZ)Z

    move-result v0

    return v0
.end method

.method public startMeasurementCollection(ZZI)Z
    .registers 5
    .param p1, "enableFullTracking"    # Z
    .param p2, "enableCorrVecOutputs"    # Z
    .param p3, "intervalMillis"    # I

    .line 799
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 800
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->startMeasurementCollection(ZZI)Z

    move-result v0

    return v0
.end method

.method public startNavigationMessageCollection()Z
    .registers 2

    .line 750
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 751
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->startNavigationMessageCollection()Z

    move-result v0

    return v0
.end method

.method public startNmeaMessageCollection()Z
    .registers 2

    .line 832
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 834
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaStatus:Z

    .line 836
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->startNmeaMessageCollection()Z

    move-result v0

    return v0
.end method

.method public startSvStatusCollection()Z
    .registers 2

    .line 816
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 817
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->startSvStatusCollection()Z

    move-result v0

    return v0
.end method

.method public stop()Z
    .registers 2

    .line 610
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 611
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stop()Z

    move-result v0

    return v0
.end method

.method public stopAntennaInfoListening()Z
    .registers 2

    .line 782
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 783
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stopAntennaInfoListening()Z

    move-result v0

    return v0
.end method

.method public stopBatch()V
    .registers 2

    .line 905
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 906
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stopBatch()V

    .line 907
    return-void
.end method

.method public stopMeasurementCollection()Z
    .registers 2

    .line 808
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 809
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stopMeasurementCollection()Z

    move-result v0

    return v0
.end method

.method public stopNavigationMessageCollection()Z
    .registers 2

    .line 758
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 759
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stopNavigationMessageCollection()Z

    move-result v0

    return v0
.end method

.method public stopNmeaMessageCollection()Z
    .registers 2

    .line 843
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 845
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaStatus:Z

    .line 849
    const/4 v0, 0x1

    return v0
.end method

.method public stopSvStatusCollection()Z
    .registers 2

    .line 824
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 825
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stopSvStatusCollection()Z

    move-result v0

    return v0
.end method
