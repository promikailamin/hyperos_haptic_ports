.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$UidMobileRadioStats;,
        Landroid/os/BatteryStats$ProportionalAttributionCalculator;,
        Landroid/os/BatteryStats$HistoryPrinter;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$IntToString;,
        Landroid/os/BatteryStats$RadioAccessTechnology;,
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$HistoryEventTracker;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$HistoryStepDetails;,
        Landroid/os/BatteryStats$HistoryTag;,
        Landroid/os/BatteryStats$DailyItem;,
        Landroid/os/BatteryStats$PackageChange;,
        Landroid/os/BatteryStats$LevelStepTracker;,
        Landroid/os/BatteryStats$Uid;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$ControllerActivityCounter;,
        Landroid/os/BatteryStats$LongCounterArray;,
        Landroid/os/BatteryStats$LongCounter;,
        Landroid/os/BatteryStats$Counter;,
        Landroid/os/BatteryStats$StatName;
    }
.end annotation


# static fields
.field private static final greylist-max-o AGGREGATED_WAKELOCK_DATA:Ljava/lang/String; = "awl"

.field public static final greylist-max-o AGGREGATED_WAKE_TYPE_PARTIAL:I = 0x14

.field private static final greylist-max-o APK_DATA:Ljava/lang/String; = "apk"

.field private static final greylist-max-o AUDIO_DATA:Ljava/lang/String; = "aud"

.field public static final greylist-max-o AUDIO_TURNED_ON:I = 0xf

.field private static final greylist-max-o BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final greylist-max-o BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final greylist-max-o BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final greylist-max-o BATTERY_STATS_CHECKIN_VERSION:I = 0x9

.field private static final greylist-max-o BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "ble"

.field private static final greylist-max-o BLUETOOTH_MISC_DATA:Ljava/lang/String; = "blem"

.field public static final greylist-max-o BLUETOOTH_SCAN_ON:I = 0x13

.field public static final greylist-max-o BLUETOOTH_UNOPTIMIZED_SCAN_ON:I = 0x15

.field private static final greylist-max-o BYTES_PER_GB:J = 0x40000000L

.field private static final greylist-max-o BYTES_PER_KB:J = 0x400L

.field private static final greylist-max-o BYTES_PER_MB:J = 0x100000L

.field private static final greylist-max-o CAMERA_DATA:Ljava/lang/String; = "cam"

.field public static final greylist-max-o CAMERA_TURNED_ON:I = 0x11

.field private static final greylist-max-o CELLULAR_CONTROLLER_NAME:Ljava/lang/String; = "Cellular"

.field private static final greylist-max-o CHARGE_STEP_DATA:Ljava/lang/String; = "csd"

.field private static final greylist-max-o CHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "ctr"

.field private static final blacklist CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

.field static final greylist-max-o CHECKIN_VERSION:I = 0x23

.field private static final greylist-max-o CPU_DATA:Ljava/lang/String; = "cpu"

.field private static final greylist-max-o CPU_TIMES_AT_FREQ_DATA:Ljava/lang/String; = "ctf"

.field private static final greylist-max-o DATA_CONNECTION_COUNT_DATA:Ljava/lang/String; = "dcc"

.field public static final blacklist DATA_CONNECTION_EMERGENCY_SERVICE:I

.field static final greylist-max-o DATA_CONNECTION_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o DATA_CONNECTION_OTHER:I

.field public static final blacklist DATA_CONNECTION_OUT_OF_SERVICE:I = 0x0

.field private static final greylist-max-o DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final greylist-max-o DEVICE_IDLE_MODE_DEEP:I = 0x2

.field public static final greylist-max-o DEVICE_IDLE_MODE_LIGHT:I = 0x1

.field public static final greylist-max-o DEVICE_IDLE_MODE_OFF:I = 0x0

.field private static final greylist-max-o DISCHARGE_STEP_DATA:Ljava/lang/String; = "dsd"

.field private static final greylist-max-o DISCHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "dtr"

.field public static final greylist-max-o DUMP_CHARGED_ONLY:I = 0x2

.field public static final greylist-max-o DUMP_DAILY_ONLY:I = 0x4

.field public static final greylist-max-o DUMP_DEVICE_WIFI_ONLY:I = 0x40

.field public static final greylist-max-o DUMP_HISTORY_ONLY:I = 0x8

.field public static final greylist-max-o DUMP_INCLUDE_HISTORY:I = 0x10

.field public static final greylist-max-o DUMP_VERBOSE:I = 0x20

.field public static final blacklist DURATION_UNAVAILABLE:J = -0x1L

.field private static final greylist-max-o FLASHLIGHT_DATA:Ljava/lang/String; = "fla"

.field public static final greylist-max-o FLASHLIGHT_TURNED_ON:I = 0x10

.field public static final greylist-max-o FOREGROUND_ACTIVITY:I = 0xa

.field private static final greylist-max-o FOREGROUND_ACTIVITY_DATA:Ljava/lang/String; = "fg"

.field public static final greylist-max-o FOREGROUND_SERVICE:I = 0x16

.field private static final greylist-max-o FOREGROUND_SERVICE_DATA:Ljava/lang/String; = "fgs"

.field public static final greylist-max-o FULL_WIFI_LOCK:I = 0x5

.field private static final greylist-max-o GLOBAL_BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "gble"

.field private static final greylist-max-o GLOBAL_CPU_FREQ_DATA:Ljava/lang/String; = "gcf"

.field private static final greylist-max-o GLOBAL_MODEM_CONTROLLER_DATA:Ljava/lang/String; = "gmcd"

.field private static final greylist-max-o GLOBAL_NETWORK_DATA:Ljava/lang/String; = "gn"

.field private static final greylist-max-o GLOBAL_WIFI_CONTROLLER_DATA:Ljava/lang/String; = "gwfcd"

.field private static final greylist-max-o GLOBAL_WIFI_DATA:Ljava/lang/String; = "gwfl"

.field private static final greylist-max-o HISTORY_DATA:Ljava/lang/String; = "h"

.field public static final greylist-max-o HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

.field public static final greylist-max-o HISTORY_EVENT_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field public static final greylist-max-o HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field private static final greylist-max-o HISTORY_STRING_POOL:Ljava/lang/String; = "hsp"

.field public static final greylist-max-o JOB:I = 0xe

.field private static final greylist-max-o JOBS_DEFERRED_DATA:Ljava/lang/String; = "jbd"

.field private static final greylist-max-o JOB_COMPLETION_DATA:Ljava/lang/String; = "jbc"

.field private static final greylist-max-o JOB_DATA:Ljava/lang/String; = "jb"

.field public static final greylist-max-o JOB_FRESHNESS_BUCKETS:[J

.field private static final greylist-max-o KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final greylist-max-o LOCAL_LOGV:Z = false

.field public static final greylist-max-o MAX_TRACKED_SCREEN_STATE:I = 0x4

.field public static final blacklist MILLISECONDS_IN_HOUR:D = 3600000.0

.field private static final greylist-max-o MISC_DATA:Ljava/lang/String; = "m"

.field private static final greylist-max-o MODEM_CONTROLLER_DATA:Ljava/lang/String; = "mcd"

.field public static final greylist-max-o NETWORK_BT_RX_DATA:I = 0x4

.field public static final greylist-max-o NETWORK_BT_TX_DATA:I = 0x5

.field private static final greylist-max-o NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final greylist-max-o NETWORK_MOBILE_BG_RX_DATA:I = 0x6

.field public static final greylist-max-o NETWORK_MOBILE_BG_TX_DATA:I = 0x7

.field public static final greylist-max-o NETWORK_MOBILE_RX_DATA:I = 0x0

.field public static final greylist-max-o NETWORK_MOBILE_TX_DATA:I = 0x1

.field public static final greylist-max-o NETWORK_WIFI_BG_RX_DATA:I = 0x8

.field public static final greylist-max-o NETWORK_WIFI_BG_TX_DATA:I = 0x9

.field public static final greylist-max-o NETWORK_WIFI_RX_DATA:I = 0x2

.field public static final greylist-max-o NETWORK_WIFI_TX_DATA:I = 0x3

.field public static final greylist NUM_DATA_CONNECTION_TYPES:I

.field public static final greylist-max-o NUM_NETWORK_ACTIVITY_TYPES:I = 0xa

.field public static final greylist NUM_SCREEN_BRIGHTNESS_BINS:I = 0x64

.field public static final greylist NUM_SCREEN_BRIGHTNESS_BINS_OLD:I = 0x5

.field public static final greylist-max-o NUM_WIFI_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final blacklist POWER_DATA_UNAVAILABLE:J = -0x1L

.field private static final greylist-max-o POWER_USE_ITEM_DATA:Ljava/lang/String; = "pwi"

.field private static final greylist-max-o POWER_USE_SUMMARY_DATA:Ljava/lang/String; = "pws"

.field private static final greylist-max-o PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final greylist-max-o PROCESS_STATE:I = 0xc

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_COUNT:I = 0x3

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_LTE:I = 0x1

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_NR:I = 0x2

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_OTHER:I = 0x0

.field private static final greylist-max-o RESOURCE_POWER_MANAGER_DATA:Ljava/lang/String; = "rpm"

.field public static final greylist-max-o RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field public static final greylist-max-o SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final greylist-max-o SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final greylist-max-o SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final greylist-max-o SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final greylist-max-o SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final greylist-max-o SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field static greylist-max-o SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String; = null

.field static final blacklist SCREEN_BRIGHTNESS_NAMES_OLD:[Ljava/lang/String;

.field static greylist-max-o SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String; = null

.field static final blacklist SCREEN_BRIGHTNESS_SHORT_NAMES_OLD:[Ljava/lang/String;

.field protected static final greylist-max-o SCREEN_OFF_RPM_STATS_ENABLED:Z = false

.field public static final greylist-max-o SENSOR:I = 0x3

.field private static final greylist-max-o SENSOR_DATA:Ljava/lang/String; = "sr"

.field public static final greylist-max-o SERVICE_NAME:Ljava/lang/String; = "batterystats"

.field private static final greylist-max-o SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final greylist-max-o SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field private static final greylist-max-o SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field private static final greylist-max-o STATE_TIME_DATA:Ljava/lang/String; = "st"

.field public static final greylist STATS_CURRENT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o STATS_SINCE_CHARGED:I = 0x0

.field public static final greylist-max-o STATS_SINCE_UNPLUGGED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o STAT_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o STEP_LEVEL_INITIAL_MODE_MASK:J = 0xff000000000000L

.field public static final greylist-max-o STEP_LEVEL_INITIAL_MODE_SHIFT:I = 0x30

.field public static final greylist-max-o STEP_LEVEL_LEVEL_MASK:J = 0xff0000000000L

.field public static final greylist-max-o STEP_LEVEL_LEVEL_SHIFT:I = 0x28

.field public static final greylist-max-o STEP_LEVEL_MODES_OF_INTEREST:[I

.field public static final greylist-max-o STEP_LEVEL_MODE_DEVICE_IDLE:I = 0x8

.field public static final greylist-max-o STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

.field public static final greylist-max-o STEP_LEVEL_MODE_POWER_SAVE:I = 0x4

.field public static final greylist-max-o STEP_LEVEL_MODE_SCREEN_STATE:I = 0x3

.field public static final greylist-max-o STEP_LEVEL_MODE_VALUES:[I

.field public static final greylist-max-o STEP_LEVEL_MODIFIED_MODE_MASK:J = -0x100000000000000L

.field public static final greylist-max-o STEP_LEVEL_MODIFIED_MODE_SHIFT:I = 0x38

.field public static final greylist-max-o STEP_LEVEL_TIME_MASK:J = 0xffffffffffL

.field public static final greylist-max-o SYNC:I = 0xd

.field private static final greylist-max-o SYNC_DATA:Ljava/lang/String; = "sy"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BatteryStats"

.field private static final greylist-max-o UID_DATA:Ljava/lang/String; = "uid"

.field public static final greylist-max-o UID_TIMES_TYPE_ALL:Ljava/lang/String; = "A"

.field private static final greylist-max-o USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final greylist-max-o VERSION_DATA:Ljava/lang/String; = "vers"

.field private static final greylist-max-o VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final greylist-max-o VIBRATOR_ON:I = 0x9

.field private static final greylist-max-o VIDEO_DATA:Ljava/lang/String; = "vid"

.field public static final greylist-max-o VIDEO_TURNED_ON:I = 0x8

.field private static final greylist-max-o WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field private static final greylist-max-o WAKEUP_ALARM_DATA:Ljava/lang/String; = "wua"

.field private static final greylist-max-o WAKEUP_REASON_DATA:Ljava/lang/String; = "wr"

.field public static final greylist-max-o WAKE_TYPE_DRAW:I = 0x12

.field public static final greylist-max-o WAKE_TYPE_FULL:I = 0x1

.field public static final greylist-max-r WAKE_TYPE_PARTIAL:I = 0x0

.field public static final greylist-max-o WAKE_TYPE_WINDOW:I = 0x2

.field public static final greylist-max-o WIFI_AGGREGATE_MULTICAST_ENABLED:I = 0x17

.field public static final greylist-max-o WIFI_BATCHED_SCAN:I = 0xb

.field private static final greylist-max-o WIFI_CONTROLLER_DATA:Ljava/lang/String; = "wfcd"

.field private static final greylist-max-o WIFI_CONTROLLER_NAME:Ljava/lang/String; = "WiFi"

.field private static final greylist-max-o WIFI_DATA:Ljava/lang/String; = "wfl"

.field private static final greylist-max-o WIFI_MULTICAST_DATA:Ljava/lang/String; = "wmc"

.field public static final greylist-max-o WIFI_MULTICAST_ENABLED:I = 0x7

.field private static final greylist-max-o WIFI_MULTICAST_TOTAL_DATA:Ljava/lang/String; = "wmct"

.field public static final greylist-max-o WIFI_RUNNING:I = 0x4

.field public static final greylist-max-o WIFI_SCAN:I = 0x6

.field private static final greylist-max-o WIFI_SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "wsgc"

.field private static final greylist-max-o WIFI_SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "wsgt"

.field private static final greylist-max-o WIFI_STATE_COUNT_DATA:Ljava/lang/String; = "wsc"

.field static final greylist-max-o WIFI_STATE_NAMES:[Ljava/lang/String;

.field private static final greylist-max-o WIFI_STATE_TIME_DATA:Ljava/lang/String; = "wst"

.field private static final greylist-max-o WIFI_SUPPL_STATE_COUNT_DATA:Ljava/lang/String; = "wssc"

.field static final greylist-max-o WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

.field static final greylist-max-o WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

.field private static final greylist-max-o WIFI_SUPPL_STATE_TIME_DATA:Ljava/lang/String; = "wsst"

.field private static final greylist-max-o sIntToString:Landroid/os/BatteryStats$IntToString;

.field private static final greylist-max-o sUidToString:Landroid/os/BatteryStats$IntToString;


# instance fields
.field private final greylist-max-o mFormatBuilder:Ljava/lang/StringBuilder;

.field private final greylist-max-o mFormatter:Ljava/util/Formatter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 40

    .line 252
    const-string/jumbo v0, "l"

    const-string v1, "c"

    const-string/jumbo v2, "u"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    .line 425
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_534

    sput-object v1, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    .line 2387
    const-string v1, "dark"

    const-string v2, "dim"

    const-string/jumbo v3, "medium"

    const-string/jumbo v4, "light"

    const-string v5, "bright"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES_OLD:[Ljava/lang/String;

    .line 2391
    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v5, "3"

    const-string v6, "4"

    filled-new-array {v1, v2, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES_OLD:[Ljava/lang/String;

    .line 2399
    const/16 v7, 0x64

    new-array v7, v7, [Ljava/lang/String;

    sput-object v7, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    .line 2400
    const/16 v7, 0x64

    new-array v7, v7, [Ljava/lang/String;

    sput-object v7, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    .line 2402
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_45
    const/16 v8, 0x64

    if-ge v7, v8, :cond_6b

    .line 2403
    sget-object v8, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "brightness-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 2404
    sget-object v8, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 2402
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 2649
    .end local v7    # "i":I
    :cond_6b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    sput v7, Landroid/os/BatteryStats;->DATA_CONNECTION_EMERGENCY_SERVICE:I

    .line 2650
    add-int/lit8 v7, v7, 0x1

    sput v7, Landroid/os/BatteryStats;->DATA_CONNECTION_OTHER:I

    .line 2653
    const-string/jumbo v8, "oos"

    const-string/jumbo v9, "gprs"

    const-string v10, "edge"

    const-string/jumbo v11, "umts"

    const-string v12, "cdma"

    const-string v13, "evdo_0"

    const-string v14, "evdo_A"

    const-string v15, "1xrtt"

    const-string/jumbo v16, "hsdpa"

    const-string/jumbo v17, "hsupa"

    const-string/jumbo v18, "hspa"

    const-string/jumbo v19, "iden"

    const-string v20, "evdo_b"

    const-string/jumbo v21, "lte"

    const-string v22, "ehrpd"

    const-string/jumbo v23, "hspap"

    const-string/jumbo v24, "gsm"

    const-string/jumbo v25, "td_scdma"

    const-string/jumbo v26, "iwlan"

    const-string/jumbo v27, "lte_ca"

    const-string/jumbo v28, "nr"

    const-string v29, "emngcy"

    const-string/jumbo v30, "other"

    filled-new-array/range {v8 .. v30}, [Ljava/lang/String;

    move-result-object v37

    sput-object v37, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    .line 2661
    add-int/lit8 v7, v7, 0x1

    sput v7, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    .line 2703
    const-string v7, "Other"

    const-string v8, "LTE"

    const-string v9, "NR"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/os/BatteryStats;->RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

    .line 2765
    const-string/jumbo v8, "invalid"

    const-string v9, "disconn"

    const-string v10, "disabled"

    const-string/jumbo v11, "inactive"

    const-string/jumbo v12, "scanning"

    const-string v13, "authenticating"

    const-string v14, "associating"

    const-string v15, "associated"

    const-string v16, "4-way-handshake"

    const-string/jumbo v17, "group-handshake"

    const-string v18, "completed"

    const-string v19, "dormant"

    const-string/jumbo v20, "uninit"

    filled-new-array/range {v8 .. v20}, [Ljava/lang/String;

    move-result-object v26

    sput-object v26, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    .line 2771
    const-string/jumbo v7, "inv"

    const-string v8, "dsc"

    const-string v9, "dis"

    const-string/jumbo v10, "inact"

    const-string/jumbo v11, "scan"

    const-string v12, "auth"

    const-string v13, "ascing"

    const-string v14, "asced"

    const-string v15, "4-way"

    const-string/jumbo v16, "group"

    const-string v17, "compl"

    const-string v18, "dorm"

    const-string/jumbo v19, "uninit"

    filled-new-array/range {v7 .. v19}, [Ljava/lang/String;

    move-result-object v27

    sput-object v27, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    .line 2875
    const/16 v7, 0x12

    new-array v7, v7, [Landroid/os/BatteryStats$BitDescription;

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/high16 v9, -0x80000000

    const-string/jumbo v10, "running"

    const-string/jumbo v11, "r"

    invoke-direct {v8, v9, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/high16 v9, 0x40000000    # 2.0f

    const-string/jumbo v10, "wake_lock"

    const-string/jumbo v11, "w"

    invoke-direct {v8, v9, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    aput-object v8, v7, v9

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/high16 v9, 0x800000

    const-string/jumbo v10, "sensor"

    const-string/jumbo v11, "s"

    invoke-direct {v8, v9, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x2

    aput-object v8, v7, v9

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/high16 v9, 0x20000000

    const-string/jumbo v10, "gps"

    const-string v11, "g"

    invoke-direct {v8, v9, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x3

    aput-object v8, v7, v9

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/high16 v9, 0x10000000

    const-string/jumbo v10, "wifi_full_lock"

    const-string v11, "Wl"

    invoke-direct {v8, v9, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x4

    aput-object v8, v7, v9

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/high16 v9, 0x8000000

    const-string/jumbo v10, "wifi_scan"

    const-string v11, "Ws"

    invoke-direct {v8, v9, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v8, v7, v0

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/high16 v9, 0x10000

    const-string/jumbo v10, "wifi_multicast"

    const-string v11, "Wm"

    invoke-direct {v8, v9, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x6

    aput-object v8, v7, v9

    const/4 v8, 0x7

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v10, 0x4000000

    const-string/jumbo v11, "wifi_radio"

    const-string v12, "Wr"

    invoke-direct {v9, v10, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v7, v8

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/high16 v9, 0x2000000

    const-string/jumbo v10, "mobile_radio"

    const-string v11, "Pr"

    invoke-direct {v8, v9, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x8

    aput-object v8, v7, v9

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/high16 v9, 0x200000

    const-string/jumbo v10, "phone_scanning"

    const-string v11, "Psc"

    invoke-direct {v8, v9, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x9

    aput-object v8, v7, v9

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/high16 v9, 0x400000

    const-string v10, "audio"

    const-string v11, "a"

    invoke-direct {v8, v9, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xa

    aput-object v8, v7, v9

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/high16 v9, 0x100000

    const-string/jumbo v10, "screen"

    const-string v11, "S"

    invoke-direct {v8, v9, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xb

    aput-object v8, v7, v9

    const/16 v8, 0xc

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const/high16 v10, 0x80000

    const-string/jumbo v11, "plugged"

    const-string v12, "BP"

    invoke-direct {v9, v10, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v7, v8

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/high16 v9, 0x40000

    const-string/jumbo v10, "screen_doze"

    const-string v11, "Sd"

    invoke-direct {v8, v9, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xd

    aput-object v8, v7, v9

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/16 v32, 0x3e00

    const/16 v33, 0x9

    const-string v34, "data_conn"

    const-string v35, "Pcn"

    move-object/from16 v31, v8

    move-object/from16 v36, v37

    invoke-direct/range {v31 .. v37}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v9, 0xe

    aput-object v8, v7, v9

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/16 v11, 0x1c0

    const/4 v12, 0x6

    const-string/jumbo v9, "in"

    const-string/jumbo v10, "out"

    const-string v13, "emergency"

    const-string/jumbo v15, "off"

    filled-new-array {v9, v10, v13, v15}, [Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "in"

    const-string/jumbo v13, "out"

    const-string v14, "em"

    filled-new-array {v10, v13, v14, v15}, [Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v13, "phone_state"

    const-string v14, "Pst"

    move-object v10, v8

    move-object v0, v15

    move-object v15, v9

    invoke-direct/range {v10 .. v16}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v9, 0xf

    aput-object v8, v7, v9

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/16 v11, 0x38

    const/4 v12, 0x3

    const-string/jumbo v9, "none"

    const-string/jumbo v10, "poor"

    const-string/jumbo v13, "moderate"

    const-string/jumbo v14, "good"

    const-string/jumbo v15, "great"

    filled-new-array {v9, v10, v13, v14, v15}, [Ljava/lang/String;

    move-result-object v15

    filled-new-array {v1, v2, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v13, "phone_signal_strength"

    const-string v14, "Pss"

    move-object v10, v8

    invoke-direct/range {v10 .. v16}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v9, 0x10

    aput-object v8, v7, v9

    const/16 v8, 0x11

    new-instance v16, Landroid/os/BatteryStats$BitDescription;

    const/4 v10, 0x7

    const/4 v11, 0x0

    sget-object v14, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    sget-object v15, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    const-string v12, "brightness"

    const-string v13, "Sb"

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v16, v7, v8

    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    .line 2906
    const/16 v7, 0x10

    new-array v7, v7, [Landroid/os/BatteryStats$BitDescription;

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/high16 v9, -0x80000000

    const-string/jumbo v10, "power_save"

    const-string/jumbo v11, "ps"

    invoke-direct {v8, v9, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/high16 v9, 0x40000000    # 2.0f

    const-string/jumbo v10, "video"

    const-string/jumbo v11, "v"

    invoke-direct {v8, v9, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    aput-object v8, v7, v9

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/high16 v9, 0x20000000

    const-string/jumbo v10, "wifi_running"

    const-string v11, "Ww"

    invoke-direct {v8, v9, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x2

    aput-object v8, v7, v9

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/high16 v9, 0x10000000

    const-string/jumbo v10, "wifi"

    const-string v11, "W"

    invoke-direct {v8, v9, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x3

    aput-object v8, v7, v9

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/high16 v9, 0x8000000

    const-string v10, "flashlight"

    const-string v11, "fl"

    invoke-direct {v8, v9, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x4

    aput-object v8, v7, v9

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const/high16 v11, 0x6000000

    const/16 v12, 0x19

    const-string v9, "full"

    const-string v10, "???"

    filled-new-array {v0, v4, v9, v10}, [Ljava/lang/String;

    move-result-object v15

    const-string v9, "full"

    const-string v10, "???"

    filled-new-array {v0, v4, v9, v10}, [Ljava/lang/String;

    move-result-object v16

    const-string v13, "device_idle"

    const-string v14, "di"

    move-object v10, v8

    invoke-direct/range {v10 .. v16}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x5

    aput-object v8, v7, v0

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v4, 0x1000000

    const-string v8, "charging"

    const-string v9, "ch"

    invoke-direct {v0, v4, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x6

    aput-object v0, v7, v4

    const/4 v0, 0x7

    new-instance v4, Landroid/os/BatteryStats$BitDescription;

    const/high16 v8, 0x40000

    const-string/jumbo v9, "usb_data"

    const-string v10, "Ud"

    invoke-direct {v4, v8, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v4, v7, v0

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v4, 0x800000

    const-string/jumbo v8, "phone_in_call"

    const-string v9, "Pcl"

    invoke-direct {v0, v4, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x8

    aput-object v0, v7, v4

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v4, 0x400000

    const-string v8, "bluetooth"

    const-string v9, "b"

    invoke-direct {v0, v4, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x9

    aput-object v0, v7, v4

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/16 v9, 0x70

    const/4 v10, 0x4

    filled-new-array {v1, v2, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v13

    filled-new-array {v1, v2, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v11, "wifi_signal_strength"

    const-string v12, "Wss"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/16 v22, 0xf

    const/16 v23, 0x0

    const-string/jumbo v24, "wifi_suppl"

    const-string v25, "Wsp"

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v27}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xb

    aput-object v0, v7, v1

    const/16 v0, 0xc

    new-instance v1, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x200000

    const-string v3, "camera"

    const-string v4, "ca"

    invoke-direct {v1, v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v7, v0

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v1, 0x100000

    const-string v2, "ble_scan"

    const-string v3, "bles"

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xd

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v1, 0x80000

    const-string v2, "cellular_high_tx_power"

    const-string v3, "Chtp"

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xe

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/16 v9, 0x80

    const/4 v10, 0x7

    const-string/jumbo v1, "poor"

    const-string/jumbo v2, "good"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v1, "poor"

    const-string/jumbo v2, "good"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v11, "gps_signal_quality"

    const-string v12, "Gss"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xf

    aput-object v0, v7, v1

    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    .line 2936
    const-string/jumbo v18, "null"

    const-string/jumbo v19, "proc"

    const-string v20, "fg"

    const-string/jumbo v21, "top"

    const-string/jumbo v22, "sync"

    const-string/jumbo v23, "wake_lock_in"

    const-string/jumbo v24, "job"

    const-string/jumbo v25, "user"

    const-string/jumbo v26, "userfg"

    const-string v27, "conn"

    const-string v28, "active"

    const-string/jumbo v29, "pkginst"

    const-string/jumbo v30, "pkgunin"

    const-string v31, "alarm"

    const-string/jumbo v32, "stats"

    const-string/jumbo v33, "pkginactive"

    const-string/jumbo v34, "pkgactive"

    const-string/jumbo v35, "tmpwhitelist"

    const-string/jumbo v36, "screenwake"

    const-string/jumbo v37, "wakeupap"

    const-string/jumbo v38, "longwake"

    const-string v39, "est_capacity"

    filled-new-array/range {v18 .. v39}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    .line 2942
    const-string v18, "Enl"

    const-string v19, "Epr"

    const-string v20, "Efg"

    const-string v21, "Etp"

    const-string v22, "Esy"

    const-string v23, "Ewl"

    const-string v24, "Ejb"

    const-string v25, "Eur"

    const-string v26, "Euf"

    const-string v27, "Ecn"

    const-string v28, "Eac"

    const-string v29, "Epi"

    const-string v30, "Epu"

    const-string v31, "Eal"

    const-string v32, "Est"

    const-string v33, "Eai"

    const-string v34, "Eaa"

    const-string v35, "Etw"

    const-string v36, "Esw"

    const-string v37, "Ewa"

    const-string v38, "Elw"

    const-string v39, "Eec"

    filled-new-array/range {v18 .. v39}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    .line 2953
    new-instance v0, Landroid/os/BatteryStats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/BatteryStats$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    .line 2954
    new-instance v1, Landroid/os/BatteryStats$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/os/BatteryStats$$ExternalSyntheticLambda1;-><init>()V

    sput-object v1, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    .line 2956
    const/16 v2, 0x16

    new-array v2, v2, [Landroid/os/BatteryStats$IntToString;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const/4 v3, 0x5

    aput-object v0, v2, v3

    const/4 v3, 0x6

    aput-object v0, v2, v3

    const/4 v3, 0x7

    aput-object v0, v2, v3

    const/16 v3, 0x8

    aput-object v0, v2, v3

    const/16 v3, 0x9

    aput-object v0, v2, v3

    const/16 v3, 0xa

    aput-object v0, v2, v3

    const/16 v3, 0xb

    aput-object v1, v2, v3

    const/16 v3, 0xc

    aput-object v0, v2, v3

    const/16 v3, 0xd

    aput-object v0, v2, v3

    const/16 v3, 0xe

    aput-object v0, v2, v3

    const/16 v3, 0xf

    aput-object v0, v2, v3

    const/16 v3, 0x10

    aput-object v0, v2, v3

    const/16 v3, 0x11

    aput-object v0, v2, v3

    const/16 v3, 0x12

    aput-object v0, v2, v3

    const/16 v3, 0x13

    aput-object v0, v2, v3

    const/16 v3, 0x14

    aput-object v0, v2, v3

    const/16 v0, 0x15

    aput-object v1, v2, v0

    sput-object v2, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    .line 3005
    const-string/jumbo v3, "off"

    const-string/jumbo v4, "scanning"

    const-string/jumbo v5, "no_net"

    const-string v6, "disconn"

    const-string/jumbo v7, "sta"

    const-string/jumbo v8, "p2p"

    const-string/jumbo v9, "sta_p2p"

    const-string/jumbo v10, "soft_ap"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    .line 3390
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_54c

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    .line 3402
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_564

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    .line 3414
    const-string/jumbo v1, "screen off"

    const-string/jumbo v2, "screen off power save"

    const-string/jumbo v3, "screen off device idle"

    const-string/jumbo v4, "screen on"

    const-string/jumbo v5, "screen on power save"

    const-string/jumbo v6, "screen doze"

    const-string/jumbo v7, "screen doze power save"

    const-string/jumbo v8, "screen doze-suspend"

    const-string/jumbo v9, "screen doze-suspend power save"

    const-string/jumbo v10, "screen doze-suspend device idle"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    .line 4270
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    .line 4274
    const-string/jumbo v1, "scrn"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4275
    const-string v1, "cpu"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4276
    const-string v1, "blue"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4277
    const-string v1, "camera"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 4278
    const-string v1, "audio"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 4279
    const-string/jumbo v1, "video"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 4280
    const-string v1, "flashlight"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 4281
    const-string v1, "cell"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 4282
    const-string/jumbo v1, "sensors"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 4283
    const-string/jumbo v1, "gnss"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 4284
    const-string/jumbo v1, "wifi"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 4285
    const-string/jumbo v1, "memory"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 4286
    const-string/jumbo v1, "phone"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 4287
    const-string v1, "ambi"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 4288
    const-string/jumbo v1, "idle"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 4289
    return-void

    :array_534
    .array-data 8
        0x36ee80
        0x6ddd00
        0xdbba00
        0x1b77400
        0x7fffffffffffffffL
    .end array-data

    :array_54c
    .array-data 4
        0x7
        0xf
        0xb
        0x7
        0x7
        0x7
        0x7
        0x7
        0xf
        0xb
    .end array-data

    :array_564
    .array-data 4
        0x0
        0x4
        0x8
        0x1
        0x5
        0x2
        0x6
        0x3
        0x7
        0xb
    .end array-data
.end method

.method public constructor greylist-max-p <init>()V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 406
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    .line 84
    return-void
.end method

.method public static blacklist checkWifiOnly(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 8727
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 8728
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_c

    .line 8729
    const/4 v1, 0x0

    return v1

    .line 8731
    :cond_c
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static greylist-max-o computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .registers 10
    .param p0, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 3654
    if-eqz p0, :cond_d

    .line 3656
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    .line 3657
    .local v0, "totalTimeMicros":J
    const-wide/16 v2, 0x1f4

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 3658
    .local v2, "totalTimeMillis":J
    return-wide v2

    .line 3660
    .end local v0    # "totalTimeMicros":J
    .end local v2    # "totalTimeMillis":J
    :cond_d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static greylist-max-o controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z
    .registers 12
    .param p0, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p1, "which"    # I

    .line 3909
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 3910
    return v0

    .line 3913
    :cond_4
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_4f

    .line 3914
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4f

    .line 3915
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4f

    .line 3916
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_38

    goto :goto_4f

    .line 3920
    :cond_38
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    array-length v5, v1

    move v6, v0

    :goto_3e
    if-ge v6, v5, :cond_4e

    aget-object v7, v1, v6

    .line 3921
    .local v7, "c":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {v7, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    cmp-long v8, v8, v3

    if-eqz v8, :cond_4b

    .line 3922
    return v2

    .line 3920
    .end local v7    # "c":Landroid/os/BatteryStats$LongCounter;
    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 3925
    :cond_4e
    return v0

    .line 3917
    :cond_4f
    :goto_4f
    return v2
.end method

.method private static final greylist-max-o dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 13
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p5, "which"    # I

    .line 3940
    invoke-static {p4, p5}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3941
    return-void

    .line 3944
    :cond_7
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 3945
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3946
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 3947
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3948
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 3949
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3950
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x414b774000000000L    # 3600000.0

    div-double/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(D)V

    .line 3951
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3952
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(D)V

    .line 3954
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_53
    if-ge v3, v2, :cond_64

    aget-object v4, v1, v3

    .line 3955
    .local v4, "c":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3956
    invoke-virtual {v4, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 3954
    .end local v4    # "c":Landroid/os/BatteryStats$LongCounter;
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 3958
    :cond_64
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 3959
    return-void
.end method

.method private static greylist-max-o dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 16
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p4, "which"    # I

    .line 3967
    invoke-static {p3, p4}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3968
    return-void

    .line 3971
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3973
    .local v0, "cToken":J
    const-wide v2, 0x10300000001L

    .line 3974
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    .line 3973
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3975
    nop

    .line 3976
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    .line 3975
    const-wide v4, 0x10300000002L

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3977
    const-wide v2, 0x10300000003L

    .line 3978
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    invoke-virtual {v6, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x414b774000000000L    # 3600000.0

    div-double/2addr v6, v8

    .line 3977
    invoke-virtual {p0, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 3979
    const-wide v2, 0x10100000005L

    .line 3980
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    invoke-virtual {v6, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v8

    .line 3979
    invoke-virtual {p0, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 3984
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    .line 3985
    .local v2, "txCounters":[Landroid/os/BatteryStats$LongCounter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5a
    array-length v6, v2

    if-ge v3, v6, :cond_7d

    .line 3986
    aget-object v6, v2, v3

    .line 3987
    .local v6, "c":Landroid/os/BatteryStats$LongCounter;
    const-wide v7, 0x20b00000004L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 3988
    .local v7, "tToken":J
    const-wide v9, 0x10500000001L

    invoke-virtual {p0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3989
    invoke-virtual {v6, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    invoke-virtual {p0, v4, v5, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3990
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3985
    .end local v6    # "c":Landroid/os/BatteryStats$LongCounter;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 3993
    .end local v3    # "i":I
    .end local v7    # "tToken":J
    :cond_7d
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3994
    return-void
.end method

.method private greylist-max-o dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V
    .registers 24
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;
    .param p5, "tmpSb"    # Ljava/lang/StringBuilder;
    .param p6, "tmpOutInt"    # [I

    .line 7445
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    if-nez p4, :cond_9

    .line 7446
    return-void

    .line 7448
    :cond_9
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v9

    .line 7449
    .local v9, "timeRemaining":J
    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    const-string v13, " steps)"

    const-string v14, " (from "

    const/4 v15, 0x0

    if-ltz v3, :cond_3f

    .line 7450
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " total time: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7451
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7452
    invoke-static {v2, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 7453
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7454
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v3, p6, v15

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 7455
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7457
    :cond_3f
    const/4 v3, 0x0

    move v8, v3

    .local v8, "i":I
    :goto_41
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v4, v3

    if-ge v8, v4, :cond_8a

    .line 7458
    aget v3, v3, v8

    int-to-long v4, v3

    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v3, v3, v8

    int-to-long v6, v3

    move-object/from16 v3, p4

    move/from16 v16, v8

    .end local v8    # "i":I
    .local v16, "i":I
    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v3

    .line 7460
    .local v3, "estimatedTime":J
    cmp-long v5, v3, v11

    if-lez v5, :cond_87

    .line 7461
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7462
    sget-object v5, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v5, v5, v16

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7463
    const-string v5, " time: "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7464
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7465
    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 7466
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7467
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v5, p6, v15

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 7468
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7457
    .end local v3    # "estimatedTime":J
    :cond_87
    add-int/lit8 v8, v16, 0x1

    .end local v16    # "i":I
    .restart local v8    # "i":I
    goto :goto_41

    .line 7471
    .end local v8    # "i":I
    :cond_8a
    return-void
.end method

.method private greylist-max-o dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;)V"
        }
    .end annotation

    .line 7475
    .local p3, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    if-nez p3, :cond_3

    .line 7476
    return-void

    .line 7478
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package changes:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7479
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 7480
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$PackageChange;

    .line 7481
    .local v1, "pc":Landroid/os/BatteryStats$PackageChange;
    iget-boolean v2, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v2, :cond_34

    .line 7482
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Update "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7483
    const-string v2, " vers="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_41

    .line 7485
    :cond_34
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Uninstall "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7479
    .end local v1    # "pc":Landroid/os/BatteryStats$PackageChange;
    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 7488
    .end local v0    # "i":I
    :cond_44
    return-void
.end method

.method private static greylist-max-o dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V
    .registers 25
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;

    .line 7300
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_7

    .line 7301
    return-void

    .line 7303
    :cond_7
    iget v2, v1, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 7304
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_93

    .line 7305
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 7306
    .local v4, "token":J
    const-wide v6, 0x10300000001L

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v8

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7307
    const-wide v6, 0x10500000002L

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7309
    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v6

    int-to-long v6, v6

    .line 7310
    .local v6, "initMode":J
    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v8

    int-to-long v8, v8

    .line 7312
    .local v8, "modMode":J
    const/4 v10, 0x0

    .line 7313
    .local v10, "ds":I
    const-wide/16 v11, 0x3

    and-long v13, v8, v11

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    const/4 v14, 0x1

    if-nez v13, :cond_4d

    .line 7314
    and-long/2addr v11, v6

    long-to-int v11, v11

    add-int/2addr v11, v14

    packed-switch v11, :pswitch_data_94

    .line 7328
    const/4 v10, 0x5

    goto :goto_4d

    .line 7325
    :pswitch_46
    const/4 v10, 0x4

    .line 7326
    goto :goto_4d

    .line 7322
    :pswitch_48
    const/4 v10, 0x3

    .line 7323
    goto :goto_4d

    .line 7319
    :pswitch_4a
    const/4 v10, 0x1

    .line 7320
    goto :goto_4d

    .line 7316
    :pswitch_4c
    const/4 v10, 0x2

    .line 7332
    :cond_4d
    :goto_4d
    const-wide v11, 0x10e00000003L

    invoke-virtual {v0, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7334
    const/4 v11, 0x0

    .line 7335
    .local v11, "psm":I
    const-wide/16 v12, 0x4

    and-long v17, v8, v12

    cmp-long v17, v17, v15

    const/16 v18, 0x2

    if-nez v17, :cond_69

    .line 7336
    and-long/2addr v12, v6

    cmp-long v12, v12, v15

    if-eqz v12, :cond_66

    .line 7337
    goto :goto_68

    :cond_66
    move/from16 v14, v18

    :goto_68
    move v11, v14

    .line 7339
    :cond_69
    const-wide v12, 0x10e00000004L

    invoke-virtual {v0, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7341
    const/4 v12, 0x0

    .line 7342
    .local v12, "im":I
    const-wide/16 v13, 0x8

    and-long v19, v8, v13

    cmp-long v17, v19, v15

    if-nez v17, :cond_84

    .line 7343
    and-long/2addr v13, v6

    cmp-long v13, v13, v15

    if-eqz v13, :cond_80

    .line 7344
    goto :goto_82

    :cond_80
    const/16 v18, 0x3

    :goto_82
    move/from16 v12, v18

    .line 7346
    :cond_84
    const-wide v13, 0x10e00000005L

    invoke-virtual {v0, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7348
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7304
    .end local v4    # "token":J
    .end local v6    # "initMode":J
    .end local v8    # "modMode":J
    .end local v10    # "ds":I
    .end local v11    # "psm":I
    .end local v12    # "im":I
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    .line 7350
    .end local v3    # "i":I
    :cond_93
    return-void

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_4a
        :pswitch_48
        :pswitch_46
    .end packed-switch
.end method

.method private static greylist-max-o dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z
    .registers 32
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;
    .param p4, "checkin"    # Z

    .line 7219
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-nez v2, :cond_a

    .line 7220
    return v3

    .line 7222
    :cond_a
    iget v4, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 7223
    .local v4, "count":I
    if-gtz v4, :cond_f

    .line 7224
    return v3

    .line 7226
    :cond_f
    if-nez p4, :cond_14

    .line 7227
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7229
    :cond_14
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    .line 7230
    .local v5, "lineArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_18
    const/4 v7, 0x1

    if-ge v6, v4, :cond_158

    .line 7231
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v8

    .line 7232
    .local v8, "duration":J
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v10

    .line 7233
    .local v10, "level":I
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v11

    int-to-long v11, v11

    .line 7234
    .local v11, "initMode":J
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v13

    int-to-long v13, v13

    .line 7235
    .local v13, "modMode":J
    const-wide/16 v15, 0x8

    const-wide/16 v17, 0x4

    const-wide/16 v19, 0x3

    const-wide/16 v21, 0x0

    if-eqz p4, :cond_b4

    .line 7236
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v3

    .line 7237
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v7

    .line 7238
    and-long v23, v13, v19

    cmp-long v23, v23, v21

    const-string v24, ""

    const/16 v25, 0x2

    if-nez v23, :cond_73

    .line 7239
    move/from16 v26, v4

    .end local v4    # "count":I
    .local v26, "count":I
    and-long v3, v11, v19

    long-to-int v3, v3

    add-int/2addr v3, v7

    packed-switch v3, :pswitch_data_15a

    .line 7244
    const-string v3, "?"

    aput-object v3, v5, v25

    goto :goto_77

    .line 7243
    :pswitch_5b
    const-string/jumbo v3, "sds"

    aput-object v3, v5, v25

    goto :goto_77

    .line 7242
    :pswitch_61
    const-string/jumbo v3, "sd"

    aput-object v3, v5, v25

    goto :goto_77

    .line 7241
    :pswitch_67
    const-string/jumbo v3, "s+"

    aput-object v3, v5, v25

    goto :goto_77

    .line 7240
    :pswitch_6d
    const-string/jumbo v3, "s-"

    aput-object v3, v5, v25

    goto :goto_77

    .line 7247
    .end local v26    # "count":I
    .restart local v4    # "count":I
    :cond_73
    move/from16 v26, v4

    .end local v4    # "count":I
    .restart local v26    # "count":I
    aput-object v24, v5, v25

    .line 7249
    :goto_77
    and-long v3, v13, v17

    cmp-long v3, v3, v21

    const/4 v4, 0x3

    if-nez v3, :cond_8e

    .line 7250
    and-long v17, v11, v17

    cmp-long v3, v17, v21

    if-eqz v3, :cond_88

    const-string/jumbo v3, "p+"

    goto :goto_8b

    :cond_88
    const-string/jumbo v3, "p-"

    :goto_8b
    aput-object v3, v5, v4

    goto :goto_90

    .line 7252
    :cond_8e
    aput-object v24, v5, v4

    .line 7254
    :goto_90
    and-long v3, v13, v15

    cmp-long v3, v3, v21

    const/4 v4, 0x4

    if-nez v3, :cond_a6

    .line 7255
    and-long/2addr v15, v11

    cmp-long v3, v15, v21

    if-eqz v3, :cond_a0

    const-string/jumbo v3, "i+"

    goto :goto_a3

    :cond_a0
    const-string/jumbo v3, "i-"

    :goto_a3
    aput-object v3, v5, v4

    goto :goto_a8

    .line 7257
    :cond_a6
    aput-object v24, v5, v4

    .line 7259
    :goto_a8
    move-object v3, v5

    check-cast v3, [Ljava/lang/Object;

    const-string/jumbo v4, "i"

    const/4 v7, 0x0

    invoke-static {v0, v7, v4, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_14d

    .line 7261
    .end local v26    # "count":I
    .restart local v4    # "count":I
    :cond_b4
    move/from16 v26, v4

    .end local v4    # "count":I
    .restart local v26    # "count":I
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7262
    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7263
    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 7264
    const-string v4, " to "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 7265
    const/4 v4, 0x0

    .line 7266
    .local v4, "haveModes":Z
    and-long v23, v13, v19

    cmp-long v23, v23, v21

    const-string v3, " ("

    if-nez v23, :cond_107

    .line 7267
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7268
    and-long v1, v11, v19

    long-to-int v1, v1

    add-int/2addr v1, v7

    packed-switch v1, :pswitch_data_166

    .line 7273
    const-string/jumbo v1, "screen-?"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_106

    .line 7272
    :pswitch_eb
    const-string/jumbo v1, "screen-doze-suspend"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_106

    .line 7271
    :pswitch_f2
    const-string/jumbo v1, "screen-doze"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_106

    .line 7270
    :pswitch_f9
    const-string/jumbo v1, "screen-on"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_106

    .line 7269
    :pswitch_100
    const-string/jumbo v1, "screen-off"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7275
    :goto_106
    const/4 v4, 0x1

    .line 7277
    :cond_107
    and-long v1, v13, v17

    cmp-long v1, v1, v21

    const-string v2, ", "

    if-nez v1, :cond_128

    .line 7278
    if-eqz v4, :cond_113

    move-object v1, v2

    goto :goto_114

    :cond_113
    move-object v1, v3

    :goto_114
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7279
    and-long v17, v11, v17

    cmp-long v1, v17, v21

    if-eqz v1, :cond_121

    .line 7280
    const-string/jumbo v1, "power-save-on"

    goto :goto_124

    :cond_121
    const-string/jumbo v1, "power-save-off"

    .line 7279
    :goto_124
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7281
    const/4 v4, 0x1

    .line 7283
    :cond_128
    and-long v17, v13, v15

    cmp-long v1, v17, v21

    if-nez v1, :cond_143

    .line 7284
    if-eqz v4, :cond_131

    move-object v3, v2

    :cond_131
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7285
    and-long v1, v11, v15

    cmp-long v1, v1, v21

    if-eqz v1, :cond_13d

    .line 7286
    const-string v1, "device-idle-on"

    goto :goto_13f

    :cond_13d
    const-string v1, "device-idle-off"

    .line 7285
    :goto_13f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7287
    const/4 v4, 0x1

    .line 7289
    :cond_143
    if-eqz v4, :cond_14a

    .line 7290
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7292
    :cond_14a
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 7230
    .end local v4    # "haveModes":Z
    .end local v8    # "duration":J
    .end local v10    # "level":I
    .end local v11    # "initMode":J
    .end local v13    # "modMode":J
    :goto_14d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v4, v26

    const/4 v3, 0x0

    goto/16 :goto_18

    .line 7295
    .end local v6    # "i":I
    .end local v26    # "count":I
    .local v4, "count":I
    :cond_158
    return v7

    nop

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_67
        :pswitch_61
        :pswitch_5b
    .end packed-switch

    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_100
        :pswitch_f9
        :pswitch_f2
        :pswitch_eb
    .end packed-switch
.end method

.method private greylist-max-o dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    .registers 32
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "flags"    # I
    .param p3, "histStart"    # J
    .param p5, "checkin"    # Z

    .line 7360
    move-object/from16 v8, p1

    new-instance v0, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 7361
    .local v0, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move-object v9, v1

    .line 7362
    .local v9, "rec":Landroid/os/BatteryStats$HistoryItem;
    const-wide/16 v1, -0x1

    .line 7363
    .local v1, "lastTime":J
    const-wide/16 v3, -0x1

    .line 7364
    .local v3, "baseTime":J
    const/4 v5, 0x0

    .line 7365
    .local v5, "printed":Z
    const/4 v6, 0x0

    move-object v10, v6

    .line 7366
    .local v10, "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    :goto_14
    move-object/from16 v11, p0

    invoke-virtual {v11, v9}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v6

    const-wide/16 v12, 0x0

    if-eqz v6, :cond_16a

    .line 7367
    iget-wide v14, v9, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 7368
    .end local v1    # "lastTime":J
    .local v14, "lastTime":J
    cmp-long v1, v3, v12

    if-gez v1, :cond_28

    .line 7369
    move-wide v1, v14

    move-wide/from16 v16, v1

    .end local v3    # "baseTime":J
    .local v1, "baseTime":J
    goto :goto_2a

    .line 7368
    .end local v1    # "baseTime":J
    .restart local v3    # "baseTime":J
    :cond_28
    move-wide/from16 v16, v3

    .line 7371
    .end local v3    # "baseTime":J
    .local v16, "baseTime":J
    :goto_2a
    iget-wide v1, v9, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v1, v1, p3

    if-ltz v1, :cond_165

    .line 7372
    cmp-long v1, p3, v12

    const/16 v18, 0x1

    const/4 v7, 0x0

    if-ltz v1, :cond_14b

    if-nez v5, :cond_14b

    .line 7373
    iget-byte v1, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x5

    if-eq v1, v2, :cond_73

    iget-byte v1, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x7

    if-eq v1, v3, :cond_73

    iget-byte v1, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x4

    if-eq v1, v3, :cond_73

    iget-byte v1, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4f

    goto :goto_73

    .line 7381
    :cond_4f
    iget-wide v3, v9, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v1, v3, v12

    if-eqz v1, :cond_70

    .line 7382
    const/4 v12, 0x1

    .line 7383
    .end local v5    # "printed":Z
    .local v12, "printed":Z
    iget-byte v13, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 7384
    .local v13, "cmd":B
    iput-byte v2, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 7385
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_61

    move/from16 v6, v18

    goto :goto_62

    :cond_61
    move v6, v7

    :goto_62
    move-object/from16 v1, p1

    move-object v2, v9

    move-wide/from16 v3, v16

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 7387
    iput-byte v13, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move v11, v7

    goto :goto_8b

    .line 7381
    .end local v12    # "printed":Z
    .end local v13    # "cmd":B
    .restart local v5    # "printed":Z
    :cond_70
    move v12, v5

    move v11, v7

    goto :goto_8b

    .line 7377
    :cond_73
    :goto_73
    const/4 v12, 0x1

    .line 7378
    .end local v5    # "printed":Z
    .restart local v12    # "printed":Z
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_7b

    move/from16 v13, v18

    goto :goto_7c

    :cond_7b
    move v13, v7

    :goto_7c
    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, v9

    move-wide/from16 v4, v16

    move/from16 v6, p5

    move v11, v7

    move v7, v13

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 7380
    iput-byte v11, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 7389
    :goto_8b
    if-eqz v10, :cond_14c

    .line 7390
    iget-byte v1, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v1, :cond_a6

    .line 7391
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_98

    move/from16 v7, v18

    goto :goto_99

    :cond_98
    move v7, v11

    :goto_99
    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, v9

    move-wide/from16 v4, v16

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 7393
    iput-byte v11, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 7395
    :cond_a6
    iget v13, v9, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 7396
    .local v13, "oldEventCode":I
    iget-object v7, v9, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 7397
    .local v7, "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    new-instance v1, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v1, v9, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 7398
    const/4 v1, 0x0

    move v6, v1

    .local v6, "i":I
    :goto_b3
    const/16 v1, 0x16

    if-ge v6, v1, :cond_141

    .line 7399
    nop

    .line 7400
    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v19

    .line 7401
    .local v19, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v19, :cond_c3

    .line 7402
    move/from16 v25, v6

    move-object v11, v7

    goto/16 :goto_13b

    .line 7405
    :cond_c3
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_cb
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_138

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Ljava/util/Map$Entry;

    .line 7406
    .local v21, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/util/SparseIntArray;

    .line 7407
    .local v4, "uids":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    move v5, v1

    .local v5, "j":I
    :goto_e2
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_12f

    .line 7408
    iput v6, v9, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 7409
    iget-object v1, v9, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 7410
    iget-object v1, v9, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iput v2, v1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 7411
    iget-object v1, v9, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    iput v2, v1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 7412
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_10b

    move/from16 v22, v18

    goto :goto_10d

    :cond_10b
    move/from16 v22, v11

    :goto_10d
    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, v9

    move-object/from16 v23, v4

    move/from16 v24, v5

    .end local v4    # "uids":Landroid/util/SparseIntArray;
    .end local v5    # "j":I
    .local v23, "uids":Landroid/util/SparseIntArray;
    .local v24, "j":I
    move-wide/from16 v4, v16

    move/from16 v25, v6

    .end local v6    # "i":I
    .local v25, "i":I
    move/from16 v6, p5

    move-object v11, v7

    .end local v7    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .local v11, "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    move/from16 v7, v22

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 7414
    const/4 v1, 0x0

    iput-object v1, v9, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 7415
    iput-object v1, v9, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 7407
    add-int/lit8 v5, v24, 0x1

    move-object v7, v11

    move-object/from16 v4, v23

    move/from16 v6, v25

    const/4 v11, 0x0

    .end local v24    # "j":I
    .restart local v5    # "j":I
    goto :goto_e2

    .end local v11    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .end local v23    # "uids":Landroid/util/SparseIntArray;
    .end local v25    # "i":I
    .restart local v4    # "uids":Landroid/util/SparseIntArray;
    .restart local v6    # "i":I
    .restart local v7    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_12f
    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move-object v11, v7

    .line 7417
    .end local v4    # "uids":Landroid/util/SparseIntArray;
    .end local v5    # "j":I
    .end local v6    # "i":I
    .end local v7    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .end local v21    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v11    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .restart local v25    # "i":I
    const/4 v11, 0x0

    goto :goto_cb

    .line 7405
    .end local v11    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .end local v25    # "i":I
    .restart local v6    # "i":I
    .restart local v7    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_138
    move/from16 v25, v6

    move-object v11, v7

    .line 7398
    .end local v6    # "i":I
    .end local v7    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .end local v19    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v11    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .restart local v25    # "i":I
    :goto_13b
    add-int/lit8 v6, v25, 0x1

    move-object v7, v11

    const/4 v11, 0x0

    .end local v25    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_b3

    .end local v11    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .restart local v7    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_141
    move/from16 v25, v6

    move-object v11, v7

    .line 7419
    .end local v6    # "i":I
    .end local v7    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .restart local v11    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    iput v13, v9, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 7420
    iput-object v11, v9, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 7421
    const/4 v1, 0x0

    move-object v10, v1

    .end local v10    # "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    .local v1, "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    goto :goto_14c

    .line 7424
    .end local v1    # "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    .end local v11    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .end local v12    # "printed":Z
    .end local v13    # "oldEventCode":I
    .local v5, "printed":Z
    .restart local v10    # "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    :cond_14b
    move v12, v5

    .end local v5    # "printed":Z
    .restart local v12    # "printed":Z
    :cond_14c
    :goto_14c
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_153

    move/from16 v7, v18

    goto :goto_154

    :cond_153
    const/4 v7, 0x0

    :goto_154
    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, v9

    move-wide/from16 v4, v16

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    move v5, v12

    move-wide v1, v14

    move-wide/from16 v3, v16

    goto/16 :goto_14

    .line 7371
    .end local v12    # "printed":Z
    .restart local v5    # "printed":Z
    :cond_165
    move-wide v1, v14

    move-wide/from16 v3, v16

    goto/16 :goto_14

    .line 7437
    .end local v14    # "lastTime":J
    .end local v16    # "baseTime":J
    .local v1, "lastTime":J
    .restart local v3    # "baseTime":J
    :cond_16a
    cmp-long v6, p3, v12

    if-ltz v6, :cond_181

    .line 7438
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    .line 7439
    if-eqz p5, :cond_176

    const-string v6, "NEXT: "

    goto :goto_178

    :cond_176
    const-string v6, "  NEXT: "

    :goto_178
    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v6, 0x1

    add-long/2addr v6, v1

    invoke-virtual {v8, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 7441
    :cond_181
    return-void
.end method

.method private static final varargs greylist dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 3835
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 3836
    array-length v0, p4

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_14

    aget-object v2, p4, v1

    .line 3837
    .local v2, "arg":Ljava/lang/Object;
    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 3838
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3836
    .end local v2    # "arg":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3840
    :cond_14
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 3841
    return-void
.end method

.method private static final greylist-max-o dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 3815
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3816
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3817
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 3818
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3819
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3820
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3821
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3822
    return-void
.end method

.method private blacklist dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;Ljava/util/List;Landroid/os/BatteryStats$ProportionalAttributionCalculator;)V
    .registers 66
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "stats"    # Landroid/os/BatteryUsageStats;
    .param p4, "proportionalAttributionCalculator"    # Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Landroid/os/BatteryUsageStats;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Landroid/os/BatteryStats$ProportionalAttributionCalculator;",
            ")V"
        }
    .end annotation

    .line 7799
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    const/4 v10, 0x0

    .line 7800
    .local v10, "which":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v11, v0, v2

    .line 7801
    .local v11, "rawUptimeUs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 7802
    .local v13, "rawRealtimeMs":J
    mul-long v4, v13, v2

    .line 7803
    .local v4, "rawRealtimeUs":J
    move-object/from16 v15, p0

    invoke-virtual {v15, v11, v12}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v1

    .line 7805
    .local v1, "batteryUptimeUs":J
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v6, v0

    .line 7806
    .local v6, "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v8, :cond_59

    .line 7807
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_56

    .line 7808
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 7809
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    move-wide/from16 v16, v4

    .end local v4    # "rawRealtimeUs":J
    .local v16, "rawRealtimeUs":J
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 7810
    .local v4, "aid":I
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 7811
    .local v5, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_4a

    .line 7812
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v18

    .line 7813
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7815
    :cond_4a
    move/from16 v18, v4

    .end local v4    # "aid":I
    .local v18, "aid":I
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7807
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "aid":I
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v4, v16

    goto :goto_24

    .end local v16    # "rawRealtimeUs":J
    .local v4, "rawRealtimeUs":J
    :cond_56
    move-wide/from16 v16, v4

    .end local v4    # "rawRealtimeUs":J
    .restart local v16    # "rawRealtimeUs":J
    goto :goto_5b

    .line 7806
    .end local v0    # "i":I
    .end local v16    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    :cond_59
    move-wide/from16 v16, v4

    .line 7819
    .end local v4    # "rawRealtimeUs":J
    .restart local v16    # "rawRealtimeUs":J
    :goto_5b
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v4, v0

    .line 7820
    .local v4, "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v5

    .line 7821
    .local v5, "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .restart local v0    # "i":I
    :goto_6b
    if-ltz v0, :cond_84

    .line 7822
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, Landroid/os/UidBatteryConsumer;

    .line 7823
    .local v3, "bs":Landroid/os/UidBatteryConsumer;
    move-object/from16 v18, v5

    .end local v5    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .local v18, "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    invoke-virtual {v3}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7821
    .end local v3    # "bs":Landroid/os/UidBatteryConsumer;
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v5, v18

    const/4 v3, 0x1

    goto :goto_6b

    .end local v18    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .restart local v5    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    :cond_84
    move-object/from16 v18, v5

    .line 7826
    .end local v0    # "i":I
    .end local v5    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .restart local v18    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v5

    .line 7827
    .local v5, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 7828
    .local v3, "n":I
    const/4 v0, 0x0

    .local v0, "iu":I
    :goto_8f
    if-ge v0, v3, :cond_aa7

    .line 7829
    move/from16 v21, v3

    move-object/from16 v20, v4

    .end local v3    # "n":I
    .end local v4    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .local v20, "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .local v21, "n":I
    const-wide v3, 0x20b00000005L

    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 7830
    .local v3, "uTkn":J
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v8, v22

    check-cast v8, Landroid/os/BatteryStats$Uid;

    .line 7832
    .local v8, "u":Landroid/os/BatteryStats$Uid;
    move/from16 v22, v10

    .end local v10    # "which":I
    .local v22, "which":I
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 7833
    .local v10, "uid":I
    move-wide/from16 v23, v11

    .end local v11    # "rawUptimeUs":J
    .local v23, "rawUptimeUs":J
    const-wide v11, 0x10500000001L

    invoke-virtual {v7, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7836
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 7837
    .local v11, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v11, :cond_c8

    .line 7838
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v12

    .line 7840
    :cond_c8
    nop

    .line 7841
    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v12

    .line 7842
    .local v12, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v27

    const/16 v19, 0x1

    add-int/lit8 v27, v27, -0x1

    move/from16 v28, v0

    move/from16 v0, v27

    .local v0, "ipkg":I
    .local v28, "iu":I
    :goto_d9
    move-object/from16 v27, v6

    .end local v6    # "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v27, "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-ltz v0, :cond_1cb

    .line 7843
    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 7844
    .local v7, "pkg":Ljava/lang/String;
    nop

    .line 7845
    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual/range {v35 .. v35}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v6

    .line 7846
    .local v6, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v35

    if-nez v35, :cond_107

    .line 7851
    move-object/from16 v9, p1

    move-wide/from16 v41, v1

    move-wide/from16 v37, v3

    move-object/from16 v36, v5

    move-object/from16 v43, v8

    move/from16 v35, v10

    move-object v8, v11

    move-object/from16 v46, v12

    move-wide/from16 v39, v13

    goto/16 :goto_1b1

    .line 7854
    :cond_107
    move-object/from16 v9, p1

    move-wide/from16 v37, v3

    move/from16 v35, v10

    move-object v10, v12

    move-wide/from16 v39, v13

    const-wide v3, 0x20b00000002L

    .end local v3    # "uTkn":J
    .end local v12    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v13    # "rawRealtimeMs":J
    .local v10, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .local v35, "uid":I
    .local v37, "uTkn":J
    .local v39, "rawRealtimeMs":J
    invoke-virtual {v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 7855
    .local v12, "pToken":J
    const-wide v3, 0x10900000001L

    invoke-virtual {v9, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7857
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7859
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "isvc":I
    :goto_12a
    if-ltz v3, :cond_1a3

    .line 7860
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 7862
    .local v14, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v19, v7

    const/4 v7, 0x0

    .end local v7    # "pkg":Ljava/lang/String;
    .local v19, "pkg":Ljava/lang/String;
    invoke-virtual {v14, v1, v2, v7}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v41

    move-object/from16 v36, v5

    .end local v5    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v36, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-static/range {v41 .. v42}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v4

    .line 7863
    .local v4, "startTimeMs":J
    move-wide/from16 v41, v1

    .end local v1    # "batteryUptimeUs":J
    .local v41, "batteryUptimeUs":J
    invoke-virtual {v14, v7}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v1

    .line 7864
    .local v1, "starts":I
    invoke-virtual {v14, v7}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v2

    .line 7865
    .local v2, "launches":I
    const-wide/16 v29, 0x0

    cmp-long v43, v4, v29

    if-nez v43, :cond_159

    if-nez v1, :cond_159

    if-nez v2, :cond_159

    .line 7866
    move-object/from16 v43, v8

    move-object/from16 v46, v10

    move-object v8, v11

    goto :goto_192

    .line 7869
    :cond_159
    move-object/from16 v43, v8

    move-object/from16 v45, v14

    const-wide v7, 0x20b00000002L

    .end local v8    # "u":Landroid/os/BatteryStats$Uid;
    .end local v14    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .local v43, "u":Landroid/os/BatteryStats$Uid;
    .local v45, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    invoke-virtual {v9, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 7871
    .local v14, "sToken":J
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v46, v10

    move-object v8, v11

    const-wide v10, 0x10900000001L

    .end local v10    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v11    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v8, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v46, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v9, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7872
    const-wide v10, 0x10300000002L

    invoke-virtual {v9, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7873
    const-wide v10, 0x10500000003L

    invoke-virtual {v9, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7874
    const-wide v10, 0x10500000004L

    invoke-virtual {v9, v10, v11, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7876
    invoke-virtual {v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7859
    .end local v1    # "starts":I
    .end local v2    # "launches":I
    .end local v4    # "startTimeMs":J
    .end local v14    # "sToken":J
    .end local v45    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    :goto_192
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v15, p0

    move-object v11, v8

    move-object/from16 v7, v19

    move-object/from16 v5, v36

    move-wide/from16 v1, v41

    move-object/from16 v8, v43

    move-object/from16 v10, v46

    const/4 v4, 0x1

    goto :goto_12a

    .end local v19    # "pkg":Ljava/lang/String;
    .end local v36    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v41    # "batteryUptimeUs":J
    .end local v43    # "u":Landroid/os/BatteryStats$Uid;
    .end local v46    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .local v1, "batteryUptimeUs":J
    .restart local v5    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v7    # "pkg":Ljava/lang/String;
    .local v8, "u":Landroid/os/BatteryStats$Uid;
    .restart local v10    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v11    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1a3
    move-wide/from16 v41, v1

    move-object/from16 v36, v5

    move-object/from16 v19, v7

    move-object/from16 v43, v8

    move-object/from16 v46, v10

    move-object v8, v11

    .line 7878
    .end local v1    # "batteryUptimeUs":J
    .end local v3    # "isvc":I
    .end local v5    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v10    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v11    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v8, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "pkg":Ljava/lang/String;
    .restart local v36    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v41    # "batteryUptimeUs":J
    .restart local v43    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v46    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7842
    .end local v6    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v12    # "pToken":J
    .end local v19    # "pkg":Ljava/lang/String;
    :goto_1b1
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v15, p0

    move-object v11, v8

    move-object v7, v9

    move-object/from16 v6, v27

    move/from16 v10, v35

    move-object/from16 v5, v36

    move-wide/from16 v3, v37

    move-wide/from16 v13, v39

    move-wide/from16 v1, v41

    move-object/from16 v8, v43

    move-object/from16 v12, v46

    move-object/from16 v9, p4

    goto/16 :goto_d9

    .end local v35    # "uid":I
    .end local v36    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v37    # "uTkn":J
    .end local v39    # "rawRealtimeMs":J
    .end local v41    # "batteryUptimeUs":J
    .end local v43    # "u":Landroid/os/BatteryStats$Uid;
    .end local v46    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v1    # "batteryUptimeUs":J
    .local v3, "uTkn":J
    .restart local v5    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v8, "u":Landroid/os/BatteryStats$Uid;
    .local v10, "uid":I
    .restart local v11    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v12, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v13    # "rawRealtimeMs":J
    :cond_1cb
    move-object/from16 v9, p1

    move-wide/from16 v41, v1

    move-wide/from16 v37, v3

    move-object/from16 v36, v5

    move-object/from16 v43, v8

    move/from16 v35, v10

    move-object v8, v11

    move-object/from16 v46, v12

    move-wide/from16 v39, v13

    .line 7883
    .end local v0    # "ipkg":I
    .end local v1    # "batteryUptimeUs":J
    .end local v3    # "uTkn":J
    .end local v5    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v10    # "uid":I
    .end local v11    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v13    # "rawRealtimeMs":J
    .local v8, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v35    # "uid":I
    .restart local v36    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v37    # "uTkn":J
    .restart local v39    # "rawRealtimeMs":J
    .restart local v41    # "batteryUptimeUs":J
    .restart local v43    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v46    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_201

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7884
    .local v1, "p":Ljava/lang/String;
    const-wide v6, 0x20b00000002L

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 7885
    .local v2, "pToken":J
    const-wide v10, 0x10900000001L

    invoke-virtual {v9, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7886
    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7887
    .end local v1    # "p":Ljava/lang/String;
    .end local v2    # "pToken":J
    goto :goto_1e0

    .line 7890
    :cond_201
    const-wide v6, 0x20b00000002L

    const-wide v10, 0x10900000001L

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    const-wide v12, 0x10300000001L

    if-eqz v0, :cond_245

    .line 7891
    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 7893
    .local v0, "timer":Landroid/os/BatteryStats$Timer;
    move-wide/from16 v14, v39

    .end local v39    # "rawRealtimeMs":J
    .local v14, "rawRealtimeMs":J
    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v1

    .line 7894
    .local v1, "totTimeMs":J
    invoke-virtual {v0}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 7895
    .local v3, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v3, :cond_22b

    .line 7896
    invoke-virtual {v3, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v4

    goto :goto_22d

    :cond_22b
    const-wide/16 v4, 0x0

    .line 7897
    .local v4, "bgTimeMs":J
    :goto_22d
    const-wide v6, 0x10b00000018L

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 7898
    .local v6, "awToken":J
    invoke-virtual {v9, v12, v13, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7899
    const-wide v10, 0x10300000002L

    invoke-virtual {v9, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7900
    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_24c

    .line 7890
    .end local v0    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v1    # "totTimeMs":J
    .end local v3    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v4    # "bgTimeMs":J
    .end local v6    # "awToken":J
    .end local v14    # "rawRealtimeMs":J
    .restart local v39    # "rawRealtimeMs":J
    :cond_245
    move-wide/from16 v14, v39

    const-wide v10, 0x10300000002L

    .line 7904
    .end local v39    # "rawRealtimeMs":J
    .restart local v14    # "rawRealtimeMs":J
    :goto_24c
    const-wide v1, 0x10b00000008L

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move/from16 v7, v28

    .end local v28    # "iu":I
    .local v7, "iu":I
    move-object/from16 v0, p1

    move-wide/from16 v33, v41

    .end local v41    # "batteryUptimeUs":J
    .local v33, "batteryUptimeUs":J
    move/from16 v19, v21

    move-wide/from16 v4, v37

    const/4 v10, 0x1

    .end local v21    # "n":I
    .end local v37    # "uTkn":J
    .local v4, "uTkn":J
    .local v19, "n":I
    move-wide/from16 v47, v4

    move-wide/from16 v39, v16

    move-object/from16 v16, v18

    move-object/from16 v11, v20

    move-object/from16 v17, v36

    .end local v4    # "uTkn":J
    .end local v18    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .end local v20    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .end local v36    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v11, "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .local v16, "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .local v17, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v39, "rawRealtimeUs":J
    .local v47, "uTkn":J
    move-wide/from16 v4, v39

    move-object/from16 v18, v27

    const/4 v10, 0x0

    .end local v27    # "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v18, "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7907
    const-wide v0, 0x10b00000003L

    .line 7908
    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    .line 7907
    invoke-static {v9, v0, v1, v2, v10}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 7911
    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v20

    .line 7912
    .local v20, "bleTimer":Landroid/os/BatteryStats$Timer;
    const-wide v4, 0x10500000006L

    if-eqz v20, :cond_2ff

    .line 7913
    const-wide v1, 0x10b00000006L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 7915
    .local v1, "bmToken":J
    const-wide v31, 0x10b00000001L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v12, v1

    .end local v1    # "bmToken":J
    .local v12, "bmToken":J
    move-wide/from16 v1, v31

    move-object/from16 v3, v20

    move-wide/from16 v4, v39

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7917
    const-wide v1, 0x10b00000002L

    .line 7918
    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 7917
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7920
    const-wide v1, 0x10b00000003L

    .line 7921
    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 7920
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7923
    const-wide v1, 0x10b00000004L

    .line 7924
    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 7923
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7926
    nop

    .line 7927
    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    if-eqz v0, :cond_2d9

    .line 7928
    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    goto :goto_2da

    :cond_2d9
    move v6, v10

    .line 7926
    :goto_2da
    const-wide v4, 0x10500000005L

    invoke-virtual {v9, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7929
    nop

    .line 7930
    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    if-eqz v0, :cond_2f2

    .line 7931
    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    goto :goto_2f3

    :cond_2f2
    move v6, v10

    .line 7929
    :goto_2f3
    const-wide v1, 0x10500000006L

    invoke-virtual {v9, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7933
    invoke-virtual {v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_305

    .line 7912
    .end local v12    # "bmToken":J
    :cond_2ff
    move-wide v1, v4

    const-wide v4, 0x10500000005L

    .line 7937
    :goto_305
    const-wide v12, 0x10b00000009L

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v1, v12

    move-wide v12, v4

    move-wide/from16 v4, v39

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7940
    const-wide v0, 0x10b00000007L

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 7941
    .local v4, "cpuToken":J
    move-object/from16 v6, v43

    .end local v43    # "u":Landroid/os/BatteryStats$Uid;
    .local v6, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    invoke-virtual {v9, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7942
    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v2, 0x10300000002L

    invoke-virtual {v9, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7944
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v1

    .line 7945
    .local v1, "cpuFreqs":[J
    if-eqz v1, :cond_3a9

    .line 7946
    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v0

    .line 7949
    .local v0, "cpuFreqTimeMs":[J
    if-eqz v0, :cond_3a3

    array-length v12, v0

    array-length v13, v1

    if-ne v12, v13, :cond_3a3

    .line 7950
    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v12

    .line 7951
    .local v12, "screenOffCpuFreqTimeMs":[J
    if-nez v12, :cond_35c

    .line 7952
    array-length v13, v0

    new-array v12, v13, [J

    .line 7954
    :cond_35c
    const/4 v13, 0x0

    .local v13, "ic":I
    :goto_35d
    array-length v10, v0

    if-ge v13, v10, :cond_39d

    .line 7955
    const-wide v2, 0x20b00000003L

    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 7956
    .local v2, "cToken":J
    add-int/lit8 v10, v13, 0x1

    move-wide/from16 v31, v14

    const-wide v14, 0x10500000001L

    .end local v14    # "rawRealtimeMs":J
    .local v31, "rawRealtimeMs":J
    invoke-virtual {v9, v14, v15, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7957
    aget-wide v14, v0, v13

    move-object/from16 v21, v0

    move-object v10, v1

    const-wide v0, 0x10300000002L

    .end local v0    # "cpuFreqTimeMs":[J
    .end local v1    # "cpuFreqs":[J
    .local v10, "cpuFreqs":[J
    .local v21, "cpuFreqTimeMs":[J
    invoke-virtual {v9, v0, v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7959
    aget-wide v0, v12, v13

    const-wide v14, 0x10300000003L

    invoke-virtual {v9, v14, v15, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7961
    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7954
    .end local v2    # "cToken":J
    add-int/lit8 v13, v13, 0x1

    move-object v1, v10

    move-object/from16 v0, v21

    move-wide/from16 v14, v31

    const-wide v2, 0x10300000002L

    const/4 v10, 0x0

    goto :goto_35d

    .end local v10    # "cpuFreqs":[J
    .end local v21    # "cpuFreqTimeMs":[J
    .end local v31    # "rawRealtimeMs":J
    .restart local v0    # "cpuFreqTimeMs":[J
    .restart local v1    # "cpuFreqs":[J
    .restart local v14    # "rawRealtimeMs":J
    :cond_39d
    move-object/from16 v21, v0

    move-object v10, v1

    move-wide/from16 v31, v14

    .end local v0    # "cpuFreqTimeMs":[J
    .end local v1    # "cpuFreqs":[J
    .end local v14    # "rawRealtimeMs":J
    .restart local v10    # "cpuFreqs":[J
    .restart local v21    # "cpuFreqTimeMs":[J
    .restart local v31    # "rawRealtimeMs":J
    goto :goto_3ac

    .line 7949
    .end local v10    # "cpuFreqs":[J
    .end local v12    # "screenOffCpuFreqTimeMs":[J
    .end local v13    # "ic":I
    .end local v21    # "cpuFreqTimeMs":[J
    .end local v31    # "rawRealtimeMs":J
    .restart local v0    # "cpuFreqTimeMs":[J
    .restart local v1    # "cpuFreqs":[J
    .restart local v14    # "rawRealtimeMs":J
    :cond_3a3
    move-object/from16 v21, v0

    move-object v10, v1

    move-wide/from16 v31, v14

    .end local v0    # "cpuFreqTimeMs":[J
    .end local v1    # "cpuFreqs":[J
    .end local v14    # "rawRealtimeMs":J
    .restart local v10    # "cpuFreqs":[J
    .restart local v21    # "cpuFreqTimeMs":[J
    .restart local v31    # "rawRealtimeMs":J
    goto :goto_3ac

    .line 7945
    .end local v10    # "cpuFreqs":[J
    .end local v21    # "cpuFreqTimeMs":[J
    .end local v31    # "rawRealtimeMs":J
    .restart local v1    # "cpuFreqs":[J
    .restart local v14    # "rawRealtimeMs":J
    :cond_3a9
    move-object v10, v1

    move-wide/from16 v31, v14

    .line 7966
    .end local v1    # "cpuFreqs":[J
    .end local v14    # "rawRealtimeMs":J
    .restart local v10    # "cpuFreqs":[J
    .restart local v31    # "rawRealtimeMs":J
    :goto_3ac
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqCount()I

    move-result v0

    new-array v12, v0, [J

    .line 7967
    .local v12, "timesInFreqMs":[J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqCount()I

    move-result v0

    new-array v13, v0, [J

    .line 7968
    .local v13, "timesInFreqScreenOffMs":[J
    const/4 v0, 0x0

    .local v0, "procState":I
    :goto_3b9
    const-wide v14, 0x10e00000001L

    const/4 v3, 0x7

    if-ge v0, v3, :cond_442

    .line 7969
    invoke-virtual {v6, v12, v0}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v1

    if-eqz v1, :cond_42e

    .line 7970
    invoke-virtual {v6, v13, v0}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v1

    if-nez v1, :cond_3d3

    .line 7971
    const-wide/16 v1, 0x0

    invoke-static {v13, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_3d5

    .line 7970
    :cond_3d3
    const-wide/16 v1, 0x0

    .line 7973
    :goto_3d5
    const-wide v1, 0x20b00000004L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 7974
    .local v1, "procToken":J
    invoke-virtual {v9, v14, v15, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7975
    const/4 v3, 0x0

    .local v3, "ic":I
    :goto_3e2
    array-length v14, v12

    if-ge v3, v14, :cond_422

    .line 7976
    move/from16 v37, v7

    move-object/from16 v21, v8

    const-wide v14, 0x20b00000002L

    .end local v7    # "iu":I
    .end local v8    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v21, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v37, "iu":I
    invoke-virtual {v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 7977
    .local v7, "cToken":J
    add-int/lit8 v14, v3, 0x1

    move-object/from16 v41, v10

    move-object/from16 v38, v11

    const-wide v10, 0x10500000001L

    .end local v10    # "cpuFreqs":[J
    .end local v11    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .local v38, "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .local v41, "cpuFreqs":[J
    invoke-virtual {v9, v10, v11, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7978
    aget-wide v10, v12, v3

    const-wide v14, 0x10300000002L

    invoke-virtual {v9, v14, v15, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7980
    aget-wide v10, v13, v3

    const-wide v14, 0x10300000003L

    invoke-virtual {v9, v14, v15, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7982
    invoke-virtual {v9, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7975
    .end local v7    # "cToken":J
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v8, v21

    move/from16 v7, v37

    move-object/from16 v11, v38

    move-object/from16 v10, v41

    goto :goto_3e2

    .end local v21    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v37    # "iu":I
    .end local v38    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .end local v41    # "cpuFreqs":[J
    .local v7, "iu":I
    .restart local v8    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "cpuFreqs":[J
    .restart local v11    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    :cond_422
    move/from16 v37, v7

    move-object/from16 v21, v8

    move-object/from16 v41, v10

    move-object/from16 v38, v11

    .line 7984
    .end local v3    # "ic":I
    .end local v7    # "iu":I
    .end local v8    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "cpuFreqs":[J
    .end local v11    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .restart local v21    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v37    # "iu":I
    .restart local v38    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .restart local v41    # "cpuFreqs":[J
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_436

    .line 7969
    .end local v1    # "procToken":J
    .end local v21    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v37    # "iu":I
    .end local v38    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .end local v41    # "cpuFreqs":[J
    .restart local v7    # "iu":I
    .restart local v8    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "cpuFreqs":[J
    .restart local v11    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    :cond_42e
    move/from16 v37, v7

    move-object/from16 v21, v8

    move-object/from16 v41, v10

    move-object/from16 v38, v11

    .line 7968
    .end local v7    # "iu":I
    .end local v8    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "cpuFreqs":[J
    .end local v11    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .restart local v21    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v37    # "iu":I
    .restart local v38    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .restart local v41    # "cpuFreqs":[J
    :goto_436
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v21

    move/from16 v7, v37

    move-object/from16 v11, v38

    move-object/from16 v10, v41

    goto/16 :goto_3b9

    .end local v21    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v37    # "iu":I
    .end local v38    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .end local v41    # "cpuFreqs":[J
    .restart local v7    # "iu":I
    .restart local v8    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "cpuFreqs":[J
    .restart local v11    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    :cond_442
    move/from16 v37, v7

    move-object/from16 v21, v8

    move-object/from16 v41, v10

    move-object/from16 v38, v11

    const-wide v1, 0x10300000002L

    const-wide v7, 0x20b00000002L

    .line 7987
    .end local v0    # "procState":I
    .end local v7    # "iu":I
    .end local v8    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "cpuFreqs":[J
    .end local v11    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .restart local v21    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v37    # "iu":I
    .restart local v38    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .restart local v41    # "cpuFreqs":[J
    invoke-virtual {v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7990
    const-wide v10, 0x10b0000000aL

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v42

    const/16 v43, 0x0

    move-object/from16 v0, p1

    move-object/from16 v29, v41

    const-wide/16 v44, 0x0

    .end local v41    # "cpuFreqs":[J
    .local v29, "cpuFreqs":[J
    move-wide v1, v10

    move v10, v3

    move-object/from16 v3, v42

    move-wide/from16 v41, v4

    .end local v4    # "cpuToken":J
    .local v41, "cpuToken":J
    move-wide/from16 v4, v39

    move-object v11, v6

    .end local v6    # "u":Landroid/os/BatteryStats$Uid;
    .local v11, "u":Landroid/os/BatteryStats$Uid;
    move/from16 v6, v43

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7994
    const-wide v1, 0x10b0000000bL

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7998
    const-wide v1, 0x10b0000000cL

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8002
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v6

    .line 8003
    .local v6, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    const/4 v0, 0x0

    .local v0, "ic":I
    :goto_494
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_520

    .line 8004
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    .line 8005
    .local v1, "types":Landroid/util/SparseIntArray;
    if-eqz v1, :cond_509

    .line 8006
    const-wide v2, 0x20b00000010L

    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8008
    .local v2, "jcToken":J
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v10, v30

    check-cast v10, Ljava/lang/String;

    const-wide v4, 0x10900000001L

    invoke-virtual {v9, v4, v5, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8010
    invoke-static {}, Landroid/app/job/JobParameters;->getJobStopReasonCodes()[I

    move-result-object v10

    array-length v4, v10

    const/4 v5, 0x0

    :goto_4c1
    if-ge v5, v4, :cond_4fc

    aget v14, v10, v5

    .line 8011
    .local v14, "r":I
    move-object v15, v12

    move-object/from16 v30, v13

    .end local v12    # "timesInFreqMs":[J
    .end local v13    # "timesInFreqScreenOffMs":[J
    .local v15, "timesInFreqMs":[J
    .local v30, "timesInFreqScreenOffMs":[J
    invoke-virtual {v9, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 8012
    .local v12, "rToken":J
    const-wide v7, 0x10e00000001L

    invoke-virtual {v9, v7, v8, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8013
    const/4 v7, 0x0

    invoke-virtual {v1, v14, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    move-object/from16 v56, v1

    move-wide/from16 v57, v2

    const-wide v1, 0x10500000002L

    .end local v1    # "types":Landroid/util/SparseIntArray;
    .end local v2    # "jcToken":J
    .local v56, "types":Landroid/util/SparseIntArray;
    .local v57, "jcToken":J
    invoke-virtual {v9, v1, v2, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8014
    invoke-virtual {v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8010
    .end local v12    # "rToken":J
    .end local v14    # "r":I
    add-int/lit8 v5, v5, 0x1

    move-object v12, v15

    move-object/from16 v13, v30

    move-object/from16 v1, v56

    move-wide/from16 v2, v57

    const-wide v7, 0x20b00000002L

    const-wide v14, 0x10e00000001L

    goto :goto_4c1

    .line 8017
    .end local v15    # "timesInFreqMs":[J
    .end local v30    # "timesInFreqScreenOffMs":[J
    .end local v56    # "types":Landroid/util/SparseIntArray;
    .end local v57    # "jcToken":J
    .restart local v1    # "types":Landroid/util/SparseIntArray;
    .restart local v2    # "jcToken":J
    .local v12, "timesInFreqMs":[J
    .restart local v13    # "timesInFreqScreenOffMs":[J
    :cond_4fc
    move-object/from16 v56, v1

    move-wide/from16 v57, v2

    move-object v15, v12

    move-object/from16 v30, v13

    .end local v1    # "types":Landroid/util/SparseIntArray;
    .end local v2    # "jcToken":J
    .end local v12    # "timesInFreqMs":[J
    .end local v13    # "timesInFreqScreenOffMs":[J
    .restart local v15    # "timesInFreqMs":[J
    .restart local v30    # "timesInFreqScreenOffMs":[J
    .restart local v56    # "types":Landroid/util/SparseIntArray;
    .restart local v57    # "jcToken":J
    move-wide/from16 v1, v57

    .end local v57    # "jcToken":J
    .local v1, "jcToken":J
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_50e

    .line 8005
    .end local v15    # "timesInFreqMs":[J
    .end local v30    # "timesInFreqScreenOffMs":[J
    .end local v56    # "types":Landroid/util/SparseIntArray;
    .local v1, "types":Landroid/util/SparseIntArray;
    .restart local v12    # "timesInFreqMs":[J
    .restart local v13    # "timesInFreqScreenOffMs":[J
    :cond_509
    move-object/from16 v56, v1

    move-object v15, v12

    move-object/from16 v30, v13

    .line 8003
    .end local v1    # "types":Landroid/util/SparseIntArray;
    .end local v12    # "timesInFreqMs":[J
    .end local v13    # "timesInFreqScreenOffMs":[J
    .restart local v15    # "timesInFreqMs":[J
    .restart local v30    # "timesInFreqScreenOffMs":[J
    :goto_50e
    add-int/lit8 v0, v0, 0x1

    move-object v12, v15

    move-object/from16 v13, v30

    const-wide v7, 0x20b00000002L

    const/4 v10, 0x7

    const-wide v14, 0x10e00000001L

    goto/16 :goto_494

    .end local v15    # "timesInFreqMs":[J
    .end local v30    # "timesInFreqScreenOffMs":[J
    .restart local v12    # "timesInFreqMs":[J
    .restart local v13    # "timesInFreqScreenOffMs":[J
    :cond_520
    move-object v15, v12

    move-object/from16 v30, v13

    const-wide v1, 0x10500000002L

    .line 8022
    .end local v0    # "ic":I
    .end local v12    # "timesInFreqMs":[J
    .end local v13    # "timesInFreqScreenOffMs":[J
    .restart local v15    # "timesInFreqMs":[J
    .restart local v30    # "timesInFreqScreenOffMs":[J
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v7

    .line 8023
    .local v7, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    move v8, v0

    .local v8, "ij":I
    :goto_533
    if-ltz v8, :cond_585

    .line 8024
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/BatteryStats$Timer;

    .line 8025
    .local v10, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v10}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v12

    .line 8026
    .local v12, "bgTimer":Landroid/os/BatteryStats$Timer;
    const-wide v3, 0x20b0000000fL

    invoke-virtual {v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 8028
    .local v13, "jToken":J
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v4, 0x10900000001L

    invoke-virtual {v9, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8030
    const-wide v49, 0x10b00000002L

    const/16 v51, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-object v3, v10

    move-wide/from16 v4, v39

    move-object/from16 v49, v6

    .end local v6    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .local v49, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    move/from16 v6, v51

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8031
    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object v3, v12

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8033
    invoke-virtual {v9, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8023
    .end local v10    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v12    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v13    # "jToken":J
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v6, v49

    const-wide v1, 0x10500000002L

    goto :goto_533

    .end local v49    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v6    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_585
    move-object/from16 v49, v6

    .line 8037
    .end local v6    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v8    # "ij":I
    .restart local v49    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    const-wide v0, 0x10b00000004L

    .line 8038
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    .line 8037
    const/4 v3, 0x0

    invoke-static {v9, v0, v1, v2, v3}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8041
    const-wide v0, 0x10b00000011L

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 8042
    .local v12, "nToken":J
    nop

    .line 8043
    invoke-virtual {v11, v3, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    .line 8042
    const-wide v4, 0x10300000001L

    invoke-virtual {v9, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8044
    nop

    .line 8045
    const/4 v0, 0x1

    invoke-virtual {v11, v0, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    .line 8044
    const-wide v4, 0x10300000002L

    invoke-virtual {v9, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8046
    nop

    .line 8047
    const/4 v8, 0x2

    invoke-virtual {v11, v8, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    .line 8046
    const-wide v4, 0x10300000003L

    invoke-virtual {v9, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8048
    nop

    .line 8049
    const/4 v0, 0x3

    invoke-virtual {v11, v0, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    .line 8048
    const-wide v4, 0x10300000004L

    invoke-virtual {v9, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8050
    const-wide v1, 0x10300000005L

    const/4 v6, 0x4

    .line 8051
    invoke-virtual {v11, v6, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    .line 8050
    invoke-virtual {v9, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8052
    const-wide v1, 0x10300000006L

    const/4 v4, 0x5

    .line 8053
    invoke-virtual {v11, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    .line 8052
    invoke-virtual {v9, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8054
    const-wide v1, 0x10300000007L

    .line 8055
    invoke-virtual {v11, v3, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    .line 8054
    invoke-virtual {v9, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8056
    const-wide v1, 0x10300000008L

    .line 8057
    const/4 v4, 0x1

    invoke-virtual {v11, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v5

    .line 8056
    invoke-virtual {v9, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8058
    const-wide v1, 0x10300000009L

    .line 8059
    invoke-virtual {v11, v8, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    .line 8058
    invoke-virtual {v9, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8060
    const-wide v1, 0x1030000000aL

    .line 8061
    invoke-virtual {v11, v0, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    .line 8060
    invoke-virtual {v9, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8062
    const-wide v0, 0x1030000000bL

    .line 8063
    invoke-virtual {v11, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v4

    .line 8062
    invoke-virtual {v9, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8064
    const-wide v0, 0x1050000000cL

    .line 8065
    invoke-virtual {v11, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v2

    .line 8064
    invoke-virtual {v9, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8066
    const-wide v0, 0x1050000000dL

    .line 8067
    invoke-virtual {v11, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v4

    .line 8066
    invoke-virtual {v9, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8068
    const-wide v0, 0x1050000000eL

    .line 8069
    invoke-virtual {v11, v3}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v4

    .line 8068
    invoke-virtual {v9, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8070
    const-wide v0, 0x1030000000fL

    .line 8071
    const/4 v2, 0x6

    invoke-virtual {v11, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    .line 8070
    invoke-virtual {v9, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8072
    const-wide v0, 0x10300000010L

    .line 8073
    const/4 v4, 0x7

    invoke-virtual {v11, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v5

    .line 8072
    invoke-virtual {v9, v0, v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8074
    const-wide v0, 0x10300000011L

    .line 8075
    const/16 v4, 0x8

    invoke-virtual {v11, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v5

    .line 8074
    invoke-virtual {v9, v0, v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8076
    const-wide v0, 0x10300000012L

    .line 8077
    const/16 v5, 0x9

    move-object v10, v7

    .end local v7    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v10, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v11, v5, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    .line 8076
    invoke-virtual {v9, v0, v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8078
    const-wide v0, 0x10300000013L

    .line 8079
    invoke-virtual {v11, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v6

    .line 8078
    invoke-virtual {v9, v0, v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8080
    const-wide v0, 0x10300000014L

    .line 8081
    const/4 v2, 0x7

    invoke-virtual {v11, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v6

    .line 8080
    invoke-virtual {v9, v0, v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8082
    const-wide v0, 0x10300000015L

    .line 8083
    invoke-virtual {v11, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v6

    .line 8082
    invoke-virtual {v9, v0, v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8084
    const-wide v0, 0x10300000016L

    .line 8085
    invoke-virtual {v11, v5, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    .line 8084
    invoke-virtual {v9, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8086
    invoke-virtual {v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8089
    move/from16 v14, v35

    move-object/from16 v7, v38

    .end local v35    # "uid":I
    .end local v38    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .local v7, "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .local v14, "uid":I
    invoke-virtual {v7, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/UidBatteryConsumer;

    .line 8090
    .local v6, "consumer":Landroid/os/UidBatteryConsumer;
    if-eqz v6, :cond_70d

    .line 8091
    const-wide v0, 0x10b00000012L

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 8092
    .local v0, "bsToken":J
    const-wide v2, 0x10100000001L

    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v4

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8093
    const-wide v2, 0x10800000002L

    .line 8094
    move-object/from16 v4, p4

    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->isSystemBatteryConsumer(Landroid/os/UidBatteryConsumer;)Z

    move-result v5

    .line 8093
    invoke-virtual {v9, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8095
    const-wide v2, 0x10100000003L

    .line 8096
    move-wide/from16 v54, v12

    const/4 v5, 0x0

    .end local v12    # "nToken":J
    .local v54, "nToken":J
    invoke-virtual {v6, v5}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v12

    .line 8095
    invoke-virtual {v9, v2, v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8097
    const-wide v2, 0x10100000004L

    .line 8098
    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->getProportionalPowerMah(Landroid/os/UidBatteryConsumer;)D

    move-result-wide v12

    .line 8097
    invoke-virtual {v9, v2, v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8099
    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_711

    .line 8090
    .end local v0    # "bsToken":J
    .end local v54    # "nToken":J
    .restart local v12    # "nToken":J
    :cond_70d
    move-object/from16 v4, p4

    move-wide/from16 v54, v12

    .line 8103
    .end local v12    # "nToken":J
    .restart local v54    # "nToken":J
    :goto_711
    nop

    .line 8104
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v12

    .line 8105
    .local v12, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "ipr":I
    :goto_71c
    if-ltz v0, :cond_797

    .line 8106
    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Proc;

    .line 8107
    .local v1, "ps":Landroid/os/BatteryStats$Uid$Proc;
    const-wide v2, 0x20b00000013L

    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8109
    .local v2, "prToken":J
    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v13, v6

    move-object/from16 v38, v7

    const-wide v6, 0x10900000001L

    .end local v6    # "consumer":Landroid/os/UidBatteryConsumer;
    .end local v7    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .local v13, "consumer":Landroid/os/UidBatteryConsumer;
    .restart local v38    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    invoke-virtual {v9, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8110
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v6

    move-object/from16 v35, v12

    move-object/from16 v50, v13

    const-wide v12, 0x10300000002L

    .end local v12    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v13    # "consumer":Landroid/os/UidBatteryConsumer;
    .local v35, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .local v50, "consumer":Landroid/os/UidBatteryConsumer;
    invoke-virtual {v9, v12, v13, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8111
    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v6

    const-wide v12, 0x10300000003L

    invoke-virtual {v9, v12, v13, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8112
    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v6

    const-wide v12, 0x10300000004L

    invoke-virtual {v9, v12, v13, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8113
    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v6

    const-wide v12, 0x10500000005L

    invoke-virtual {v9, v12, v13, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8114
    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v6

    const-wide v12, 0x10500000006L

    invoke-virtual {v9, v12, v13, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8115
    const-wide v6, 0x10500000007L

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v12

    invoke-virtual {v9, v6, v7, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8117
    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8105
    .end local v1    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v2    # "prToken":J
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v12, v35

    move-object/from16 v7, v38

    move-object/from16 v6, v50

    goto :goto_71c

    .end local v35    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v38    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .end local v50    # "consumer":Landroid/os/UidBatteryConsumer;
    .restart local v6    # "consumer":Landroid/os/UidBatteryConsumer;
    .restart local v7    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .restart local v12    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    :cond_797
    move-object/from16 v50, v6

    move-object/from16 v38, v7

    move-object/from16 v35, v12

    .line 8121
    .end local v0    # "ipr":I
    .end local v6    # "consumer":Landroid/os/UidBatteryConsumer;
    .end local v7    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .end local v12    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v35    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v38    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .restart local v50    # "consumer":Landroid/os/UidBatteryConsumer;
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v7

    .line 8122
    .local v7, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    const/4 v0, 0x0

    move v12, v0

    .local v12, "ise":I
    :goto_7a3
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v12, v0, :cond_80c

    .line 8123
    invoke-virtual {v7, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/BatteryStats$Uid$Sensor;

    .line 8124
    .local v13, "se":Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v27

    .line 8125
    .local v27, "timer":Landroid/os/BatteryStats$Timer;
    if-nez v27, :cond_7be

    .line 8126
    move-object/from16 v25, v50

    const-wide v51, 0x10500000001L

    goto :goto_805

    .line 8128
    :cond_7be
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v28

    .line 8129
    .local v28, "bgTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v7, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 8130
    .local v6, "sensorNumber":I
    const-wide v0, 0x20b00000015L

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 8132
    .local v1, "seToken":J
    move-wide/from16 v51, v1

    const-wide v1, 0x10500000001L

    .end local v1    # "seToken":J
    .local v51, "seToken":J
    invoke-virtual {v9, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8134
    const-wide v25, 0x10b00000002L

    const/16 v53, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v59, v51

    move-wide/from16 v51, v1

    .end local v51    # "seToken":J
    .local v59, "seToken":J
    move-wide/from16 v1, v25

    move-object/from16 v3, v27

    move-wide/from16 v4, v39

    move/from16 v26, v6

    move-object/from16 v25, v50

    .end local v6    # "sensorNumber":I
    .end local v50    # "consumer":Landroid/os/UidBatteryConsumer;
    .local v25, "consumer":Landroid/os/UidBatteryConsumer;
    .local v26, "sensorNumber":I
    move/from16 v6, v53

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8135
    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object/from16 v3, v28

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8137
    move-wide/from16 v0, v59

    .end local v59    # "seToken":J
    .local v0, "seToken":J
    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8122
    .end local v0    # "seToken":J
    .end local v13    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v26    # "sensorNumber":I
    .end local v27    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v28    # "bgTimer":Landroid/os/BatteryStats$Timer;
    :goto_805
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, p4

    move-object/from16 v50, v25

    goto :goto_7a3

    .end local v25    # "consumer":Landroid/os/UidBatteryConsumer;
    .restart local v50    # "consumer":Landroid/os/UidBatteryConsumer;
    :cond_80c
    move-object/from16 v25, v50

    .line 8141
    .end local v12    # "ise":I
    .end local v50    # "consumer":Landroid/os/UidBatteryConsumer;
    .restart local v25    # "consumer":Landroid/os/UidBatteryConsumer;
    const/4 v0, 0x0

    .local v0, "ips":I
    :goto_80f
    const/4 v1, 0x7

    if-ge v0, v1, :cond_852

    .line 8142
    move-wide/from16 v12, v39

    const/4 v2, 0x0

    .end local v39    # "rawRealtimeUs":J
    .local v12, "rawRealtimeUs":J
    invoke-virtual {v11, v0, v12, v13, v2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    .line 8143
    .local v2, "durMs":J
    cmp-long v4, v2, v44

    if-nez v4, :cond_829

    .line 8144
    move-object/from16 v26, v7

    const-wide v6, 0x10300000002L

    goto :goto_84b

    .line 8146
    :cond_829
    const-wide v4, 0x20b00000014L

    invoke-virtual {v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 8147
    .local v4, "stToken":J
    move-wide/from16 v26, v2

    const-wide v1, 0x10e00000001L

    .end local v2    # "durMs":J
    .local v26, "durMs":J
    invoke-virtual {v9, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8148
    move-wide/from16 v1, v26

    move-object/from16 v26, v7

    const-wide v6, 0x10300000002L

    .end local v7    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .local v1, "durMs":J
    .local v26, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual {v9, v6, v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8149
    invoke-virtual {v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8141
    .end local v1    # "durMs":J
    .end local v4    # "stToken":J
    :goto_84b
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v39, v12

    move-object/from16 v7, v26

    goto :goto_80f

    .end local v12    # "rawRealtimeUs":J
    .end local v26    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v7    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v39    # "rawRealtimeUs":J
    :cond_852
    move-object/from16 v26, v7

    move-wide/from16 v12, v39

    const-wide v6, 0x10300000002L

    .line 8153
    .end local v0    # "ips":I
    .end local v7    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v39    # "rawRealtimeUs":J
    .restart local v12    # "rawRealtimeUs":J
    .restart local v26    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v4

    .line 8154
    .local v4, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v5, v0

    .local v5, "isy":I
    :goto_866
    if-ltz v5, :cond_8c1

    .line 8155
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/BatteryStats$Timer;

    .line 8156
    .restart local v27    # "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v28

    .line 8157
    .restart local v28    # "bgTimer":Landroid/os/BatteryStats$Timer;
    const-wide v0, 0x20b00000016L

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 8159
    .local v1, "syToken":J
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v7, 0x10900000001L

    invoke-virtual {v9, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8161
    const-wide v43, 0x10b00000002L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v7, v1

    .end local v1    # "syToken":J
    .local v7, "syToken":J
    move-wide/from16 v1, v43

    move-object/from16 v3, v27

    move-object/from16 v40, v4

    move/from16 v43, v5

    .end local v4    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v5    # "isy":I
    .local v40, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v43, "isy":I
    move-wide v4, v12

    move/from16 v45, v14

    move-object/from16 v44, v15

    const-wide v14, 0x10300000002L

    .end local v14    # "uid":I
    .end local v15    # "timesInFreqMs":[J
    .local v44, "timesInFreqMs":[J
    .local v45, "uid":I
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8162
    const-wide v1, 0x10b00000003L

    move-object/from16 v3, v28

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8164
    invoke-virtual {v9, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8154
    .end local v7    # "syToken":J
    .end local v27    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v28    # "bgTimer":Landroid/os/BatteryStats$Timer;
    add-int/lit8 v5, v43, -0x1

    move-wide v6, v14

    move-object/from16 v4, v40

    move-object/from16 v15, v44

    move/from16 v14, v45

    const/4 v8, 0x2

    .end local v43    # "isy":I
    .restart local v5    # "isy":I
    goto :goto_866

    .end local v40    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v44    # "timesInFreqMs":[J
    .end local v45    # "uid":I
    .restart local v4    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v14    # "uid":I
    .restart local v15    # "timesInFreqMs":[J
    :cond_8c1
    move-object/from16 v40, v4

    move/from16 v43, v5

    move/from16 v45, v14

    move-object/from16 v44, v15

    move-wide v14, v6

    .line 8168
    .end local v4    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v5    # "isy":I
    .end local v14    # "uid":I
    .end local v15    # "timesInFreqMs":[J
    .restart local v40    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v44    # "timesInFreqMs":[J
    .restart local v45    # "uid":I
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v0

    if-eqz v0, :cond_90c

    .line 8169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8d1
    sget v1, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v0, v1, :cond_906

    .line 8170
    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v2

    .line 8171
    .local v2, "val":I
    if-eqz v2, :cond_8f9

    .line 8172
    const-wide v3, 0x20b00000017L

    invoke-virtual {v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 8173
    .local v3, "uaToken":J
    const-wide v5, 0x10e00000001L

    invoke-virtual {v9, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8174
    const-wide v7, 0x10500000002L

    invoke-virtual {v9, v7, v8, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8175
    invoke-virtual {v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_903

    .line 8171
    .end local v3    # "uaToken":J
    :cond_8f9
    const-wide v5, 0x10e00000001L

    const-wide v7, 0x10500000002L

    .line 8169
    .end local v2    # "val":I
    :goto_903
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d1

    :cond_906
    const-wide v7, 0x10500000002L

    goto :goto_911

    .line 8168
    .end local v0    # "i":I
    :cond_90c
    const-wide v7, 0x10500000002L

    .line 8181
    :goto_911
    const-wide v1, 0x10b0000000dL

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v4, v12

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8184
    const-wide v1, 0x10b0000000eL

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8187
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v6

    .line 8188
    .local v6, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v4, v0

    .local v4, "iw":I
    :goto_938
    if-ltz v4, :cond_9bc

    .line 8189
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 8190
    .local v5, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-wide v0, 0x20b00000019L

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 8191
    .local v1, "wToken":J
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v14, 0x10900000001L

    invoke-virtual {v9, v14, v15, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8192
    const-wide v14, 0x10b00000002L

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-wide v7, v1

    .end local v1    # "wToken":J
    .local v7, "wToken":J
    move-wide v1, v14

    move v14, v4

    move-object v15, v5

    .end local v4    # "iw":I
    .end local v5    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .local v14, "iw":I
    .local v15, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    move-wide v4, v12

    move-object/from16 v28, v6

    .end local v6    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v28, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    move/from16 v6, v27

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8194
    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v27

    .line 8195
    .local v27, "pTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v27, :cond_993

    .line 8196
    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v3, v27

    move-wide v4, v12

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8197
    const-wide v1, 0x10b00000004L

    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8200
    :cond_993
    const-wide v1, 0x10b00000005L

    const/4 v6, 0x2

    invoke-virtual {v15, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move-wide v4, v12

    move/from16 v43, v6

    move/from16 v6, v39

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8202
    invoke-virtual {v9, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8188
    .end local v7    # "wToken":J
    .end local v15    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v27    # "pTimer":Landroid/os/BatteryStats$Timer;
    add-int/lit8 v4, v14, -0x1

    move-object/from16 v6, v28

    const-wide v7, 0x10500000002L

    const-wide v14, 0x10300000002L

    .end local v14    # "iw":I
    .restart local v4    # "iw":I
    goto/16 :goto_938

    .end local v28    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v6    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_9bc
    move v14, v4

    move-object/from16 v28, v6

    .line 8206
    .end local v4    # "iw":I
    .end local v6    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v28    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    const-wide v1, 0x10b0000001cL

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v4, v12

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8210
    invoke-virtual/range {v46 .. v46}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    .local v0, "ipkg":I
    :goto_9d5
    if-ltz v0, :cond_a27

    .line 8211
    move-object/from16 v8, v46

    .end local v46    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .local v8, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Pkg;

    .line 8212
    .local v1, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 8213
    .local v2, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v7

    .local v3, "iwa":I
    :goto_9e8
    if-ltz v3, :cond_a1c

    .line 8214
    const-wide v4, 0x20b0000001aL

    invoke-virtual {v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 8215
    .local v4, "waToken":J
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide v14, 0x10900000001L

    invoke-virtual {v9, v14, v15, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8216
    nop

    .line 8217
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Counter;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    .line 8216
    const-wide v14, 0x10500000002L

    invoke-virtual {v9, v14, v15, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8218
    invoke-virtual {v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8213
    .end local v4    # "waToken":J
    add-int/lit8 v3, v3, -0x1

    const/4 v7, 0x1

    goto :goto_9e8

    :cond_a1c
    const-wide v14, 0x10500000002L

    .line 8210
    .end local v1    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v2    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v3    # "iwa":I
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v46, v8

    const/4 v7, 0x1

    goto :goto_9d5

    .end local v8    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v46    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    :cond_a27
    move-object/from16 v8, v46

    .line 8223
    .end local v0    # "ipkg":I
    .end local v46    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v8    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    const-wide v0, 0x10b00000005L

    .line 8224
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    .line 8223
    const/4 v3, 0x0

    invoke-static {v9, v0, v1, v2, v3}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8227
    const-wide v0, 0x10b0000001bL

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 8228
    .local v14, "wToken":J
    nop

    .line 8229
    invoke-virtual {v11, v12, v13, v3}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    .line 8228
    const-wide v2, 0x10300000001L

    invoke-virtual {v9, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8230
    const-wide v1, 0x10b00000003L

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWifiScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v4, v12

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8232
    nop

    .line 8233
    const/4 v0, 0x0

    invoke-virtual {v11, v12, v13, v0}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    .line 8232
    const-wide v2, 0x10300000002L

    invoke-virtual {v9, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8234
    const-wide v1, 0x10b00000004L

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8236
    invoke-virtual {v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8238
    move-wide/from16 v0, v47

    .end local v47    # "uTkn":J
    .local v0, "uTkn":J
    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7828
    .end local v0    # "uTkn":J
    .end local v8    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v10    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v11    # "u":Landroid/os/BatteryStats$Uid;
    .end local v14    # "wToken":J
    .end local v20    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v21    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "consumer":Landroid/os/UidBatteryConsumer;
    .end local v26    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v28    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v29    # "cpuFreqs":[J
    .end local v30    # "timesInFreqScreenOffMs":[J
    .end local v35    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v40    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v41    # "cpuToken":J
    .end local v44    # "timesInFreqMs":[J
    .end local v45    # "uid":I
    .end local v49    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v54    # "nToken":J
    add-int/lit8 v0, v37, 0x1

    move-object/from16 v15, p0

    move-object/from16 v8, p3

    move-object v7, v9

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v3, v19

    move/from16 v10, v22

    move-wide/from16 v1, v33

    move-object/from16 v4, v38

    move-object/from16 v9, p4

    move-object/from16 v18, v16

    move-wide/from16 v16, v12

    move-wide/from16 v11, v23

    move-wide/from16 v13, v31

    .end local v37    # "iu":I
    .local v0, "iu":I
    goto/16 :goto_8f

    .line 8240
    .end local v0    # "iu":I
    .end local v12    # "rawRealtimeUs":J
    .end local v17    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v19    # "n":I
    .end local v22    # "which":I
    .end local v23    # "rawUptimeUs":J
    .end local v31    # "rawRealtimeMs":J
    .end local v33    # "batteryUptimeUs":J
    .end local v38    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .local v1, "batteryUptimeUs":J
    .local v3, "n":I
    .local v4, "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .local v5, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v6, "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v10, "which":I
    .local v11, "rawUptimeUs":J
    .local v13, "rawRealtimeMs":J
    .local v16, "rawRealtimeUs":J
    .local v18, "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    :cond_aa7
    return-void
.end method

.method private greylist-max-o dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V
    .registers 30
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "flags"    # I
    .param p3, "histStart"    # J

    .line 8243
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v0

    if-nez v0, :cond_b

    .line 8244
    return-void

    .line 8247
    :cond_b
    const/16 v0, 0x23

    const-wide v2, 0x10500000001L

    invoke-virtual {v9, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8248
    const-wide v4, 0x10300000002L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v0

    invoke-virtual {v9, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8249
    nop

    .line 8250
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v0

    .line 8249
    const-wide v4, 0x10900000003L

    invoke-virtual {v9, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8251
    const-wide v6, 0x10900000004L

    .line 8252
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v0

    .line 8251
    invoke-virtual {v9, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3b
    :try_start_3b
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v6

    if-ge v0, v6, :cond_67

    .line 8257
    const-wide v6, 0x20b00000005L

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 8258
    .local v6, "token":J
    invoke-virtual {v9, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8259
    const-wide v10, 0x10500000002L

    invoke-virtual {v1, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v8

    invoke-virtual {v9, v10, v11, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8260
    nop

    .line 8261
    invoke-virtual {v1, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v8

    .line 8260
    invoke-virtual {v9, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8262
    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8256
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 8266
    .end local v0    # "i":I
    .end local v6    # "token":J
    :cond_67
    new-instance v2, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 8267
    .local v2, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 8268
    .local v0, "rec":Landroid/os/BatteryStats$HistoryItem;
    const-wide/16 v3, -0x1

    .line 8269
    .local v3, "lastTime":J
    const-wide/16 v5, -0x1

    .line 8270
    .local v5, "baseTime":J
    const/4 v7, 0x0

    .line 8271
    .local v7, "printed":Z
    const/4 v8, 0x0

    move-object v10, v8

    .line 8272
    .local v10, "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    :goto_78
    invoke-virtual {v1, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v8

    const-wide/16 v11, 0x0

    if-eqz v8, :cond_1c2

    .line 8273
    iget-wide v13, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 8274
    .end local v3    # "lastTime":J
    .local v13, "lastTime":J
    cmp-long v3, v5, v11

    if-gez v3, :cond_89

    .line 8275
    move-wide v3, v13

    move-wide v15, v3

    .end local v5    # "baseTime":J
    .local v3, "baseTime":J
    goto :goto_8a

    .line 8274
    .end local v3    # "baseTime":J
    .restart local v5    # "baseTime":J
    :cond_89
    move-wide v15, v5

    .line 8277
    .end local v5    # "baseTime":J
    .local v15, "baseTime":J
    :goto_8a
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v3, v3, p3

    if-ltz v3, :cond_1bc

    .line 8278
    cmp-long v3, p3, v11

    const/4 v8, 0x0

    const/16 v17, 0x1

    if-ltz v3, :cond_1a4

    if-nez v7, :cond_1a4

    .line 8279
    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x5

    if-eq v3, v4, :cond_d1

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x7

    if-eq v3, v5, :cond_d1

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x4

    if-eq v3, v5, :cond_d1

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v5, 0x8

    if-ne v3, v5, :cond_af

    goto :goto_d1

    .line 8287
    :cond_af
    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v3, v5, v11

    if-eqz v3, :cond_ce

    .line 8288
    const/4 v11, 0x1

    .line 8289
    .end local v7    # "printed":Z
    .local v11, "printed":Z
    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move v12, v3

    .line 8290
    .local v12, "cmd":B
    iput-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 8291
    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_c2

    move/from16 v7, v17

    goto :goto_c3

    :cond_c2
    move v7, v8

    :goto_c3
    move-object/from16 v3, p1

    move-object v4, v0

    move-wide v5, v15

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    .line 8293
    iput-byte v12, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move v1, v8

    goto :goto_e6

    .line 8287
    .end local v11    # "printed":Z
    .end local v12    # "cmd":B
    .restart local v7    # "printed":Z
    :cond_ce
    move v11, v7

    move v1, v8

    goto :goto_e6

    .line 8283
    :cond_d1
    :goto_d1
    const/4 v11, 0x1

    .line 8284
    .end local v7    # "printed":Z
    .restart local v11    # "printed":Z
    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_d9

    move/from16 v12, v17

    goto :goto_da

    :cond_d9
    move v12, v8

    :goto_da
    move-object v3, v2

    move-object/from16 v4, p1

    move-object v5, v0

    move-wide v6, v15

    move v1, v8

    move v8, v12

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    .line 8286
    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 8295
    :goto_e6
    if-eqz v10, :cond_1a5

    .line 8296
    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v3, :cond_fe

    .line 8297
    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_f3

    move/from16 v8, v17

    goto :goto_f4

    :cond_f3
    move v8, v1

    :goto_f4
    move-object v3, v2

    move-object/from16 v4, p1

    move-object v5, v0

    move-wide v6, v15

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    .line 8299
    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 8301
    :cond_fe
    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move v12, v3

    .line 8302
    .local v12, "oldEventCode":I
    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object v8, v3

    .line 8303
    .local v8, "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    new-instance v3, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 8304
    const/4 v3, 0x0

    move v6, v3

    .local v6, "i":I
    :goto_10d
    const/16 v3, 0x16

    if-ge v6, v3, :cond_19a

    .line 8305
    nop

    .line 8306
    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v18, v3

    .line 8307
    .local v18, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v18, :cond_11f

    .line 8308
    move/from16 v23, v6

    move-object v1, v8

    goto/16 :goto_194

    .line 8311
    :cond_11f
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_127
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_191

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object/from16 v20, v3

    .line 8312
    .local v20, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    move-object v7, v3

    .line 8313
    .local v7, "uids":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    move v5, v3

    .local v5, "j":I
    :goto_13e
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v5, v3, :cond_188

    .line 8314
    iput v6, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 8315
    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 8316
    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    iput v4, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 8317
    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    iput v4, v3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 8318
    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_167

    move/from16 v21, v17

    goto :goto_169

    :cond_167
    move/from16 v21, v1

    :goto_169
    move-object v3, v2

    move-object/from16 v4, p1

    move/from16 v22, v5

    .end local v5    # "j":I
    .local v22, "j":I
    move-object v5, v0

    move/from16 v23, v6

    move-object/from16 v24, v7

    .end local v6    # "i":I
    .end local v7    # "uids":Landroid/util/SparseIntArray;
    .local v23, "i":I
    .local v24, "uids":Landroid/util/SparseIntArray;
    move-wide v6, v15

    move-object v1, v8

    .end local v8    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .local v1, "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    move/from16 v8, v21

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    .line 8320
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 8321
    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 8313
    add-int/lit8 v5, v22, 0x1

    move-object v8, v1

    move/from16 v6, v23

    move-object/from16 v7, v24

    const/4 v1, 0x0

    .end local v22    # "j":I
    .restart local v5    # "j":I
    goto :goto_13e

    .end local v1    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .end local v23    # "i":I
    .end local v24    # "uids":Landroid/util/SparseIntArray;
    .restart local v6    # "i":I
    .restart local v7    # "uids":Landroid/util/SparseIntArray;
    .restart local v8    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_188
    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object v1, v8

    .line 8323
    .end local v5    # "j":I
    .end local v6    # "i":I
    .end local v7    # "uids":Landroid/util/SparseIntArray;
    .end local v8    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .end local v20    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v1    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .restart local v23    # "i":I
    const/4 v1, 0x0

    goto :goto_127

    .line 8311
    .end local v1    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .end local v23    # "i":I
    .restart local v6    # "i":I
    .restart local v8    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_191
    move/from16 v23, v6

    move-object v1, v8

    .line 8304
    .end local v6    # "i":I
    .end local v8    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .end local v18    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v1    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .restart local v23    # "i":I
    :goto_194
    add-int/lit8 v6, v23, 0x1

    move-object v8, v1

    const/4 v1, 0x0

    .end local v23    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_10d

    .end local v1    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .restart local v8    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_19a
    move/from16 v23, v6

    move-object v1, v8

    .line 8325
    .end local v6    # "i":I
    .end local v8    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .restart local v1    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    iput v12, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 8326
    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 8327
    const/4 v3, 0x0

    move-object v10, v3

    .end local v10    # "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    .local v3, "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    goto :goto_1a5

    .line 8330
    .end local v1    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .end local v3    # "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    .end local v11    # "printed":Z
    .end local v12    # "oldEventCode":I
    .local v7, "printed":Z
    .restart local v10    # "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    :cond_1a4
    move v11, v7

    .end local v7    # "printed":Z
    .restart local v11    # "printed":Z
    :cond_1a5
    :goto_1a5
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_1ac

    move/from16 v8, v17

    goto :goto_1ad

    :cond_1ac
    const/4 v8, 0x0

    :goto_1ad
    move-object v3, v2

    move-object/from16 v4, p1

    move-object v5, v0

    move-wide v6, v15

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    move-object/from16 v1, p0

    move v7, v11

    move-wide v3, v13

    move-wide v5, v15

    goto/16 :goto_78

    .line 8277
    .end local v11    # "printed":Z
    .restart local v7    # "printed":Z
    :cond_1bc
    move-object/from16 v1, p0

    move-wide v3, v13

    move-wide v5, v15

    goto/16 :goto_78

    .line 8334
    .end local v13    # "lastTime":J
    .end local v15    # "baseTime":J
    .local v3, "lastTime":J
    .local v5, "baseTime":J
    :cond_1c2
    cmp-long v1, p3, v11

    if-ltz v1, :cond_1e7

    .line 8335
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    .line 8336
    const-wide v11, 0x20900000006L

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NEXT: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v13, 0x1

    add-long/2addr v13, v3

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_1e7
    .catchall {:try_start_3b .. :try_end_1e7} :catchall_1ec

    .line 8340
    .end local v0    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v2    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .end local v3    # "lastTime":J
    .end local v5    # "baseTime":J
    .end local v7    # "printed":Z
    .end local v10    # "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    :cond_1e7
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 8341
    nop

    .line 8342
    return-void

    .line 8340
    :catchall_1ec
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 8341
    throw v0
.end method

.method private blacklist dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;)V
    .registers 78
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "stats"    # Landroid/os/BatteryUsageStats;

    .line 8345
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-wide v1, 0x10b00000006L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 8346
    .local v9, "sToken":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v11, 0x3e8

    mul-long v13, v1, v11

    .line 8347
    .local v13, "rawUptimeUs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 8348
    .local v15, "rawRealtimeMs":J
    mul-long v5, v15, v11

    .line 8349
    .local v5, "rawRealtimeUs":J
    const/16 v17, 0x0

    .line 8352
    .local v17, "which":I
    const-wide v1, 0x10b00000001L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8353
    .local v2, "bToken":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v11

    move-wide/from16 v20, v9

    .end local v9    # "sToken":J
    .local v20, "sToken":J
    const-wide v9, 0x10300000001L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8354
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v1

    const-wide v11, 0x10300000002L

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8355
    nop

    .line 8356
    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v22

    const-wide/16 v18, 0x3e8

    div-long v11, v22, v18

    .line 8355
    const-wide v9, 0x10300000003L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8357
    nop

    .line 8358
    invoke-virtual {v0, v13, v14, v7}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    .line 8357
    const-wide v9, 0x10300000004L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8359
    nop

    .line 8360
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    .line 8359
    const-wide v9, 0x10300000005L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8361
    nop

    .line 8362
    invoke-virtual {v0, v13, v14, v7}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    .line 8361
    const-wide v9, 0x10300000006L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8363
    nop

    .line 8364
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    .line 8363
    const-wide v9, 0x10300000007L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8365
    nop

    .line 8366
    invoke-virtual {v0, v13, v14, v7}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    .line 8365
    const-wide v9, 0x10300000008L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8367
    nop

    .line 8368
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    .line 8367
    const-wide v9, 0x10300000009L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8369
    nop

    .line 8370
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v1

    .line 8369
    const-wide v11, 0x1030000000aL

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8371
    nop

    .line 8372
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v1

    .line 8371
    const-wide v11, 0x1030000000bL

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8373
    nop

    .line 8374
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v1

    .line 8373
    const-wide v11, 0x1030000000cL

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8375
    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8378
    const-wide v11, 0x10b00000002L

    invoke-virtual {v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 8379
    .local v11, "bdToken":J
    nop

    .line 8380
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v1

    .line 8379
    const-wide v9, 0x10500000001L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8381
    nop

    .line 8382
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v1

    .line 8381
    const-wide v9, 0x10500000002L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8383
    nop

    .line 8384
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v1

    .line 8383
    const-wide v9, 0x10500000003L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8385
    nop

    .line 8386
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v1

    .line 8385
    const-wide v9, 0x10500000004L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8387
    nop

    .line 8388
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v1

    .line 8387
    const-wide v9, 0x10500000005L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8389
    nop

    .line 8390
    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v9

    const-wide/16 v18, 0x3e8

    div-long v9, v9, v18

    .line 8389
    move-wide/from16 v42, v2

    const-wide v1, 0x10300000006L

    .end local v2    # "bToken":J
    .local v42, "bToken":J
    invoke-virtual {v8, v1, v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8391
    nop

    .line 8392
    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v1

    div-long v1, v1, v18

    .line 8391
    const-wide v3, 0x10300000007L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8393
    nop

    .line 8394
    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v1

    div-long v1, v1, v18

    .line 8393
    const-wide v3, 0x10300000008L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8395
    nop

    .line 8396
    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v1

    div-long v1, v1, v18

    .line 8395
    const-wide v3, 0x10300000009L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8397
    nop

    .line 8398
    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v1

    div-long v1, v1, v18

    .line 8397
    const-wide v3, 0x1030000000aL

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8399
    invoke-virtual {v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8402
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    .line 8404
    .local v1, "timeRemainingUs":J
    const-wide/16 v3, 0x0

    cmp-long v9, v1, v3

    if-ltz v9, :cond_18a

    .line 8406
    const-wide/16 v9, 0x3e8

    div-long v3, v1, v9

    const-wide v9, 0x10300000003L

    invoke-virtual {v8, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-wide v9, v1

    goto :goto_1a9

    .line 8408
    :cond_18a
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    .line 8410
    cmp-long v3, v1, v3

    if-ltz v3, :cond_19f

    .line 8411
    const-wide/16 v3, 0x3e8

    div-long v9, v1, v3

    const-wide v3, 0x10300000004L

    invoke-virtual {v8, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_1a8

    .line 8413
    :cond_19f
    const-wide v3, 0x10300000004L

    const/4 v9, -0x1

    invoke-virtual {v8, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8418
    :goto_1a8
    move-wide v9, v1

    .end local v1    # "timeRemainingUs":J
    .local v9, "timeRemainingUs":J
    :goto_1a9
    const-wide v1, 0x20b00000005L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v3

    invoke-static {v8, v1, v2, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    .line 8421
    const/4 v1, 0x0

    move v4, v1

    .local v4, "i":I
    :goto_1b7
    sget v1, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    const/4 v7, 0x1

    if-ge v4, v1, :cond_21e

    .line 8423
    if-nez v4, :cond_1bf

    goto :goto_1c0

    :cond_1bf
    const/4 v7, 0x0

    .line 8424
    .local v7, "isNone":Z
    :goto_1c0
    move v1, v4

    .line 8425
    .local v1, "telephonyNetworkType":I
    sget v2, Landroid/os/BatteryStats;->DATA_CONNECTION_OTHER:I

    if-eq v4, v2, :cond_1cc

    sget v2, Landroid/os/BatteryStats;->DATA_CONNECTION_EMERGENCY_SERVICE:I

    if-ne v4, v2, :cond_1ca

    goto :goto_1cc

    :cond_1ca
    move v2, v1

    goto :goto_1ce

    .line 8426
    :cond_1cc
    :goto_1cc
    const/4 v1, 0x0

    move v2, v1

    .line 8428
    .end local v1    # "telephonyNetworkType":I
    .local v2, "telephonyNetworkType":I
    :goto_1ce
    move-wide/from16 v47, v5

    .end local v5    # "rawRealtimeUs":J
    .local v47, "rawRealtimeUs":J
    const-wide v5, 0x20b00000008L

    invoke-virtual {v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 8429
    .local v5, "pdcToken":J
    if-eqz v7, :cond_1e6

    .line 8430
    move-wide/from16 v49, v5

    .end local v5    # "pdcToken":J
    .local v49, "pdcToken":J
    const-wide v5, 0x10800000002L

    invoke-virtual {v8, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_1f0

    .line 8432
    .end local v49    # "pdcToken":J
    .restart local v5    # "pdcToken":J
    :cond_1e6
    move-wide/from16 v49, v5

    .end local v5    # "pdcToken":J
    .restart local v49    # "pdcToken":J
    const-wide v5, 0x10e00000001L

    invoke-virtual {v8, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8434
    :goto_1f0
    const-wide v5, 0x10b00000003L

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v45

    const/16 v46, 0x0

    move-object/from16 v1, p1

    move/from16 v51, v2

    .end local v2    # "telephonyNetworkType":I
    .local v51, "telephonyNetworkType":I
    move-wide v2, v5

    move/from16 v52, v4

    .end local v4    # "i":I
    .local v52, "i":I
    move-object/from16 v4, v45

    move-wide/from16 v53, v47

    move-wide/from16 v55, v49

    .end local v47    # "rawRealtimeUs":J
    .end local v49    # "pdcToken":J
    .local v53, "rawRealtimeUs":J
    .local v55, "pdcToken":J
    move-wide/from16 v5, v53

    move-wide/from16 v47, v9

    const/4 v9, 0x0

    move v10, v7

    .end local v7    # "isNone":Z
    .end local v9    # "timeRemainingUs":J
    .local v10, "isNone":Z
    .local v47, "timeRemainingUs":J
    move/from16 v7, v46

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8436
    move-wide/from16 v1, v55

    .end local v55    # "pdcToken":J
    .local v1, "pdcToken":J
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8421
    .end local v1    # "pdcToken":J
    .end local v10    # "isNone":Z
    .end local v51    # "telephonyNetworkType":I
    add-int/lit8 v4, v52, 0x1

    move v7, v9

    move-wide/from16 v9, v47

    .end local v52    # "i":I
    .restart local v4    # "i":I
    goto :goto_1b7

    .end local v47    # "timeRemainingUs":J
    .end local v53    # "rawRealtimeUs":J
    .local v5, "rawRealtimeUs":J
    .restart local v9    # "timeRemainingUs":J
    :cond_21e
    move/from16 v52, v4

    move-wide/from16 v53, v5

    move-wide/from16 v47, v9

    const-wide v5, 0x10e00000001L

    const/4 v9, 0x0

    .line 8440
    .end local v4    # "i":I
    .end local v5    # "rawRealtimeUs":J
    .end local v9    # "timeRemainingUs":J
    .restart local v47    # "timeRemainingUs":J
    .restart local v53    # "rawRealtimeUs":J
    const-wide v1, 0x20b00000006L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v3

    invoke-static {v8, v1, v2, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    .line 8443
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v10

    .line 8444
    .local v10, "cpuFreqs":[J
    if-eqz v10, :cond_252

    .line 8445
    array-length v1, v10

    move v2, v9

    :goto_23e
    if-ge v2, v1, :cond_252

    aget-wide v3, v10, v2

    .line 8446
    .local v3, "i":J
    const-wide v5, 0x20300000007L

    invoke-virtual {v8, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8445
    .end local v3    # "i":J
    add-int/lit8 v2, v2, 0x1

    const-wide v5, 0x10e00000001L

    goto :goto_23e

    .line 8451
    :cond_252
    const-wide v1, 0x10b00000009L

    .line 8452
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    .line 8451
    invoke-static {v8, v1, v2, v3, v9}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8455
    const-wide v1, 0x10b0000000aL

    .line 8456
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    .line 8455
    invoke-static {v8, v1, v2, v3, v9}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8459
    const-wide v1, 0x10b0000000cL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 8460
    .local v5, "gnToken":J
    nop

    .line 8461
    invoke-virtual {v0, v9, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    .line 8460
    const-wide v3, 0x10300000001L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8462
    nop

    .line 8463
    invoke-virtual {v0, v7, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    .line 8462
    const-wide v3, 0x10300000002L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8464
    nop

    .line 8465
    invoke-virtual {v0, v9, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v1

    .line 8464
    const-wide v3, 0x10300000005L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8466
    nop

    .line 8467
    invoke-virtual {v0, v7, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v1

    .line 8466
    const-wide v3, 0x10300000006L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8468
    nop

    .line 8469
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    .line 8468
    move-wide/from16 v49, v5

    const-wide v4, 0x10300000003L

    .end local v5    # "gnToken":J
    .local v49, "gnToken":J
    invoke-virtual {v8, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8470
    nop

    .line 8471
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8470
    const-wide v4, 0x10300000004L

    invoke-virtual {v8, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8472
    nop

    .line 8473
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v2

    .line 8472
    const-wide v5, 0x10300000007L

    invoke-virtual {v8, v5, v6, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8474
    nop

    .line 8475
    invoke-virtual {v0, v1, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v1

    .line 8474
    const-wide v5, 0x10300000008L

    invoke-virtual {v8, v5, v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8476
    const/4 v1, 0x4

    .line 8477
    invoke-virtual {v0, v1, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    .line 8476
    const-wide v5, 0x10300000009L

    invoke-virtual {v8, v5, v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8478
    nop

    .line 8479
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    .line 8478
    const-wide v4, 0x1030000000aL

    invoke-virtual {v8, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8480
    move-wide/from16 v4, v49

    .end local v49    # "gnToken":J
    .local v4, "gnToken":J
    invoke-virtual {v8, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8483
    const-wide v1, 0x10b0000000bL

    .line 8484
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    .line 8483
    invoke-static {v8, v1, v2, v3, v9}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8488
    const-wide v1, 0x10b0000000dL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8489
    .local v2, "gwToken":J
    nop

    .line 8490
    move-wide/from16 v7, v53

    .end local v53    # "rawRealtimeUs":J
    .local v7, "rawRealtimeUs":J
    invoke-virtual {v0, v7, v8, v9}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v36

    const-wide/16 v18, 0x3e8

    .end local v7    # "rawRealtimeUs":J
    .restart local v53    # "rawRealtimeUs":J
    div-long v6, v36, v18

    .line 8489
    move-object/from16 v8, p1

    move-wide/from16 v36, v11

    move-object v12, v10

    const-wide v9, 0x10300000001L

    .end local v10    # "cpuFreqs":[J
    .end local v11    # "bdToken":J
    .local v12, "cpuFreqs":[J
    .local v36, "bdToken":J
    invoke-virtual {v8, v9, v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8491
    nop

    .line 8492
    move-wide/from16 v9, v53

    const/4 v1, 0x0

    .end local v53    # "rawRealtimeUs":J
    .local v9, "rawRealtimeUs":J
    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v6

    div-long v6, v6, v18

    .line 8491
    move-wide/from16 v50, v4

    const-wide v4, 0x10300000002L

    .end local v4    # "gnToken":J
    .local v50, "gnToken":J
    invoke-virtual {v8, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8493
    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8496
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v11

    .line 8497
    .local v11, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v52

    :goto_350
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39b

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v53, v1

    check-cast v53, Ljava/util/Map$Entry;

    .line 8498
    .local v53, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const-wide v5, 0x20b0000000eL

    invoke-virtual {v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 8499
    .local v5, "kwToken":J
    invoke-interface/range {v53 .. v53}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-wide/from16 v56, v2

    const-wide v2, 0x10900000001L

    .end local v2    # "gwToken":J
    .local v56, "gwToken":J
    invoke-virtual {v8, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8500
    const-wide v2, 0x10b00000002L

    invoke-interface/range {v53 .. v53}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v45, v56

    .end local v56    # "gwToken":J
    .local v45, "gwToken":J
    move-wide/from16 v58, v5

    .end local v5    # "kwToken":J
    .local v58, "kwToken":J
    move-wide v5, v9

    move-object/from16 v34, v11

    const/4 v11, 0x1

    .end local v11    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v34, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8502
    move-wide/from16 v1, v58

    .end local v58    # "kwToken":J
    .local v1, "kwToken":J
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8503
    .end local v1    # "kwToken":J
    .end local v53    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-object/from16 v11, v34

    move-wide/from16 v2, v45

    goto :goto_350

    .line 8507
    .end local v34    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v45    # "gwToken":J
    .restart local v2    # "gwToken":J
    .restart local v11    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_39b
    move-wide/from16 v45, v2

    move-object/from16 v34, v11

    const/4 v11, 0x1

    .end local v2    # "gwToken":J
    .end local v11    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v34    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v45    # "gwToken":J
    const-wide/16 v1, 0x0

    .line 8508
    .local v1, "fullWakeLockTimeTotalUs":J
    const-wide/16 v3, 0x0

    .line 8510
    .local v3, "partialWakeLockTimeTotalUs":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v7

    .line 8511
    .local v7, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    const/4 v5, 0x0

    move-wide/from16 v52, v1

    move-wide/from16 v56, v3

    .end local v1    # "fullWakeLockTimeTotalUs":J
    .end local v3    # "partialWakeLockTimeTotalUs":J
    .local v5, "iu":I
    .local v52, "fullWakeLockTimeTotalUs":J
    .local v56, "partialWakeLockTimeTotalUs":J
    :goto_3ad
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_3f4

    .line 8512
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid;

    .line 8514
    .local v1, "u":Landroid/os/BatteryStats$Uid;
    nop

    .line 8515
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 8516
    .local v2, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v11

    .local v3, "iw":I
    :goto_3c3
    if-ltz v3, :cond_3ee

    .line 8517
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 8519
    .local v4, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    invoke-virtual {v4, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 8520
    .local v6, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v6, :cond_3d9

    .line 8521
    const/4 v11, 0x0

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v58

    add-long v52, v52, v58

    goto :goto_3da

    .line 8520
    :cond_3d9
    const/4 v11, 0x0

    .line 8525
    :goto_3da
    move-object/from16 v44, v1

    .end local v1    # "u":Landroid/os/BatteryStats$Uid;
    .local v44, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v4, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    .line 8526
    .local v1, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v1, :cond_3e8

    .line 8527
    invoke-virtual {v1, v9, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v58

    add-long v56, v56, v58

    .line 8516
    .end local v1    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v4    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v6    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    :cond_3e8
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v1, v44

    const/4 v11, 0x1

    goto :goto_3c3

    .end local v44    # "u":Landroid/os/BatteryStats$Uid;
    .local v1, "u":Landroid/os/BatteryStats$Uid;
    :cond_3ee
    move-object/from16 v44, v1

    .line 8511
    .end local v1    # "u":Landroid/os/BatteryStats$Uid;
    .end local v2    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v3    # "iw":I
    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x1

    goto :goto_3ad

    .line 8532
    .end local v5    # "iu":I
    :cond_3f4
    const-wide v1, 0x10b0000000fL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 8533
    .local v5, "mToken":J
    nop

    .line 8534
    const/4 v1, 0x0

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    div-long v2, v2, v18

    .line 8533
    move-object/from16 v44, v12

    const-wide v11, 0x10300000001L

    .end local v12    # "cpuFreqs":[J
    .local v44, "cpuFreqs":[J
    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8535
    nop

    .line 8536
    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v2

    div-long v2, v2, v18

    .line 8535
    const-wide v11, 0x10300000002L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8537
    div-long v1, v52, v18

    const-wide v3, 0x10300000003L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8539
    div-long v1, v56, v18

    const-wide v3, 0x10300000004L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8541
    nop

    .line 8542
    const/4 v1, 0x0

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v2

    div-long v2, v2, v18

    .line 8541
    const-wide v11, 0x10300000005L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8543
    nop

    .line 8544
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v2

    div-long v2, v2, v18

    .line 8543
    const-wide v11, 0x10300000006L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8545
    const-wide v2, 0x10500000007L

    .line 8546
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v4

    .line 8545
    invoke-virtual {v8, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8547
    const-wide v2, 0x10500000008L

    .line 8548
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v11

    const-wide/16 v18, 0x3e8

    div-long v11, v11, v18

    .line 8547
    invoke-virtual {v8, v2, v3, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8549
    nop

    .line 8550
    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v2

    div-long v2, v2, v18

    .line 8549
    const-wide v11, 0x10300000009L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8551
    nop

    .line 8552
    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v2

    div-long v2, v2, v18

    .line 8551
    const-wide v11, 0x1030000000aL

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8553
    const-wide v2, 0x1050000000bL

    .line 8554
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v4

    .line 8553
    invoke-virtual {v8, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8555
    nop

    .line 8556
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v9, v10, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v3

    const-wide/16 v11, 0x3e8

    div-long/2addr v3, v11

    .line 8555
    const-wide v11, 0x1030000000cL

    invoke-virtual {v8, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8557
    const-wide v3, 0x1050000000dL

    .line 8558
    invoke-virtual {v0, v2, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v11

    .line 8557
    invoke-virtual {v8, v3, v4, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8559
    const-wide v3, 0x1030000000eL

    .line 8560
    invoke-virtual {v0, v2, v9, v10, v1}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v11

    const-wide/16 v18, 0x3e8

    div-long v11, v11, v18

    .line 8559
    invoke-virtual {v8, v3, v4, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8561
    const-wide v3, 0x1050000000fL

    .line 8562
    invoke-virtual {v0, v2, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v11

    .line 8561
    invoke-virtual {v8, v3, v4, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8563
    const-wide v3, 0x10300000010L

    .line 8564
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v1

    .line 8563
    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8565
    const-wide v1, 0x10300000011L

    .line 8566
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v9, v10, v4}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v11

    const-wide/16 v18, 0x3e8

    div-long v11, v11, v18

    .line 8565
    invoke-virtual {v8, v1, v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8567
    const-wide v1, 0x10500000012L

    .line 8568
    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v11

    .line 8567
    invoke-virtual {v8, v1, v2, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8569
    const-wide v1, 0x10300000013L

    .line 8570
    invoke-virtual {v0, v3, v9, v10, v4}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v11

    const-wide/16 v18, 0x3e8

    div-long v11, v11, v18

    .line 8569
    invoke-virtual {v8, v1, v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8571
    const-wide v1, 0x10500000014L

    .line 8572
    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v11

    .line 8571
    invoke-virtual {v8, v1, v2, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8573
    const-wide v1, 0x10300000015L

    .line 8574
    invoke-virtual {v0, v3}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v3

    .line 8573
    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8575
    invoke-virtual {v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8578
    nop

    .line 8579
    const/4 v1, 0x0

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v11

    .line 8580
    .local v11, "multicastWakeLockTimeTotalUs":J
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v4

    .line 8581
    .local v4, "multicastWakeLockCountTotal":I
    const-wide v1, 0x10b00000017L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8582
    .local v2, "wmctToken":J
    move-wide/from16 v24, v5

    const-wide/16 v18, 0x3e8

    .end local v5    # "mToken":J
    .local v24, "mToken":J
    div-long v5, v11, v18

    move-wide/from16 v18, v11

    const-wide v11, 0x10300000001L

    .end local v11    # "multicastWakeLockTimeTotalUs":J
    .local v18, "multicastWakeLockTimeTotalUs":J
    invoke-virtual {v8, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8584
    const-wide v5, 0x10500000002L

    invoke-virtual {v8, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8586
    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8588
    move-object/from16 v11, p2

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/BatteryConsumer;

    move-result-object v12

    .line 8591
    .local v12, "deviceConsumer":Landroid/os/BatteryConsumer;
    const/4 v1, 0x0

    .local v1, "powerComponent":I
    :goto_55d
    const/16 v5, 0x12

    if-ge v1, v5, :cond_5d2

    .line 8593
    const/4 v5, 0x0

    .line 8594
    .local v5, "n":I
    packed-switch v1, :pswitch_data_834

    :pswitch_565
    goto :goto_57d

    .line 8599
    :pswitch_566
    const/4 v5, 0x1

    .line 8600
    goto :goto_57d

    .line 8596
    :pswitch_568
    const/16 v5, 0xd

    .line 8597
    goto :goto_57d

    .line 8605
    :pswitch_56b
    const/4 v5, 0x3

    .line 8606
    goto :goto_57d

    .line 8623
    :pswitch_56d
    const/16 v5, 0xc

    goto :goto_57d

    .line 8608
    :pswitch_570
    const/4 v5, 0x4

    .line 8609
    goto :goto_57d

    .line 8602
    :pswitch_572
    const/4 v5, 0x2

    .line 8603
    goto :goto_57d

    .line 8617
    :pswitch_574
    const/4 v5, 0x6

    .line 8618
    goto :goto_57d

    .line 8620
    :pswitch_576
    const/16 v5, 0xb

    .line 8621
    goto :goto_57d

    .line 8611
    :pswitch_579
    const/4 v5, 0x5

    .line 8612
    goto :goto_57d

    .line 8614
    :pswitch_57b
    const/4 v5, 0x7

    .line 8615
    nop

    .line 8626
    :goto_57d
    move-wide/from16 v22, v2

    .end local v2    # "wmctToken":J
    .local v22, "wmctToken":J
    const-wide v2, 0x20b00000011L

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8627
    .local v2, "puiToken":J
    move-wide/from16 v26, v13

    const-wide v13, 0x10e00000001L

    .end local v13    # "rawUptimeUs":J
    .local v26, "rawUptimeUs":J
    invoke-virtual {v8, v13, v14, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8628
    const/4 v6, 0x0

    const-wide v13, 0x10500000002L

    invoke-virtual {v8, v13, v14, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8629
    const-wide v13, 0x10100000003L

    .line 8630
    move v6, v4

    move/from16 v28, v5

    .end local v4    # "multicastWakeLockCountTotal":I
    .end local v5    # "n":I
    .local v6, "multicastWakeLockCountTotal":I
    .local v28, "n":I
    invoke-virtual {v12, v1}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v4

    .line 8629
    invoke-virtual {v8, v13, v14, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8631
    const-wide v4, 0x10800000004L

    .line 8632
    invoke-direct {v0, v1}, Landroid/os/BatteryStats;->shouldHidePowerComponent(I)Z

    move-result v13

    .line 8631
    invoke-virtual {v8, v4, v5, v13}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8633
    const-wide v4, 0x10100000005L

    const/4 v13, 0x0

    invoke-virtual {v8, v4, v5, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8634
    const-wide v4, 0x10100000006L

    invoke-virtual {v8, v4, v5, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8635
    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8592
    .end local v2    # "puiToken":J
    .end local v28    # "n":I
    add-int/lit8 v1, v1, 0x1

    move v4, v6

    move-wide/from16 v2, v22

    move-wide/from16 v13, v26

    goto :goto_55d

    .line 8591
    .end local v6    # "multicastWakeLockCountTotal":I
    .end local v22    # "wmctToken":J
    .end local v26    # "rawUptimeUs":J
    .local v2, "wmctToken":J
    .restart local v4    # "multicastWakeLockCountTotal":I
    .restart local v13    # "rawUptimeUs":J
    :cond_5d2
    move-wide/from16 v22, v2

    move v6, v4

    move-wide/from16 v26, v13

    .line 8639
    .end local v1    # "powerComponent":I
    .end local v2    # "wmctToken":J
    .end local v4    # "multicastWakeLockCountTotal":I
    .end local v13    # "rawUptimeUs":J
    .restart local v6    # "multicastWakeLockCountTotal":I
    .restart local v22    # "wmctToken":J
    .restart local v26    # "rawUptimeUs":J
    const-wide v1, 0x10b00000012L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 8640
    .local v13, "pusToken":J
    const-wide v1, 0x10100000001L

    .line 8641
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getBatteryCapacity()D

    move-result-wide v3

    .line 8640
    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8642
    const-wide v1, 0x10100000002L

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v3

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8643
    const-wide v1, 0x10100000003L

    .line 8644
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 8643
    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8645
    const-wide v1, 0x10100000004L

    .line 8646
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 8645
    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8647
    invoke-virtual {v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8650
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v28

    .line 8651
    .local v28, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v5

    .line 8652
    .local v5, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_637
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a9

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Ljava/util/Map$Entry;

    .line 8653
    .local v30, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const-wide v1, 0x20b00000013L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8654
    .local v2, "rpmToken":J
    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-wide/from16 v31, v2

    const-wide v2, 0x10900000001L

    .end local v2    # "rpmToken":J
    .local v31, "rpmToken":J
    invoke-virtual {v8, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8655
    const-wide v38, 0x10b00000002L

    .line 8656
    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/16 v33, 0x0

    .line 8655
    move-object/from16 v1, p1

    move-wide/from16 v60, v31

    move-wide/from16 v31, v2

    .end local v31    # "rpmToken":J
    .local v60, "rpmToken":J
    move-wide/from16 v2, v38

    move/from16 v35, v6

    .end local v6    # "multicastWakeLockCountTotal":I
    .local v35, "multicastWakeLockCountTotal":I
    move-object/from16 v62, v5

    .end local v5    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v62, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-wide v5, v9

    move-object/from16 v31, v7

    .end local v7    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v31, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    move/from16 v7, v33

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8657
    const-wide v2, 0x10b00000003L

    .line 8658
    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v7, v62

    .end local v62    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v7, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/16 v32, 0x0

    .line 8657
    move-object/from16 v1, p1

    move-object/from16 v33, v7

    .end local v7    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v33, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move/from16 v7, v32

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8659
    move-wide/from16 v1, v60

    .end local v60    # "rpmToken":J
    .local v1, "rpmToken":J
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8660
    .end local v1    # "rpmToken":J
    .end local v30    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-object/from16 v7, v31

    move-object/from16 v5, v33

    move/from16 v6, v35

    goto :goto_637

    .line 8663
    .end local v31    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v33    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v35    # "multicastWakeLockCountTotal":I
    .restart local v5    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v6    # "multicastWakeLockCountTotal":I
    .local v7, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_6a9
    move-object/from16 v33, v5

    move/from16 v35, v6

    move-object/from16 v31, v7

    .end local v5    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v6    # "multicastWakeLockCountTotal":I
    .end local v7    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v31    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v33    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v35    # "multicastWakeLockCountTotal":I
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_6b1
    const/16 v1, 0x64

    if-ge v7, v1, :cond_6e5

    .line 8664
    const-wide v1, 0x20b00000014L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 8665
    .local v5, "sbToken":J
    const-wide v1, 0x10e00000001L

    invoke-virtual {v8, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8666
    const-wide v2, 0x10b00000002L

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v29, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v63, v5

    .end local v5    # "sbToken":J
    .local v63, "sbToken":J
    move-wide v5, v9

    move/from16 v30, v7

    .end local v7    # "i":I
    .local v30, "i":I
    move/from16 v7, v29

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8668
    move-wide/from16 v1, v63

    .end local v63    # "sbToken":J
    .local v1, "sbToken":J
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8663
    .end local v1    # "sbToken":J
    add-int/lit8 v7, v30, 0x1

    .end local v30    # "i":I
    .restart local v7    # "i":I
    goto :goto_6b1

    :cond_6e5
    move/from16 v30, v7

    .line 8672
    .end local v7    # "i":I
    const-wide v2, 0x10b00000015L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-wide v5, v9

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8676
    const/4 v1, 0x0

    move v7, v1

    .restart local v7    # "i":I
    :goto_6f9
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    if-ge v7, v1, :cond_72f

    .line 8677
    const-wide v1, 0x20b00000010L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 8678
    .local v5, "pssToken":J
    const-wide v1, 0x10e00000001L

    invoke-virtual {v8, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8679
    const-wide v2, 0x10b00000002L

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v29, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v65, v5

    .end local v5    # "pssToken":J
    .local v65, "pssToken":J
    move-wide v5, v9

    move/from16 v30, v7

    .end local v7    # "i":I
    .restart local v30    # "i":I
    move/from16 v7, v29

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8681
    move-wide/from16 v1, v65

    .end local v65    # "pssToken":J
    .local v1, "pssToken":J
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8676
    .end local v1    # "pssToken":J
    add-int/lit8 v7, v30, 0x1

    .end local v30    # "i":I
    .restart local v7    # "i":I
    goto :goto_6f9

    :cond_72f
    move/from16 v30, v7

    .line 8685
    .end local v7    # "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v29

    .line 8686
    .local v29, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_73d
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_781

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Ljava/util/Map$Entry;

    .line 8687
    .local v32, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const-wide v1, 0x20b00000016L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 8688
    .local v5, "wrToken":J
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v2, 0x10900000001L

    invoke-virtual {v8, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8689
    const-wide v38, 0x10b00000002L

    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v40, v2

    move-wide/from16 v2, v38

    move-wide/from16 v67, v5

    .end local v5    # "wrToken":J
    .local v67, "wrToken":J
    move-wide v5, v9

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8690
    move-wide/from16 v1, v67

    .end local v67    # "wrToken":J
    .local v1, "wrToken":J
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8691
    .end local v1    # "wrToken":J
    .end local v32    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    goto :goto_73d

    .line 8694
    :cond_781
    const/4 v1, 0x0

    move v7, v1

    .restart local v7    # "i":I
    :goto_783
    const/4 v5, 0x5

    if-ge v7, v5, :cond_7ba

    .line 8695
    const-wide v1, 0x20b00000018L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8696
    .local v2, "wssToken":J
    const-wide v5, 0x10e00000001L

    invoke-virtual {v8, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8697
    const-wide v4, 0x10b00000002L

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    const/16 v30, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v69, v2

    .end local v2    # "wssToken":J
    .local v69, "wssToken":J
    move-wide v2, v4

    move-object v4, v6

    const/16 v32, 0x5

    move-wide v5, v9

    move/from16 v38, v7

    .end local v7    # "i":I
    .local v38, "i":I
    move/from16 v7, v30

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8699
    move-wide/from16 v1, v69

    .end local v69    # "wssToken":J
    .local v1, "wssToken":J
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8694
    .end local v1    # "wssToken":J
    add-int/lit8 v7, v38, 0x1

    .end local v38    # "i":I
    .restart local v7    # "i":I
    goto :goto_783

    :cond_7ba
    move/from16 v38, v7

    .line 8703
    .end local v7    # "i":I
    const/4 v1, 0x0

    move v7, v1

    .restart local v7    # "i":I
    :goto_7be
    const/16 v1, 0x8

    if-ge v7, v1, :cond_7f2

    .line 8704
    const-wide v1, 0x20b00000019L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 8705
    .local v5, "wsToken":J
    const-wide v1, 0x10e00000001L

    invoke-virtual {v8, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8706
    const-wide v2, 0x10b00000002L

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v30, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v71, v5

    .end local v5    # "wsToken":J
    .local v71, "wsToken":J
    move-wide v5, v9

    move/from16 v32, v7

    .end local v7    # "i":I
    .local v32, "i":I
    move/from16 v7, v30

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8708
    move-wide/from16 v1, v71

    .end local v71    # "wsToken":J
    .local v1, "wsToken":J
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8703
    .end local v1    # "wsToken":J
    add-int/lit8 v7, v32, 0x1

    .end local v32    # "i":I
    .restart local v7    # "i":I
    goto :goto_7be

    :cond_7f2
    move/from16 v32, v7

    .line 8712
    .end local v7    # "i":I
    const/4 v1, 0x0

    move v7, v1

    .restart local v7    # "i":I
    :goto_7f6
    const/16 v1, 0xd

    if-ge v7, v1, :cond_82e

    .line 8713
    const-wide v1, 0x20b0000001aL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 8714
    .local v5, "wssToken":J
    const-wide v2, 0x10e00000001L

    invoke-virtual {v8, v2, v3, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8715
    const-wide v38, 0x10b00000002L

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v30, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v40, v2

    move-wide/from16 v2, v38

    move-wide/from16 v73, v5

    .end local v5    # "wssToken":J
    .local v73, "wssToken":J
    move-wide v5, v9

    move/from16 v32, v7

    .end local v7    # "i":I
    .restart local v32    # "i":I
    move/from16 v7, v30

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8717
    move-wide/from16 v1, v73

    .end local v73    # "wssToken":J
    .local v1, "wssToken":J
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8712
    .end local v1    # "wssToken":J
    add-int/lit8 v7, v32, 0x1

    .end local v32    # "i":I
    .restart local v7    # "i":I
    goto :goto_7f6

    .line 8720
    .end local v7    # "i":I
    :cond_82e
    move-wide/from16 v1, v20

    .end local v20    # "sToken":J
    .local v1, "sToken":J
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8721
    return-void

    :pswitch_data_834
    .packed-switch 0x0
        :pswitch_57b
        :pswitch_565
        :pswitch_579
        :pswitch_576
        :pswitch_565
        :pswitch_565
        :pswitch_574
        :pswitch_565
        :pswitch_572
        :pswitch_565
        :pswitch_565
        :pswitch_570
        :pswitch_565
        :pswitch_56d
        :pswitch_56b
        :pswitch_568
        :pswitch_566
    .end packed-switch
.end method

.method private static greylist-max-o dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "label1"    # Ljava/lang/String;
    .param p2, "label2"    # Ljava/lang/String;
    .param p3, "label3"    # Ljava/lang/String;
    .param p4, "estimatedTime"    # J

    .line 7204
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_8

    .line 7205
    const/4 v0, 0x0

    return v0

    .line 7207
    :cond_8
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7208
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7209
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7210
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7211
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 7212
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7213
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 7214
    const/4 v1, 0x1

    return v1
.end method

.method private static greylist-max-o dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V
    .registers 25
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p4, "rawRealtimeUs"    # J
    .param p6, "which"    # I

    .line 3877
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_7

    .line 3878
    return-void

    .line 3881
    :cond_7
    invoke-virtual/range {p3 .. p6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    .line 3882
    .local v2, "timeMs":J
    move/from16 v4, p6

    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 3883
    .local v5, "count":I
    const-wide/16 v6, 0x3e8

    div-long v8, p4, v6

    invoke-virtual {v1, v8, v9}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v8

    .line 3884
    .local v8, "maxDurationMs":J
    div-long v10, p4, v6

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v10

    .line 3885
    .local v10, "curDurationMs":J
    div-long v6, p4, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v6

    .line 3886
    .local v6, "totalDurationMs":J
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    const-wide/16 v13, -0x1

    if-nez v12, :cond_3f

    if-nez v5, :cond_3f

    cmp-long v12, v8, v13

    if-nez v12, :cond_3f

    cmp-long v12, v10, v13

    if-nez v12, :cond_3f

    cmp-long v12, v6, v13

    if-eqz v12, :cond_80

    .line 3888
    :cond_3f
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 3889
    .local v13, "token":J
    move-wide/from16 v16, v13

    .end local v13    # "token":J
    .local v16, "token":J
    const-wide v12, 0x10300000001L

    invoke-virtual {v0, v12, v13, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3890
    const-wide v12, 0x10300000002L

    invoke-virtual {v0, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3892
    const-wide/16 v12, -0x1

    cmp-long v14, v8, v12

    if-eqz v14, :cond_63

    .line 3893
    const-wide v14, 0x10300000003L

    invoke-virtual {v0, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3895
    :cond_63
    cmp-long v14, v10, v12

    if-eqz v14, :cond_6f

    .line 3896
    const-wide v14, 0x10300000004L

    invoke-virtual {v0, v14, v15, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3898
    :cond_6f
    cmp-long v12, v6, v12

    if-eqz v12, :cond_7b

    .line 3899
    const-wide v12, 0x10300000005L

    invoke-virtual {v0, v12, v13, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3901
    :cond_7b
    move-wide/from16 v12, v16

    .end local v16    # "token":J
    .local v12, "token":J
    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3903
    .end local v12    # "token":J
    :cond_80
    return-void
.end method

.method private static final greylist-max-o dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V
    .registers 14
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p5, "rawRealtime"    # J
    .param p7, "which"    # I

    .line 3856
    if-eqz p4, :cond_2a

    .line 3858
    invoke-virtual {p4, p5, p6, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    .line 3859
    .local v0, "totalTime":J
    invoke-virtual {p4, p7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    .line 3860
    .local v2, "count":I
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_16

    if-eqz v2, :cond_2a

    .line 3861
    :cond_16
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, p1, p2, p3, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3864
    .end local v0    # "totalTime":J
    .end local v2    # "count":I
    :cond_2a
    return-void
.end method

.method public static blacklist formatCharge(D)Ljava/lang/String;
    .registers 3
    .param p0, "power"    # D

    .line 3615
    invoke-static {p0, p1}, Landroid/os/BatteryStats;->formatValue(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final greylist-max-o formatTimeMs(Ljava/lang/StringBuilder;J)V
    .registers 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "time"    # J

    .line 3571
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    .line 3572
    .local v2, "sec":J
    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 3573
    mul-long/2addr v0, v2

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3574
    const-string/jumbo v0, "ms "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3575
    return-void
.end method

.method public static final greylist-max-o formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .registers 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "time"    # J

    .line 3578
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    .line 3579
    .local v2, "sec":J
    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 3580
    mul-long/2addr v0, v2

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3581
    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3582
    return-void
.end method

.method private static final greylist-max-o formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .registers 16
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "seconds"    # J

    .line 3543
    const-wide/32 v0, 0x15180

    div-long v0, p1, v0

    .line 3544
    .local v0, "days":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    .line 3545
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3546
    const-string v4, "d "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3548
    :cond_13
    const-wide/16 v4, 0x3c

    mul-long v6, v0, v4

    mul-long/2addr v6, v4

    const-wide/16 v8, 0x18

    mul-long/2addr v6, v8

    .line 3550
    .local v6, "used":J
    sub-long v8, p1, v6

    const-wide/16 v10, 0xe10

    div-long/2addr v8, v10

    .line 3551
    .local v8, "hours":J
    cmp-long v10, v8, v2

    if-nez v10, :cond_28

    cmp-long v10, v6, v2

    if-eqz v10, :cond_31

    .line 3552
    :cond_28
    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3553
    const-string/jumbo v10, "h "

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3555
    :cond_31
    mul-long v10, v8, v4

    mul-long/2addr v10, v4

    add-long/2addr v6, v10

    .line 3557
    sub-long v10, p1, v6

    div-long/2addr v10, v4

    .line 3558
    .local v10, "mins":J
    cmp-long v12, v10, v2

    if-nez v12, :cond_40

    cmp-long v12, v6, v2

    if-eqz v12, :cond_49

    .line 3559
    :cond_40
    invoke-virtual {p0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3560
    const-string/jumbo v12, "m "

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3562
    :cond_49
    mul-long/2addr v4, v10

    add-long/2addr v6, v4

    .line 3564
    cmp-long v4, p1, v2

    if-nez v4, :cond_53

    cmp-long v2, v6, v2

    if-eqz v2, :cond_5e

    .line 3565
    :cond_53
    sub-long v2, p1, v6

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3566
    const-string/jumbo v2, "s "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3568
    :cond_5e
    return-void
.end method

.method private static blacklist formatValue(D)Ljava/lang/String;
    .registers 7
    .param p0, "value"    # D

    .line 3622
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_9

    const-string v0, "0"

    return-object v0

    .line 3625
    :cond_9
    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, p0, v0

    if-gez v0, :cond_15

    .line 3626
    const-string v0, "%.8f"

    .local v0, "format":Ljava/lang/String;
    goto :goto_62

    .line 3627
    .end local v0    # "format":Ljava/lang/String;
    :cond_15
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, p0, v0

    if-gez v0, :cond_21

    .line 3628
    const-string v0, "%.7f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_62

    .line 3629
    .end local v0    # "format":Ljava/lang/String;
    :cond_21
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2d

    .line 3630
    const-string v0, "%.6f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_62

    .line 3631
    .end local v0    # "format":Ljava/lang/String;
    :cond_2d
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, p0, v0

    if-gez v0, :cond_39

    .line 3632
    const-string v0, "%.5f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_62

    .line 3633
    .end local v0    # "format":Ljava/lang/String;
    :cond_39
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, p0, v0

    if-gez v0, :cond_45

    .line 3634
    const-string v0, "%.4f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_62

    .line 3635
    .end local v0    # "format":Ljava/lang/String;
    :cond_45
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4e

    .line 3636
    const-string v0, "%.3f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_62

    .line 3637
    .end local v0    # "format":Ljava/lang/String;
    :cond_4e
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_57

    .line 3638
    const-string v0, "%.2f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_62

    .line 3639
    .end local v0    # "format":Ljava/lang/String;
    :cond_57
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_60

    .line 3640
    const-string v0, "%.1f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_62

    .line 3642
    .end local v0    # "format":Ljava/lang/String;
    :cond_60
    const-string v0, "%.0f"

    .line 3646
    .restart local v0    # "format":Ljava/lang/String;
    :goto_62
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getBatteryUsageStats(Landroid/content/Context;)Landroid/os/BatteryUsageStats;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 8735
    new-instance v0, Lcom/android/internal/os/BatteryUsageStatsProvider;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/os/BatteryUsageStatsProvider;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    .line 8736
    .local v0, "provider":Lcom/android/internal/os/BatteryUsageStatsProvider;
    new-instance v1, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 8737
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v1

    .line 8738
    .local v1, "query":Landroid/os/BatteryUsageStatsQuery;
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getUidMobileRadioStats(Ljava/util/List;)Ljava/util/List;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/UidBatteryConsumer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/BatteryStats$UidMobileRadioStats;",
            ">;"
        }
    .end annotation

    .line 8849
    .local p1, "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    .line 8850
    .local v0, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 8851
    .local v1, "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_75

    .line 8852
    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UidBatteryConsumer;

    .line 8853
    .local v4, "consumer":Landroid/os/UidBatteryConsumer;
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_24

    .line 8854
    goto :goto_72

    .line 8857
    :cond_24
    invoke-virtual {v4}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v5

    .line 8858
    .local v5, "uid":I
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid;

    .line 8859
    .local v6, "u":Landroid/os/BatteryStats$Uid;
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v21

    .line 8861
    .local v21, "rxPackets":J
    const/4 v10, 0x1

    invoke-virtual {v6, v10, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v23

    .line 8863
    .local v23, "txPackets":J
    const-wide/16 v10, 0x0

    cmp-long v12, v21, v10

    if-nez v12, :cond_43

    cmp-long v10, v23, v10

    if-nez v10, :cond_43

    .line 8864
    goto :goto_72

    .line 8866
    :cond_43
    invoke-virtual {v6, v9}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v13, v10, v12

    .line 8867
    .local v13, "radioActiveMs":J
    invoke-virtual {v6, v9}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v25

    .line 8868
    .local v25, "radioActiveCount":I
    long-to-double v9, v13

    add-long v11, v21, v23

    long-to-double v11, v11

    div-double v26, v9, v11

    .line 8869
    .local v26, "msPerPacket":D
    cmpl-double v7, v26, v7

    if-nez v7, :cond_5a

    .line 8870
    goto :goto_72

    .line 8872
    :cond_5a
    new-instance v7, Landroid/os/BatteryStats$UidMobileRadioStats;

    const/16 v20, 0x0

    move-object v9, v7

    move v10, v5

    move-wide/from16 v11, v21

    move-wide/from16 v28, v13

    .end local v13    # "radioActiveMs":J
    .local v28, "radioActiveMs":J
    move-wide/from16 v13, v23

    move-wide/from16 v15, v28

    move/from16 v17, v25

    move-wide/from16 v18, v26

    invoke-direct/range {v9 .. v20}, Landroid/os/BatteryStats$UidMobileRadioStats;-><init>(IJJJIDLandroid/os/BatteryStats$UidMobileRadioStats-IA;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8851
    .end local v4    # "consumer":Landroid/os/UidBatteryConsumer;
    .end local v5    # "uid":I
    .end local v6    # "u":Landroid/os/BatteryStats$Uid;
    .end local v21    # "rxPackets":J
    .end local v23    # "txPackets":J
    .end local v25    # "radioActiveCount":I
    .end local v26    # "msPerPacket":D
    .end local v28    # "radioActiveMs":J
    :goto_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_75
    move-object/from16 v3, p1

    .line 8876
    .end local v2    # "i":I
    new-instance v2, Landroid/os/BatteryStats$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/os/BatteryStats$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 8878
    return-object v1
.end method

.method static synthetic blacklist lambda$getUidMobileRadioStats$0(Landroid/os/BatteryStats$UidMobileRadioStats;Landroid/os/BatteryStats$UidMobileRadioStats;)I
    .registers 6
    .param p0, "lhs"    # Landroid/os/BatteryStats$UidMobileRadioStats;
    .param p1, "rhs"    # Landroid/os/BatteryStats$UidMobileRadioStats;

    .line 8877
    iget-wide v0, p1, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    iget-wide v2, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o mapToInternalProcessState(I)I
    .registers 3
    .param p0, "procState"    # I

    .line 648
    const/16 v0, 0x14

    if-ne p0, v0, :cond_6

    .line 649
    const/4 v0, 0x7

    return v0

    .line 650
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 651
    const/4 v0, 0x0

    return v0

    .line 652
    :cond_b
    invoke-static {p0}, Landroid/app/ActivityManager;->isForegroundService(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 654
    const/4 v0, 0x1

    return v0

    .line 655
    :cond_13
    const/4 v1, 0x6

    if-gt p0, v1, :cond_17

    .line 657
    return v0

    .line 658
    :cond_17
    const/16 v0, 0xb

    if-gt p0, v0, :cond_1d

    .line 659
    const/4 v0, 0x3

    return v0

    .line 660
    :cond_1d
    const/16 v0, 0xc

    if-gt p0, v0, :cond_23

    .line 661
    const/4 v0, 0x4

    return v0

    .line 662
    :cond_23
    const/16 v0, 0xd

    if-gt p0, v0, :cond_29

    .line 663
    const/4 v0, 0x5

    return v0

    .line 665
    :cond_29
    return v1
.end method

.method public static blacklist mapUidProcessStateToBatteryConsumerProcessState(I)I
    .registers 2
    .param p0, "processState"    # I

    .line 674
    packed-switch p0, :pswitch_data_e

    .line 686
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 684
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 680
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 682
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 677
    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method static greylist-max-o printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V
    .registers 15
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "oldval"    # I
    .param p2, "newval"    # I
    .param p3, "wakelockTag"    # Landroid/os/BatteryStats$HistoryTag;
    .param p4, "descriptions"    # [Landroid/os/BatteryStats$BitDescription;
    .param p5, "longNames"    # Z

    .line 6733
    xor-int v0, p1, p2

    .line 6734
    .local v0, "diff":I
    if-nez v0, :cond_5

    return-void

    .line 6735
    :cond_5
    const/4 v1, 0x0

    .line 6736
    .local v1, "didWake":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, p4

    const-string v4, "\""

    const-string v5, ":\""

    if-ge v2, v3, :cond_95

    .line 6737
    aget-object v3, p4, v2

    .line 6738
    .local v3, "bd":Landroid/os/BatteryStats$BitDescription;
    iget v6, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v6, v0

    if-eqz v6, :cond_91

    .line 6739
    if-eqz p5, :cond_1a

    const-string v6, " "

    goto :goto_1c

    :cond_1a
    const-string v6, ","

    :goto_1c
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6740
    iget v6, v3, Landroid/os/BatteryStats$BitDescription;->shift:I

    const-string v7, "="

    if-gez v6, :cond_61

    .line 6741
    iget v6, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v6, p2

    if-eqz v6, :cond_2d

    const-string v6, "+"

    goto :goto_2f

    :cond_2d
    const-string v6, "-"

    :goto_2f
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6742
    if-eqz p5, :cond_37

    iget-object v6, v3, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_39

    :cond_37
    iget-object v6, v3, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_39
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6743
    iget v6, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v6, v8, :cond_91

    if-eqz p3, :cond_91

    .line 6744
    const/4 v1, 0x1

    .line 6745
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6746
    if-eqz p5, :cond_5b

    .line 6747
    iget v6, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 6748
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6749
    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6750
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 6752
    :cond_5b
    iget v4, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 6756
    :cond_61
    if-eqz p5, :cond_66

    iget-object v4, v3, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_68

    :cond_66
    iget-object v4, v3, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_68
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6757
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6758
    iget v4, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v4, p2

    iget v5, v3, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int/2addr v4, v5

    .line 6759
    .local v4, "val":I
    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    if-eqz v5, :cond_8e

    if-ltz v4, :cond_8e

    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_8e

    .line 6760
    if-eqz p5, :cond_86

    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    aget-object v5, v5, v4

    goto :goto_8a

    :cond_86
    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    aget-object v5, v5, v4

    :goto_8a
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 6762
    :cond_8e
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6736
    .end local v3    # "bd":Landroid/os/BatteryStats$BitDescription;
    .end local v4    # "val":I
    :cond_91
    :goto_91
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 6767
    .end local v2    # "i":I
    :cond_95
    if-nez v1, :cond_bb

    if-eqz p3, :cond_bb

    .line 6768
    if-eqz p5, :cond_9e

    const-string v2, " wake_lock="

    goto :goto_a0

    :cond_9e
    const-string v2, ",w="

    :goto_a0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6769
    if-eqz p5, :cond_b6

    .line 6770
    iget v2, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 6771
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6772
    iget-object v2, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6773
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bb

    .line 6775
    :cond_b6
    iget v2, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6778
    :cond_bb
    :goto_bb
    return-void
.end method

.method private blacklist printCellularPerRatBreakdown(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .registers 36
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "rawRealtimeMs"    # J

    .line 4155
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-wide/from16 v8, p4

    const-string v10, "    All frequencies:\n"

    .line 4157
    .local v10, "allFrequenciesHeader":Ljava/lang/String;
    const-string v0, "    Unknown frequency:\n"

    const-string v1, "    Low frequency (less than 1GHz):\n"

    const-string v2, "    Middle frequency (1GHz to 3GHz):\n"

    const-string v3, "    High frequency (3GHz to 6GHz):\n"

    const-string v4, "    Mmwave frequency (greater than 6GHz):\n"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 4163
    .local v11, "nrFrequencyRangeDescription":[Ljava/lang/String;
    const-string v12, "      Signal Strength Time:\n"

    .line 4165
    .local v12, "signalStrengthHeader":Ljava/lang/String;
    const-string v13, "      Tx Time:\n"

    .line 4167
    .local v13, "txHeader":Ljava/lang/String;
    const-string v14, "      Rx Time: "

    .line 4169
    .local v14, "rxHeader":Ljava/lang/String;
    const-string v0, "        unknown:  "

    const-string v1, "        poor:     "

    const-string v2, "        moderate: "

    const-string v3, "        good:     "

    const-string v4, "        great:    "

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 4176
    .local v15, "signalStrengthDescription":[Ljava/lang/String;
    const-wide/16 v0, 0x3e8

    mul-long v2, v8, v0

    const/4 v4, 0x0

    invoke-virtual {v6, v2, v3, v4}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v2

    div-long/2addr v2, v0

    .line 4179
    .local v2, "totalActiveTimesMs":J
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4180
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4181
    const-string v0, "Active Cellular Radio Access Technology Breakdown:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4182
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4184
    const/4 v0, 0x0

    .line 4185
    .local v0, "hasData":Z
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v5

    .line 4186
    .local v5, "numSignalStrength":I
    const/4 v1, 0x2

    .local v1, "rat":I
    :goto_4a
    if-ltz v1, :cond_19f

    .line 4187
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4188
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4189
    const-string v4, "  "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4190
    sget-object v4, Landroid/os/BatteryStats;->RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4191
    const-string v4, ":\n"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4192
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4195
    const/4 v4, 0x2

    if-ne v1, v4, :cond_6b

    array-length v4, v11

    goto :goto_6c

    :cond_6b
    const/4 v4, 0x1

    :goto_6c
    move/from16 v17, v4

    .line 4196
    .local v17, "numFreqLvl":I
    add-int/lit8 v4, v17, -0x1

    move/from16 v18, v0

    .end local v0    # "hasData":Z
    .local v4, "freqLvl":I
    .local v18, "hasData":Z
    :goto_72
    if-ltz v4, :cond_17d

    .line 4197
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 4198
    .local v0, "freqDescriptionStart":I
    const/16 v19, 0x0

    .line 4199
    .local v19, "hasFreqData":Z
    move-object/from16 v20, v10

    const/4 v10, 0x2

    .end local v10    # "allFrequenciesHeader":Ljava/lang/String;
    .local v20, "allFrequenciesHeader":Ljava/lang/String;
    if-ne v1, v10, :cond_85

    .line 4200
    aget-object v10, v11, v4

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    .line 4202
    :cond_85
    const-string v10, "    All frequencies:\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4205
    :goto_8a
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4206
    const-string v10, "      Signal Strength Time:\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4207
    const/4 v10, 0x0

    .local v10, "strength":I
    :goto_93
    const-wide/16 v21, 0x0

    move-object/from16 v23, v11

    .end local v11    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .local v23, "nrFrequencyRangeDescription":[Ljava/lang/String;
    const-string v11, ")\n"

    move-object/from16 v24, v12

    .end local v12    # "signalStrengthHeader":Ljava/lang/String;
    .local v24, "signalStrengthHeader":Ljava/lang/String;
    const-string v12, "("

    if-ge v10, v5, :cond_eb

    .line 4208
    move-object/from16 v25, v13

    move v13, v0

    .end local v0    # "freqDescriptionStart":I
    .local v13, "freqDescriptionStart":I
    .local v25, "txHeader":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v26, v1

    .end local v1    # "rat":I
    .local v26, "rat":I
    move/from16 v28, v13

    move-object/from16 v27, v14

    move-wide v13, v2

    .end local v2    # "totalActiveTimesMs":J
    .end local v14    # "rxHeader":Ljava/lang/String;
    .local v13, "totalActiveTimesMs":J
    .local v27, "rxHeader":Ljava/lang/String;
    .local v28, "freqDescriptionStart":I
    move v2, v4

    move v3, v10

    move v9, v4

    move v8, v5

    const/16 v16, 0x2

    .end local v4    # "freqLvl":I
    .end local v5    # "numSignalStrength":I
    .local v8, "numSignalStrength":I
    .local v9, "freqLvl":I
    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->getActiveRadioDurationMs(IIIJ)J

    move-result-wide v0

    .line 4210
    .local v0, "timeMs":J
    cmp-long v2, v0, v21

    if-gtz v2, :cond_bc

    goto :goto_d7

    .line 4211
    :cond_bc
    const/4 v2, 0x1

    .line 4212
    .end local v19    # "hasFreqData":Z
    .local v2, "hasFreqData":Z
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4213
    aget-object v3, v15, v10

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4214
    invoke-static {v7, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4215
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4216
    invoke-virtual {v6, v0, v1, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4217
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v2

    .line 4207
    .end local v0    # "timeMs":J
    .end local v2    # "hasFreqData":Z
    .restart local v19    # "hasFreqData":Z
    :goto_d7
    add-int/lit8 v10, v10, 0x1

    move v5, v8

    move v4, v9

    move-wide v2, v13

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    move/from16 v1, v26

    move-object/from16 v14, v27

    move/from16 v0, v28

    move-wide/from16 v8, p4

    goto :goto_93

    .end local v8    # "numSignalStrength":I
    .end local v9    # "freqLvl":I
    .end local v25    # "txHeader":Ljava/lang/String;
    .end local v26    # "rat":I
    .end local v27    # "rxHeader":Ljava/lang/String;
    .end local v28    # "freqDescriptionStart":I
    .local v0, "freqDescriptionStart":I
    .restart local v1    # "rat":I
    .local v2, "totalActiveTimesMs":J
    .restart local v4    # "freqLvl":I
    .restart local v5    # "numSignalStrength":I
    .local v13, "txHeader":Ljava/lang/String;
    .restart local v14    # "rxHeader":Ljava/lang/String;
    :cond_eb
    move/from16 v28, v0

    move/from16 v26, v1

    move v9, v4

    move v8, v5

    move-object/from16 v25, v13

    move-object/from16 v27, v14

    const/16 v16, 0x2

    move-wide v13, v2

    .line 4220
    .end local v0    # "freqDescriptionStart":I
    .end local v1    # "rat":I
    .end local v2    # "totalActiveTimesMs":J
    .end local v4    # "freqLvl":I
    .end local v5    # "numSignalStrength":I
    .end local v10    # "strength":I
    .end local v14    # "rxHeader":Ljava/lang/String;
    .restart local v8    # "numSignalStrength":I
    .restart local v9    # "freqLvl":I
    .local v13, "totalActiveTimesMs":J
    .restart local v25    # "txHeader":Ljava/lang/String;
    .restart local v26    # "rat":I
    .restart local v27    # "rxHeader":Ljava/lang/String;
    .restart local v28    # "freqDescriptionStart":I
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4221
    const-string v0, "      Tx Time:\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4222
    const/4 v0, 0x0

    move v10, v0

    .restart local v10    # "strength":I
    :goto_102
    if-ge v10, v8, :cond_133

    .line 4223
    move-object/from16 v0, p0

    move/from16 v1, v26

    move v2, v9

    move v3, v10

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->getActiveTxRadioDurationMs(IIIJ)J

    move-result-wide v0

    .line 4225
    .local v0, "timeMs":J
    cmp-long v2, v0, v21

    if-gtz v2, :cond_115

    goto :goto_130

    .line 4226
    :cond_115
    const/4 v2, 0x1

    .line 4227
    .end local v19    # "hasFreqData":Z
    .local v2, "hasFreqData":Z
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4228
    aget-object v3, v15, v10

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4229
    invoke-static {v7, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4230
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4231
    invoke-virtual {v6, v0, v1, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4232
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v2

    .line 4222
    .end local v0    # "timeMs":J
    .end local v2    # "hasFreqData":Z
    .restart local v19    # "hasFreqData":Z
    :goto_130
    add-int/lit8 v10, v10, 0x1

    goto :goto_102

    .line 4235
    .end local v10    # "strength":I
    :cond_133
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4236
    const-string v0, "      Rx Time: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4237
    move-wide/from16 v1, p4

    move v3, v8

    move-object v0, v11

    move/from16 v4, v26

    .end local v8    # "numSignalStrength":I
    .end local v26    # "rat":I
    .local v3, "numSignalStrength":I
    .local v4, "rat":I
    invoke-virtual {v6, v4, v9, v1, v2}, Landroid/os/BatteryStats;->getActiveRxRadioDurationMs(IIJ)J

    move-result-wide v10

    .line 4238
    .local v10, "rxTimeMs":J
    invoke-static {v7, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4239
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4240
    invoke-virtual {v6, v10, v11, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4241
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4243
    if-eqz v19, :cond_164

    .line 4244
    const/16 v18, 0x1

    .line 4245
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4246
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4247
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16a

    .line 4250
    :cond_164
    const/4 v5, 0x0

    move/from16 v0, v28

    .end local v28    # "freqDescriptionStart":I
    .local v0, "freqDescriptionStart":I
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4196
    .end local v0    # "freqDescriptionStart":I
    .end local v10    # "rxTimeMs":J
    .end local v19    # "hasFreqData":Z
    :goto_16a
    add-int/lit8 v0, v9, -0x1

    move-wide v8, v1

    move v5, v3

    move v1, v4

    move-wide v2, v13

    move-object/from16 v10, v20

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    move-object/from16 v14, v27

    move v4, v0

    .end local v9    # "freqLvl":I
    .local v0, "freqLvl":I
    goto/16 :goto_72

    .end local v0    # "freqLvl":I
    .end local v3    # "numSignalStrength":I
    .end local v20    # "allFrequenciesHeader":Ljava/lang/String;
    .end local v23    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .end local v24    # "signalStrengthHeader":Ljava/lang/String;
    .end local v25    # "txHeader":Ljava/lang/String;
    .end local v27    # "rxHeader":Ljava/lang/String;
    .restart local v1    # "rat":I
    .local v2, "totalActiveTimesMs":J
    .local v4, "freqLvl":I
    .restart local v5    # "numSignalStrength":I
    .local v10, "allFrequenciesHeader":Ljava/lang/String;
    .restart local v11    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .restart local v12    # "signalStrengthHeader":Ljava/lang/String;
    .local v13, "txHeader":Ljava/lang/String;
    .restart local v14    # "rxHeader":Ljava/lang/String;
    :cond_17d
    move-object/from16 v20, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v27, v14

    move-wide v13, v2

    move v3, v5

    const/4 v5, 0x0

    move/from16 v29, v4

    move v4, v1

    move-wide v1, v8

    move/from16 v9, v29

    .line 4186
    .end local v1    # "rat":I
    .end local v2    # "totalActiveTimesMs":J
    .end local v5    # "numSignalStrength":I
    .end local v10    # "allFrequenciesHeader":Ljava/lang/String;
    .end local v11    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .end local v12    # "signalStrengthHeader":Ljava/lang/String;
    .end local v14    # "rxHeader":Ljava/lang/String;
    .end local v17    # "numFreqLvl":I
    .restart local v3    # "numSignalStrength":I
    .local v4, "rat":I
    .local v13, "totalActiveTimesMs":J
    .restart local v20    # "allFrequenciesHeader":Ljava/lang/String;
    .restart local v23    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .restart local v24    # "signalStrengthHeader":Ljava/lang/String;
    .restart local v25    # "txHeader":Ljava/lang/String;
    .restart local v27    # "rxHeader":Ljava/lang/String;
    add-int/lit8 v0, v4, -0x1

    move-wide v8, v1

    move v4, v5

    move v1, v0

    move v5, v3

    move-wide v2, v13

    move/from16 v0, v18

    move-object/from16 v13, v25

    move-object/from16 v14, v27

    .end local v4    # "rat":I
    .local v0, "rat":I
    goto/16 :goto_4a

    .end local v3    # "numSignalStrength":I
    .end local v18    # "hasData":Z
    .end local v20    # "allFrequenciesHeader":Ljava/lang/String;
    .end local v23    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .end local v24    # "signalStrengthHeader":Ljava/lang/String;
    .end local v25    # "txHeader":Ljava/lang/String;
    .end local v27    # "rxHeader":Ljava/lang/String;
    .local v0, "hasData":Z
    .restart local v1    # "rat":I
    .restart local v2    # "totalActiveTimesMs":J
    .restart local v5    # "numSignalStrength":I
    .restart local v10    # "allFrequenciesHeader":Ljava/lang/String;
    .restart local v11    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .restart local v12    # "signalStrengthHeader":Ljava/lang/String;
    .local v13, "txHeader":Ljava/lang/String;
    .restart local v14    # "rxHeader":Ljava/lang/String;
    :cond_19f
    move-object/from16 v20, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v27, v14

    move-wide v13, v2

    move v3, v5

    move v5, v4

    move v4, v1

    move-wide v1, v8

    .line 4255
    .end local v1    # "rat":I
    .end local v2    # "totalActiveTimesMs":J
    .end local v5    # "numSignalStrength":I
    .end local v10    # "allFrequenciesHeader":Ljava/lang/String;
    .end local v11    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .end local v12    # "signalStrengthHeader":Ljava/lang/String;
    .end local v14    # "rxHeader":Ljava/lang/String;
    .restart local v3    # "numSignalStrength":I
    .local v13, "totalActiveTimesMs":J
    .restart local v20    # "allFrequenciesHeader":Ljava/lang/String;
    .restart local v23    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .restart local v24    # "signalStrengthHeader":Ljava/lang/String;
    .restart local v25    # "txHeader":Ljava/lang/String;
    .restart local v27    # "rxHeader":Ljava/lang/String;
    if-nez v0, :cond_1be

    .line 4256
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4257
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4258
    const-string v4, "  (no activity)"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4259
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4261
    :cond_1be
    return-void
.end method

.method private final greylist-max-o printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 36
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "controllerName"    # Ljava/lang/String;
    .param p5, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p6, "which"    # I

    .line 4008
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    .line 4009
    .local v5, "idleTimeMs":J
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    .line 4010
    .local v7, "rxTimeMs":J
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    .line 4011
    .local v9, "powerDrainMaMs":J
    nop

    .line 4012
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v11

    .line 4014
    .local v11, "monitoredRailChargeConsumedMaMs":J
    nop

    .line 4015
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    invoke-virtual {v0, v13, v14, v4}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v13

    div-long/2addr v13, v15

    .line 4016
    .local v13, "totalControllerActivityTimeMs":J
    const-wide/16 v15, 0x0

    .line 4017
    .local v15, "totalTxTimeMs":J
    move-wide/from16 v17, v15

    .end local v15    # "totalTxTimeMs":J
    .local v17, "totalTxTimeMs":J
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v15

    move-wide/from16 v19, v11

    .end local v11    # "monitoredRailChargeConsumedMaMs":J
    .local v19, "monitoredRailChargeConsumedMaMs":J
    array-length v11, v15

    const/4 v12, 0x0

    :goto_44
    if-ge v12, v11, :cond_55

    move/from16 v21, v11

    aget-object v11, v15, v12

    .line 4018
    .local v11, "txState":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v22

    add-long v17, v17, v22

    .line 4017
    .end local v11    # "txState":Landroid/os/BatteryStats$LongCounter;
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v21

    goto :goto_44

    .line 4021
    :cond_55
    const-string v11, "WiFi"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, " Sleep time:  "

    const-string v15, ")"

    move-wide/from16 v21, v9

    .end local v9    # "powerDrainMaMs":J
    .local v21, "powerDrainMaMs":J
    const-string v9, "("

    const-string v10, "     "

    if-eqz v11, :cond_ce

    .line 4022
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getScanTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v11

    move-object/from16 v23, v12

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v11

    .line 4023
    .local v11, "scanTimeMs":J
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4024
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4025
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4026
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4027
    const-string v4, " Scan time:  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4028
    invoke-static {v2, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4029
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4030
    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4031
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4032
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4034
    add-long v24, v5, v7

    add-long v24, v24, v17

    move-wide/from16 v26, v11

    .end local v11    # "scanTimeMs":J
    .local v26, "scanTimeMs":J
    sub-long v11, v13, v24

    .line 4036
    .local v11, "sleepTimeMs":J
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4037
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4038
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4039
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4040
    move-object/from16 v4, v23

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4041
    invoke-static {v2, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4042
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4043
    move-wide/from16 v23, v7

    .end local v7    # "rxTimeMs":J
    .local v23, "rxTimeMs":J
    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4044
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4045
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d1

    .line 4021
    .end local v11    # "sleepTimeMs":J
    .end local v23    # "rxTimeMs":J
    .end local v26    # "scanTimeMs":J
    .restart local v7    # "rxTimeMs":J
    :cond_ce
    move-wide/from16 v23, v7

    move-object v4, v12

    .line 4048
    .end local v7    # "rxTimeMs":J
    .restart local v23    # "rxTimeMs":J
    :goto_d1
    const-string v7, "Cellular"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10e

    .line 4049
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    move/from16 v11, p6

    move-object v12, v7

    invoke-virtual {v8, v11}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    .line 4050
    .local v7, "sleepTimeMs":J
    move-object/from16 v25, v12

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4051
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4052
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4053
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4054
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4055
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4056
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4057
    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4058
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4059
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_112

    .line 4048
    .end local v7    # "sleepTimeMs":J
    :cond_10e
    move/from16 v11, p6

    move-object/from16 v25, v7

    .line 4062
    :goto_112
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4063
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4064
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4065
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4066
    const-string v4, " Idle time:   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4067
    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4068
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4069
    invoke-virtual {v0, v5, v6, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4070
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4071
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4073
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4074
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4075
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4076
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4077
    const-string v4, " Rx time:     "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4078
    move-wide/from16 v7, v23

    .end local v23    # "rxTimeMs":J
    .local v7, "rxTimeMs":J
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4079
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4080
    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4081
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4082
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4084
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4085
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4086
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4087
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4088
    const-string v4, " Tx time:     "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4091
    const/4 v4, -0x1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v12

    packed-switch v12, :pswitch_data_2a8

    :cond_180
    goto :goto_18a

    :pswitch_181
    move-object/from16 v12, v25

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_180

    const/4 v4, 0x0

    :goto_18a
    packed-switch v4, :pswitch_data_2ae

    .line 4101
    move-wide/from16 v23, v5

    move-wide/from16 v25, v7

    .end local v5    # "idleTimeMs":J
    .end local v7    # "rxTimeMs":J
    .local v23, "idleTimeMs":J
    .local v25, "rxTimeMs":J
    const-string v4, "[0]"

    const-string v5, "[1]"

    const-string v6, "[2]"

    const-string v7, "[3]"

    const-string v8, "[4]"

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    .local v4, "powerLevel":[Ljava/lang/String;
    goto :goto_1b3

    .line 4093
    .end local v4    # "powerLevel":[Ljava/lang/String;
    .end local v23    # "idleTimeMs":J
    .end local v25    # "rxTimeMs":J
    .restart local v5    # "idleTimeMs":J
    .restart local v7    # "rxTimeMs":J
    :pswitch_1a0
    const-string v4, "   less than 0dBm: "

    const-string v12, "   0dBm to 8dBm: "

    move-wide/from16 v23, v5

    .end local v5    # "idleTimeMs":J
    .restart local v23    # "idleTimeMs":J
    const-string v5, "   8dBm to 15dBm: "

    const-string v6, "   15dBm to 20dBm: "

    move-wide/from16 v25, v7

    .end local v7    # "rxTimeMs":J
    .restart local v25    # "rxTimeMs":J
    const-string v7, "   above 20dBm: "

    filled-new-array {v4, v12, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    .line 4099
    .restart local v4    # "powerLevel":[Ljava/lang/String;
    nop

    .line 4104
    :goto_1b3
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    array-length v5, v5

    array-length v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 4105
    .local v5, "numTxLvls":I
    const/4 v6, 0x1

    if-le v5, v6, :cond_205

    .line 4106
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4107
    const/4 v6, 0x0

    .local v6, "lvl":I
    :goto_1c8
    if-ge v6, v5, :cond_204

    .line 4108
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7, v11}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    .line 4109
    .local v7, "txLvlTimeMs":J
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4110
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4111
    const-string v12, "    "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4112
    aget-object v12, v4, v6

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4113
    const-string v12, " "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4114
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4115
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4116
    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4117
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4118
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4107
    .end local v7    # "txLvlTimeMs":J
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c8

    .end local v6    # "lvl":I
    :cond_204
    goto :goto_227

    .line 4121
    :cond_205
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6, v11}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    .line 4122
    .local v6, "txLvlTimeMs":J
    invoke-static {v2, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4123
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4124
    invoke-virtual {v0, v6, v7, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4125
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4126
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4129
    .end local v6    # "txLvlTimeMs":J
    :goto_227
    const-wide/16 v6, 0x0

    cmp-long v8, v21, v6

    const-wide v27, 0x414b774000000000L    # 3600000.0

    if-lez v8, :cond_261

    .line 4130
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4131
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4132
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4134
    const-string v8, " Battery drain: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    move v12, v5

    move-wide/from16 v6, v21

    .end local v4    # "powerLevel":[Ljava/lang/String;
    .end local v5    # "numTxLvls":I
    .end local v21    # "powerDrainMaMs":J
    .local v6, "powerDrainMaMs":J
    .local v9, "powerLevel":[Ljava/lang/String;
    .local v12, "numTxLvls":I
    long-to-double v4, v6

    div-double v4, v4, v27

    .line 4135
    invoke-static {v4, v5}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v4

    .line 4134
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4136
    const-string/jumbo v4, "mAh"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4137
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_265

    .line 4129
    .end local v6    # "powerDrainMaMs":J
    .end local v9    # "powerLevel":[Ljava/lang/String;
    .end local v12    # "numTxLvls":I
    .restart local v4    # "powerLevel":[Ljava/lang/String;
    .restart local v5    # "numTxLvls":I
    .restart local v21    # "powerDrainMaMs":J
    :cond_261
    move-object v9, v4

    move v12, v5

    move-wide/from16 v6, v21

    .line 4140
    .end local v4    # "powerLevel":[Ljava/lang/String;
    .end local v5    # "numTxLvls":I
    .end local v21    # "powerDrainMaMs":J
    .restart local v6    # "powerDrainMaMs":J
    .restart local v9    # "powerLevel":[Ljava/lang/String;
    .restart local v12    # "numTxLvls":I
    :goto_265
    const-wide/16 v4, 0x0

    cmp-long v4, v19, v4

    if-lez v4, :cond_2a1

    .line 4141
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4142
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4143
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4145
    const-string v4, " Monitored rail energy drain: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v8, "#.##"

    invoke-direct {v5, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-wide/from16 v21, v6

    move-object v10, v9

    move-wide/from16 v6, v19

    .end local v9    # "powerLevel":[Ljava/lang/String;
    .end local v19    # "monitoredRailChargeConsumedMaMs":J
    .local v6, "monitoredRailChargeConsumedMaMs":J
    .local v10, "powerLevel":[Ljava/lang/String;
    .restart local v21    # "powerDrainMaMs":J
    long-to-double v8, v6

    div-double v8, v8, v27

    .line 4146
    invoke-virtual {v5, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    .line 4145
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4148
    const-string v4, " mAh"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4149
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a6

    .line 4140
    .end local v10    # "powerLevel":[Ljava/lang/String;
    .end local v21    # "powerDrainMaMs":J
    .local v6, "powerDrainMaMs":J
    .restart local v9    # "powerLevel":[Ljava/lang/String;
    .restart local v19    # "monitoredRailChargeConsumedMaMs":J
    :cond_2a1
    move-wide/from16 v21, v6

    move-object v10, v9

    move-wide/from16 v6, v19

    .line 4151
    .end local v9    # "powerLevel":[Ljava/lang/String;
    .end local v19    # "monitoredRailChargeConsumedMaMs":J
    .local v6, "monitoredRailChargeConsumedMaMs":J
    .restart local v10    # "powerLevel":[Ljava/lang/String;
    .restart local v21    # "powerDrainMaMs":J
    :goto_2a6
    return-void

    nop

    :pswitch_data_2a8
    .packed-switch -0x32c7c276
        :pswitch_181
    .end packed-switch

    :pswitch_data_2ae
    .packed-switch 0x0
        :pswitch_1a0
    .end packed-switch
.end method

.method private final greylist-max-o printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "controllerName"    # Ljava/lang/String;
    .param p5, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p6, "which"    # I

    .line 4000
    invoke-static {p5, p6}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4001
    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4003
    :cond_9
    return-void
.end method

.method private greylist-max-o printSizeValue(Ljava/io/PrintWriter;J)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "size"    # J

    .line 7176
    long-to-float v0, p2

    .line 7177
    .local v0, "result":F
    const-string v1, ""

    .line 7178
    .local v1, "suffix":Ljava/lang/String;
    const/high16 v2, 0x46200000    # 10240.0f

    cmpl-float v3, v0, v2

    const/high16 v4, 0x44800000    # 1024.0f

    if-ltz v3, :cond_e

    .line 7179
    const-string v1, "KB"

    .line 7180
    div-float/2addr v0, v4

    .line 7182
    :cond_e
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_15

    .line 7183
    const-string v1, "MB"

    .line 7184
    div-float/2addr v0, v4

    .line 7186
    :cond_15
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1c

    .line 7187
    const-string v1, "GB"

    .line 7188
    div-float/2addr v0, v4

    .line 7190
    :cond_1c
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_23

    .line 7191
    const-string v1, "TB"

    .line 7192
    div-float/2addr v0, v4

    .line 7194
    :cond_23
    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2a

    .line 7195
    const-string v1, "PB"

    .line 7196
    div-float/2addr v0, v4

    .line 7198
    :cond_2a
    float-to-int v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 7199
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7200
    return-void
.end method

.method private static final greylist-max-o printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z
    .registers 23
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "which"    # I
    .param p6, "prefix"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;

    .line 3732
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_8b

    .line 3734
    invoke-virtual/range {p2 .. p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 3736
    .local v3, "totalTimeMs":J
    move/from16 v7, p5

    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    .line 3737
    .local v8, "count":I
    const-wide/16 v9, 0x0

    cmp-long v11, v3, v9

    if-eqz v11, :cond_85

    .line 3738
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3739
    move-object/from16 v11, p6

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3740
    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3741
    move-object/from16 v12, p7

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3742
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3743
    invoke-static {v0, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3744
    const-string/jumbo v2, "realtime ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3745
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3746
    const-string v2, " times)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3747
    div-long v13, p3, v5

    invoke-virtual {v1, v13, v14}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v13

    .line 3748
    .local v13, "maxDurationMs":J
    cmp-long v2, v13, v9

    if-ltz v2, :cond_57

    .line 3749
    const-string v2, " max="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3750
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3752
    :cond_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 3753
    div-long v5, p3, v5

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v5

    .line 3754
    .local v5, "currentMs":J
    cmp-long v2, v5, v9

    if-ltz v2, :cond_76

    .line 3755
    const-string v2, " (running for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3756
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3757
    const-string/jumbo v2, "ms)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 3759
    :cond_76
    const-string v2, " (running)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3762
    .end local v5    # "currentMs":J
    :cond_7b
    :goto_7b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, p0

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3763
    const/4 v2, 0x1

    return v2

    .line 3737
    .end local v13    # "maxDurationMs":J
    :cond_85
    move-object v5, p0

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    goto :goto_92

    .line 3732
    .end local v3    # "totalTimeMs":J
    .end local v8    # "count":I
    :cond_8b
    move-object v5, p0

    move/from16 v7, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 3766
    :goto_92
    return v2
.end method

.method private static final greylist-max-o printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 26
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "which"    # I
    .param p6, "linePrefix"    # Ljava/lang/String;

    .line 3676
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    if-eqz v1, :cond_8a

    .line 3677
    invoke-static {v1, v2, v3, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v7

    .line 3679
    .local v7, "totalTimeMillis":J
    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v9

    .line 3680
    .local v9, "count":I
    const-wide/16 v10, 0x0

    cmp-long v12, v7, v10

    if-eqz v12, :cond_8a

    .line 3681
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3682
    invoke-static {v0, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3683
    if-eqz v4, :cond_2c

    .line 3684
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3685
    const/16 v12, 0x20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3687
    :cond_2c
    const/16 v12, 0x28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3688
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3689
    const-string v12, " times)"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3690
    const-wide/16 v12, 0x3e8

    div-long v14, v2, v12

    invoke-virtual {v1, v14, v15}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v14

    .line 3691
    .local v14, "maxDurationMs":J
    cmp-long v16, v14, v10

    if-ltz v16, :cond_4d

    .line 3692
    const-string v10, " max="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3693
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3696
    :cond_4d
    div-long v10, v2, v12

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v10

    .line 3697
    .local v10, "totalDurMs":J
    cmp-long v18, v10, v7

    if-lez v18, :cond_5f

    .line 3698
    const-string v12, " actual="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3699
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3701
    :cond_5f
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v12

    if-eqz v12, :cond_87

    .line 3702
    const-wide/16 v12, 0x3e8

    div-long v12, v2, v12

    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v12

    .line 3703
    .local v12, "currentMs":J
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-ltz v16, :cond_82

    .line 3704
    const-string v1, " (running for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3705
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3706
    const-string/jumbo v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_87

    .line 3708
    :cond_82
    const-string v1, " (running)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3712
    .end local v12    # "currentMs":J
    :cond_87
    :goto_87
    const-string v1, ", "

    return-object v1

    .line 3715
    .end local v7    # "totalTimeMillis":J
    .end local v9    # "count":I
    .end local v10    # "totalDurMs":J
    .end local v14    # "maxDurationMs":J
    :cond_8a
    return-object v6
.end method

.method private static final greylist-max-o printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 26
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "which"    # I
    .param p6, "linePrefix"    # Ljava/lang/String;

    .line 3782
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    const-wide/16 v6, 0x0

    .line 3783
    .local v6, "totalTimeMicros":J
    const/4 v8, 0x0

    .line 3784
    .local v8, "count":I
    const-wide/16 v9, 0x0

    .line 3785
    .local v9, "max":J
    const-wide/16 v11, 0x0

    .line 3786
    .local v11, "current":J
    const-wide/16 v13, 0x0

    .line 3787
    .local v13, "totalDuration":J
    const-wide/16 v15, 0x3e8

    if-eqz v1, :cond_35

    .line 3788
    invoke-virtual {v1, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    .line 3789
    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    .line 3790
    move-wide/from16 v17, v6

    .end local v6    # "totalTimeMicros":J
    .local v17, "totalTimeMicros":J
    div-long v5, v2, v15

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v11

    .line 3791
    div-long v5, v2, v15

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v9

    .line 3792
    div-long v5, v2, v15

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v13

    move-wide/from16 v6, v17

    .line 3794
    .end local v17    # "totalTimeMicros":J
    .restart local v6    # "totalTimeMicros":J
    :cond_35
    move-object/from16 v5, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3795
    const-wide/16 v17, 0x1f4

    add-long v17, v6, v17

    div-long v1, v17, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3796
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3797
    const-string v2, ","

    if-eqz v4, :cond_5e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_60

    :cond_5e
    const-string v3, ""

    :goto_60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3798
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3799
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3800
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3801
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3802
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3806
    if-eqz v4, :cond_7a

    .line 3807
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3808
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3810
    :cond_7a
    return-object v2
.end method

.method private greylist-max-o printmAh(Ljava/io/PrintWriter;D)V
    .registers 5
    .param p1, "printer"    # Ljava/io/PrintWriter;
    .param p2, "power"    # D

    .line 5025
    invoke-static {p2, p3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5026
    return-void
.end method

.method private greylist-max-o printmAh(Ljava/lang/StringBuilder;D)V
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "power"    # D

    .line 5029
    invoke-static {p2, p3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5030
    return-void
.end method

.method private static greylist-max-o roundUsToMs(J)J
    .registers 6
    .param p0, "timeUs"    # J

    .line 3650
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist shouldHidePowerComponent(I)Z
    .registers 3
    .param p1, "powerComponent"    # I

    .line 8742
    const/16 v0, 0x10

    if-eq p1, v0, :cond_11

    const/16 v0, 0x8

    if-eq p1, v0, :cond_11

    if-eqz p1, :cond_11

    const/16 v0, 0xf

    if-ne p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method


# virtual methods
.method public abstract greylist-max-o commitCurrentHistoryBatchLocked()V
.end method

.method public abstract greylist computeBatteryRealtime(JI)J
.end method

.method public abstract greylist-max-o computeBatteryScreenOffRealtime(JI)J
.end method

.method public abstract greylist-max-o computeBatteryScreenOffUptime(JI)J
.end method

.method public abstract greylist computeBatteryTimeRemaining(J)J
.end method

.method public abstract greylist computeBatteryUptime(JI)J
.end method

.method public abstract greylist computeChargeTimeRemaining(J)J
.end method

.method public abstract greylist-max-o computeRealtime(JI)J
.end method

.method public abstract greylist-max-o computeUptime(JI)J
.end method

.method public final greylist-max-o dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "which"    # I
    .param p4, "reqUid"    # I

    .line 4267
    invoke-static {p1}, Landroid/os/BatteryStats;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    .line 4268
    return-void
.end method

.method public final greylist-max-o dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V
    .registers 216
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "which"    # I
    .param p4, "reqUid"    # I
    .param p5, "wifiOnly"    # Z

    .line 4299
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 4407
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 4299
    if-eqz v10, :cond_37

    .line 4300
    sget-object v1, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v10

    new-array v2, v12, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: BatteryStats.dumpCheckin called for which type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but only STATS_SINCE_CHARGED is supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    const-string v3, "err"

    invoke-static {v9, v13, v1, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4303
    return-void

    .line 4306
    :cond_37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v15, 0x3e8

    mul-long v7, v1, v15

    .line 4307
    .local v7, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 4308
    .local v5, "rawRealtimeMs":J
    mul-long v3, v5, v15

    .line 4309
    .local v3, "rawRealtime":J
    invoke-virtual {v0, v7, v8}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v1

    .line 4310
    .local v1, "batteryUptime":J
    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v17

    .line 4311
    .local v17, "whichBatteryUptime":J
    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v19

    .line 4312
    .local v19, "whichBatteryRealtime":J
    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v21

    .line 4313
    .local v21, "whichBatteryScreenOffUptime":J
    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v23

    .line 4315
    .local v23, "whichBatteryScreenOffRealtime":J
    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v25

    .line 4316
    .local v25, "totalRealtime":J
    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v27

    .line 4317
    .local v27, "totalUptime":J
    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v29

    .line 4318
    .local v29, "screenOnTime":J
    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v31

    .line 4319
    .local v31, "screenDozeTime":J
    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v33

    .line 4320
    .local v33, "interactiveTime":J
    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v35

    .line 4321
    .local v35, "powerSaveModeEnabledTime":J
    invoke-virtual {v0, v12, v3, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v37

    .line 4323
    .local v37, "deviceIdleModeLightTime":J
    move-wide/from16 v39, v1

    .end local v1    # "batteryUptime":J
    .local v39, "batteryUptime":J
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v41

    .line 4325
    .local v41, "deviceIdleModeFullTime":J
    invoke-virtual {v0, v12, v3, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v43

    .line 4327
    .local v43, "deviceLightIdlingTime":J
    invoke-virtual {v0, v2, v3, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v45

    .line 4329
    .local v45, "deviceIdlingTime":J
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v47

    .line 4330
    .local v47, "connChanges":I
    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v48

    .line 4331
    .local v48, "phoneOnTime":J
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v50

    .line 4332
    .local v50, "dischargeCount":J
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v52

    .line 4333
    .local v52, "dischargeScreenOffCount":J
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v54

    .line 4334
    .local v54, "dischargeScreenDozeCount":J
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v56

    .line 4335
    .local v56, "dischargeLightDozeCount":J
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v58

    .line 4337
    .local v58, "dischargeDeepDozeCount":J
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v1

    .line 4339
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v1

    .line 4340
    .local v1, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    move-object/from16 v61, v2

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .local v61, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4342
    .local v2, "NU":I
    sget-object v62, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v12, v62, v10

    .line 4345
    .local v12, "category":Ljava/lang/String;
    const/16 v15, 0xc

    new-array v13, v15, [Ljava/lang/Object;

    .line 4346
    if-nez v10, :cond_c5

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    goto :goto_c7

    :cond_c5
    const-string v62, "N/A"

    :goto_c7
    const/16 v16, 0x0

    aput-object v62, v13, v16

    const-wide/16 v64, 0x3e8

    div-long v66, v19, v64

    .line 4347
    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/16 v63, 0x1

    aput-object v62, v13, v63

    div-long v66, v17, v64

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/16 v60, 0x2

    aput-object v62, v13, v60

    div-long v66, v25, v64

    .line 4348
    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/4 v15, 0x3

    aput-object v62, v13, v15

    div-long v67, v27, v64

    invoke-static/range {v67 .. v68}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/4 v15, 0x4

    aput-object v62, v13, v15

    .line 4349
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v68

    invoke-static/range {v68 .. v69}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/4 v15, 0x5

    aput-object v62, v13, v15

    div-long v69, v23, v64

    .line 4350
    invoke-static/range {v69 .. v70}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/4 v15, 0x6

    aput-object v62, v13, v15

    div-long v70, v21, v64

    invoke-static/range {v70 .. v71}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/4 v15, 0x7

    aput-object v62, v13, v15

    .line 4351
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    const/16 v15, 0x8

    aput-object v62, v13, v15

    .line 4352
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    const/16 v15, 0x9

    aput-object v62, v13, v15

    .line 4353
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    const/16 v15, 0xa

    aput-object v62, v13, v15

    const-wide/16 v64, 0x3e8

    div-long v74, v31, v64

    .line 4354
    invoke-static/range {v74 .. v75}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/16 v15, 0xb

    aput-object v62, v13, v15

    .line 4345
    const-string v15, "bt"

    move-wide/from16 v75, v5

    const/4 v5, 0x0

    .end local v5    # "rawRealtimeMs":J
    .local v75, "rawRealtimeMs":J
    invoke-static {v9, v5, v12, v15, v13}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4358
    const-wide/16 v5, 0x0

    .line 4359
    .local v5, "fullWakeLockTimeTotal":J
    const-wide/16 v77, 0x0

    .line 4361
    .local v77, "partialWakeLockTimeTotal":J
    const/4 v13, 0x0

    move-wide/from16 v79, v77

    move-wide/from16 v77, v5

    .end local v5    # "fullWakeLockTimeTotal":J
    .local v13, "iu":I
    .local v77, "fullWakeLockTimeTotal":J
    .local v79, "partialWakeLockTimeTotal":J
    :goto_151
    if-ge v13, v2, :cond_1a0

    .line 4362
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid;

    .line 4364
    .local v5, "u":Landroid/os/BatteryStats$Uid;
    nop

    .line 4365
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v6

    .line 4366
    .local v6, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v15

    move-object/from16 v81, v1

    const/4 v1, 0x1

    .end local v1    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v81, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    sub-int/2addr v15, v1

    .local v15, "iw":I
    :goto_166
    if-ltz v15, :cond_197

    .line 4367
    invoke-virtual {v6, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v63

    move/from16 v82, v2

    .end local v2    # "NU":I
    .local v82, "NU":I
    move-object/from16 v2, v63

    check-cast v2, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 4369
    .local v2, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    move-object/from16 v83, v5

    .end local v5    # "u":Landroid/os/BatteryStats$Uid;
    .local v83, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v2, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    .line 4370
    .local v5, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v5, :cond_180

    .line 4371
    invoke-virtual {v5, v3, v4, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v84

    add-long v77, v77, v84

    .line 4375
    :cond_180
    move-object/from16 v84, v5

    const/4 v1, 0x0

    .end local v5    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .local v84, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v2, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    .line 4376
    .local v5, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v5, :cond_18f

    .line 4377
    invoke-virtual {v5, v3, v4, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v85

    add-long v79, v79, v85

    .line 4366
    .end local v2    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v5    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v84    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    :cond_18f
    add-int/lit8 v15, v15, -0x1

    move/from16 v2, v82

    move-object/from16 v5, v83

    const/4 v1, 0x1

    goto :goto_166

    .end local v82    # "NU":I
    .end local v83    # "u":Landroid/os/BatteryStats$Uid;
    .local v2, "NU":I
    .local v5, "u":Landroid/os/BatteryStats$Uid;
    :cond_197
    move/from16 v82, v2

    move-object/from16 v83, v5

    .line 4361
    .end local v2    # "NU":I
    .end local v5    # "u":Landroid/os/BatteryStats$Uid;
    .end local v6    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v15    # "iw":I
    .restart local v82    # "NU":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v81

    goto :goto_151

    .end local v81    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v82    # "NU":I
    .restart local v1    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v2    # "NU":I
    :cond_1a0
    move-object/from16 v81, v1

    move/from16 v82, v2

    .line 4384
    .end local v1    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v2    # "NU":I
    .end local v13    # "iu":I
    .restart local v81    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v82    # "NU":I
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v83

    .line 4385
    .local v83, "mobileRxTotalBytes":J
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v85

    .line 4386
    .local v85, "mobileTxTotalBytes":J
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v87

    .line 4387
    .local v87, "wifiRxTotalBytes":J
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v89

    .line 4388
    .local v89, "wifiTxTotalBytes":J
    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v91

    .line 4389
    .local v91, "mobileRxTotalPackets":J
    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v93

    .line 4390
    .local v93, "mobileTxTotalPackets":J
    invoke-virtual {v0, v5, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v95

    .line 4391
    .local v95, "wifiRxTotalPackets":J
    invoke-virtual {v0, v6, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v97

    .line 4392
    .local v97, "wifiTxTotalPackets":J
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v99

    .line 4393
    .local v99, "btRxTotalBytes":J
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v101

    .line 4394
    .local v101, "btTxTotalBytes":J
    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/Object;

    .line 4395
    invoke-static/range {v83 .. v84}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v2, v5

    invoke-static/range {v85 .. v86}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v2, v5

    invoke-static/range {v87 .. v88}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v2, v5

    invoke-static/range {v89 .. v90}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x3

    aput-object v1, v2, v6

    .line 4396
    invoke-static/range {v91 .. v92}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v2, v6

    invoke-static/range {v93 .. v94}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x5

    aput-object v1, v2, v6

    invoke-static/range {v95 .. v96}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x6

    aput-object v1, v2, v6

    invoke-static/range {v97 .. v98}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x7

    aput-object v1, v2, v6

    .line 4397
    invoke-static/range {v99 .. v100}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v6, 0x8

    aput-object v1, v2, v6

    invoke-static/range {v101 .. v102}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v6, 0x9

    aput-object v1, v2, v6

    .line 4394
    const-string/jumbo v1, "gn"

    const/4 v6, 0x0

    invoke-static {v9, v6, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4400
    const/4 v2, 0x0

    .line 4401
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v6

    .line 4400
    const-string/jumbo v13, "gmcd"

    move-wide/from16 v103, v39

    move-object/from16 v15, v81

    .end local v39    # "batteryUptime":J
    .end local v81    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v15, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v103, "batteryUptime":J
    move-object/from16 v1, p2

    move-wide/from16 v39, v7

    move/from16 v8, v82

    move v7, v5

    move-object/from16 v5, v61

    .end local v7    # "rawUptime":J
    .end local v61    # "sb":Ljava/lang/StringBuilder;
    .end local v82    # "NU":I
    .local v5, "sb":Ljava/lang/StringBuilder;
    .local v8, "NU":I
    .local v39, "rawUptime":J
    move-wide v7, v3

    .end local v3    # "rawRealtime":J
    .end local v8    # "NU":I
    .local v7, "rawRealtime":J
    .restart local v82    # "NU":I
    move-object v3, v12

    move-object v4, v13

    move-object v13, v5

    move-wide/from16 v105, v75

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v75    # "rawRealtimeMs":J
    .local v13, "sb":Ljava/lang/StringBuilder;
    .local v105, "rawRealtimeMs":J
    move-object v5, v6

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4404
    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v75

    .line 4405
    .local v75, "wifiOnTime":J
    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v107

    .line 4406
    .local v107, "wifiRunningTime":J
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    div-long v5, v75, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v2, v5

    div-long v109, v107, v3

    .line 4407
    invoke-static/range {v109 .. v110}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object v14, v2, v1

    const/4 v1, 0x3

    aput-object v14, v2, v1

    const/4 v1, 0x4

    aput-object v14, v2, v1

    .line 4406
    const-string/jumbo v1, "gwfl"

    invoke-static {v9, v5, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4409
    const/4 v2, 0x0

    .line 4410
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4409
    const-string/jumbo v4, "gwfcd"

    move-object/from16 v1, p2

    move-object v3, v12

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4413
    nop

    .line 4414
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4413
    const-string v4, "gble"

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4417
    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    div-long v4, v29, v2

    .line 4418
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    div-long v4, v48, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    div-long v4, v77, v2

    .line 4419
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    div-long v4, v79, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v1, v5

    .line 4420
    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v1, v5

    .line 4421
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v1, v5

    div-long v4, v33, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v1, v5

    div-long v4, v35, v2

    .line 4422
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v1, v5

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v1, v5

    div-long v4, v41, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v1, v5

    .line 4423
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xa

    aput-object v5, v1, v6

    div-long v5, v45, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 4424
    invoke-virtual {v0, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 4425
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v6, 0xd

    aput-object v2, v1, v6

    const/16 v2, 0xe

    .line 4426
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v3

    const-wide/16 v64, 0x3e8

    div-long v3, v3, v64

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    div-long v3, v37, v64

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    .line 4427
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0x11

    div-long v4, v43, v64

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    .line 4428
    invoke-virtual {v0, v3, v10}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x12

    aput-object v2, v1, v5

    const/16 v2, 0x13

    .line 4429
    invoke-virtual {v0, v3}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v109

    invoke-static/range {v109 .. v110}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    .line 4430
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v109

    invoke-static/range {v109 .. v110}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4417
    const-string/jumbo v2, "m"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4436
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Object;

    .line 4437
    .local v2, "args":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_384
    if-ge v3, v1, :cond_398

    .line 4438
    invoke-virtual {v0, v3, v7, v8, v10}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v109

    const-wide/16 v64, 0x3e8

    div-long v109, v109, v64

    invoke-static/range {v109 .. v110}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v3

    .line 4437
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x5

    goto :goto_384

    .line 4441
    .end local v3    # "i":I
    :cond_398
    const-string v1, "br"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4444
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 4445
    .end local v2    # "args":[Ljava/lang/Object;
    .local v1, "args":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3a5
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v3

    if-ge v2, v3, :cond_3bc

    .line 4446
    invoke-virtual {v0, v2, v7, v8, v10}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v3

    const-wide/16 v64, 0x3e8

    div-long v3, v3, v64

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4445
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a5

    .line 4448
    .end local v2    # "i":I
    :cond_3bc
    const-string/jumbo v2, "sgt"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4449
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    .line 4450
    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v109

    const-wide/16 v64, 0x3e8

    div-long v109, v109, v64

    invoke-static/range {v109 .. v110}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v3

    .line 4449
    const-string/jumbo v2, "sst"

    invoke-static {v9, v3, v12, v2, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4451
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3db
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v3

    if-ge v2, v3, :cond_3ee

    .line 4452
    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4451
    add-int/lit8 v2, v2, 0x1

    goto :goto_3db

    .line 4454
    .end local v2    # "i":I
    :cond_3ee
    const-string/jumbo v2, "sgc"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4457
    sget v2, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    new-array v1, v2, [Ljava/lang/Object;

    .line 4458
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3fa
    sget v3, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v2, v3, :cond_40f

    .line 4459
    invoke-virtual {v0, v2, v7, v8, v10}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v3

    const-wide/16 v64, 0x3e8

    div-long v3, v3, v64

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4458
    add-int/lit8 v2, v2, 0x1

    goto :goto_3fa

    .line 4461
    .end local v2    # "i":I
    :cond_40f
    const-string v2, "dct"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4462
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_416
    sget v3, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v2, v3, :cond_427

    .line 4463
    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4462
    add-int/lit8 v2, v2, 0x1

    goto :goto_416

    .line 4465
    .end local v2    # "i":I
    :cond_427
    const-string v2, "dcc"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4468
    const/16 v2, 0x8

    new-array v1, v2, [Ljava/lang/Object;

    .line 4469
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_432
    if-ge v3, v2, :cond_447

    .line 4470
    invoke-virtual {v0, v3, v7, v8, v10}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v109

    const-wide/16 v64, 0x3e8

    div-long v109, v109, v64

    invoke-static/range {v109 .. v110}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    .line 4469
    add-int/lit8 v3, v3, 0x1

    const/16 v2, 0x8

    goto :goto_432

    .line 4472
    .end local v3    # "i":I
    :cond_447
    const-string/jumbo v2, "wst"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4473
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_44f
    const/16 v3, 0x8

    if-ge v2, v3, :cond_460

    .line 4474
    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4473
    add-int/lit8 v2, v2, 0x1

    goto :goto_44f

    .line 4476
    .end local v2    # "i":I
    :cond_460
    const-string/jumbo v2, "wsc"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4479
    new-array v1, v6, [Ljava/lang/Object;

    .line 4480
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_46a
    if-ge v2, v6, :cond_47d

    .line 4481
    invoke-virtual {v0, v2, v7, v8, v10}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v3

    const-wide/16 v64, 0x3e8

    div-long v3, v3, v64

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4480
    add-int/lit8 v2, v2, 0x1

    goto :goto_46a

    .line 4483
    .end local v2    # "i":I
    :cond_47d
    const-string/jumbo v2, "wsst"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4484
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_485
    if-ge v2, v6, :cond_494

    .line 4485
    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4484
    add-int/lit8 v2, v2, 0x1

    goto :goto_485

    .line 4487
    .end local v2    # "i":I
    :cond_494
    const-string/jumbo v2, "wssc"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4490
    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Object;

    .line 4491
    .end local v1    # "args":[Ljava/lang/Object;
    .local v3, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_49f
    if-ge v1, v2, :cond_4b3

    .line 4492
    invoke-virtual {v0, v1, v7, v8, v10}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v109

    const-wide/16 v64, 0x3e8

    div-long v109, v109, v64

    invoke-static/range {v109 .. v110}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    .line 4491
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    goto :goto_49f

    .line 4494
    .end local v1    # "i":I
    :cond_4b3
    const-string/jumbo v1, "wsgt"

    const/4 v2, 0x0

    invoke-static {v9, v2, v12, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4495
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4bb
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4cb

    .line 4496
    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 4495
    add-int/lit8 v1, v1, 0x1

    goto :goto_4bb

    .line 4498
    .end local v1    # "i":I
    :cond_4cb
    const-string/jumbo v1, "wsgc"

    const/4 v2, 0x0

    invoke-static {v9, v2, v12, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4501
    nop

    .line 4502
    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v109

    .line 4503
    .local v109, "multicastWakeLockTimeTotalMicros":J
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v61

    .line 4504
    .local v61, "multicastWakeLockCountTotal":I
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const-wide/16 v64, 0x3e8

    div-long v111, v109, v64

    .line 4505
    invoke-static/range {v111 .. v112}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v2

    .line 4506
    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v16, 0x1

    aput-object v1, v4, v16

    .line 4504
    const-string/jumbo v1, "wmct"

    invoke-static {v9, v2, v12, v1, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4508
    const/16 v1, 0xa

    new-array v4, v1, [Ljava/lang/Object;

    .line 4509
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    .line 4510
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v60, 0x2

    aput-object v1, v4, v60

    .line 4511
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v4, v2

    const-wide/16 v1, 0x3e8

    div-long v64, v50, v1

    .line 4512
    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    const/16 v65, 0x4

    aput-object v64, v4, v65

    div-long v64, v52, v1

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    const/16 v65, 0x5

    aput-object v64, v4, v65

    .line 4513
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v64

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    const/16 v65, 0x6

    aput-object v64, v4, v65

    div-long v64, v54, v1

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    const/16 v65, 0x7

    aput-object v64, v4, v65

    div-long v64, v56, v1

    .line 4514
    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    const/16 v65, 0x8

    aput-object v64, v4, v65

    div-long v111, v58, v1

    invoke-static/range {v111 .. v112}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v4, v2

    .line 4508
    const-string v1, "dc"

    const/4 v2, 0x0

    invoke-static {v9, v2, v12, v1, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4516
    const-wide/16 v111, 0x1f4

    const-string v4, "\""

    if-gez v11, :cond_692

    .line 4517
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v81

    .line 4518
    .local v81, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v81 .. v81}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5fc

    .line 4519
    invoke-interface/range {v81 .. v81}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v113

    :goto_584
    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f2

    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v114, v1

    check-cast v114, Ljava/util/Map$Entry;

    .line 4520
    .local v114, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4521
    invoke-interface/range {v114 .. v114}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/BatteryStats$Timer;

    const/16 v115, 0x0

    const-string v116, ""

    move-object v1, v13

    move-object/from16 v117, v3

    move-object/from16 v118, v14

    move-object v14, v4

    .end local v3    # "args":[Ljava/lang/Object;
    .local v117, "args":[Ljava/lang/Object;
    move-wide v3, v7

    move-wide/from16 v119, v7

    move v8, v5

    .end local v7    # "rawRealtime":J
    .local v119, "rawRealtime":J
    move-object/from16 v5, v115

    move v7, v6

    move/from16 v6, p3

    move/from16 v8, v60

    move-wide/from16 v121, v119

    .end local v119    # "rawRealtime":J
    .local v121, "rawRealtime":J
    move-object/from16 v7, v116

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 4522
    new-array v1, v8, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4523
    invoke-interface/range {v114 .. v114}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4522
    const-string/jumbo v2, "kwl"

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4524
    .end local v114    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-object v4, v14

    move-object/from16 v3, v117

    move-object/from16 v14, v118

    move-wide/from16 v7, v121

    const/16 v5, 0x12

    const/16 v6, 0xd

    goto :goto_584

    .line 4519
    .end local v117    # "args":[Ljava/lang/Object;
    .end local v121    # "rawRealtime":J
    .restart local v3    # "args":[Ljava/lang/Object;
    .restart local v7    # "rawRealtime":J
    :cond_5f2
    move-object/from16 v117, v3

    move-wide/from16 v121, v7

    move-object/from16 v118, v14

    move/from16 v8, v60

    move-object v14, v4

    .end local v3    # "args":[Ljava/lang/Object;
    .end local v7    # "rawRealtime":J
    .restart local v117    # "args":[Ljava/lang/Object;
    .restart local v121    # "rawRealtime":J
    goto :goto_605

    .line 4518
    .end local v117    # "args":[Ljava/lang/Object;
    .end local v121    # "rawRealtime":J
    .restart local v3    # "args":[Ljava/lang/Object;
    .restart local v7    # "rawRealtime":J
    :cond_5fc
    move-object/from16 v117, v3

    move-wide/from16 v121, v7

    move-object/from16 v118, v14

    move/from16 v8, v60

    move-object v14, v4

    .line 4526
    .end local v3    # "args":[Ljava/lang/Object;
    .end local v7    # "rawRealtime":J
    .restart local v117    # "args":[Ljava/lang/Object;
    .restart local v121    # "rawRealtime":J
    :goto_605
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v1

    .line 4527
    .local v1, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_68d

    .line 4528
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_617
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_688

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4531
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    move-wide/from16 v6, v121

    .end local v121    # "rawRealtime":J
    .local v6, "rawRealtime":J
    invoke-virtual {v4, v6, v7, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    .line 4532
    .local v4, "totalTimeMicros":J
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v113

    move-object/from16 v8, v113

    check-cast v8, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v8, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    .line 4533
    .local v8, "count":I
    move-object/from16 v113, v1

    move-object/from16 v115, v2

    const/4 v1, 0x3

    .end local v1    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v113, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4534
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v116

    move-object/from16 v119, v3

    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v119, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-object/from16 v3, v116

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    add-long v120, v4, v111

    const-wide/16 v64, 0x3e8

    div-long v120, v120, v64

    invoke-static/range {v120 .. v121}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v16, 0x1

    aput-object v1, v2, v16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v16, 0x2

    aput-object v1, v2, v16

    .line 4533
    const-string/jumbo v1, "wr"

    invoke-static {v9, v3, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4535
    .end local v4    # "totalTimeMicros":J
    .end local v8    # "count":I
    .end local v119    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-wide/from16 v121, v6

    move-object/from16 v1, v113

    move-object/from16 v2, v115

    const/4 v8, 0x2

    goto :goto_617

    .line 4528
    .end local v6    # "rawRealtime":J
    .end local v113    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v1    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v121    # "rawRealtime":J
    :cond_688
    move-object/from16 v113, v1

    move-wide/from16 v6, v121

    .end local v1    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v121    # "rawRealtime":J
    .restart local v6    # "rawRealtime":J
    .restart local v113    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    goto :goto_698

    .line 4527
    .end local v6    # "rawRealtime":J
    .end local v113    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v1    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v121    # "rawRealtime":J
    :cond_68d
    move-object/from16 v113, v1

    move-wide/from16 v6, v121

    .end local v1    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v121    # "rawRealtime":J
    .restart local v6    # "rawRealtime":J
    .restart local v113    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    goto :goto_698

    .line 4516
    .end local v6    # "rawRealtime":J
    .end local v81    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v113    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v117    # "args":[Ljava/lang/Object;
    .local v3, "args":[Ljava/lang/Object;
    .restart local v7    # "rawRealtime":J
    :cond_692
    move-object/from16 v117, v3

    move-wide v6, v7

    move-object/from16 v118, v14

    move-object v14, v4

    .line 4539
    .end local v3    # "args":[Ljava/lang/Object;
    .end local v7    # "rawRealtime":J
    .restart local v6    # "rawRealtime":J
    .restart local v117    # "args":[Ljava/lang/Object;
    :goto_698
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v81

    .line 4540
    .local v81, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v8

    .line 4541
    .local v8, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v81 .. v81}, Ljava/util/Map;->size()I

    move-result v1

    const-wide/16 v115, 0x0

    if-lez v1, :cond_73b

    .line 4542
    invoke-interface/range {v81 .. v81}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6b0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4543
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4544
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    .line 4545
    .local v3, "totalTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v3, v6, v7, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    add-long v4, v4, v111

    const-wide/16 v64, 0x3e8

    div-long v4, v4, v64

    .line 4546
    .local v4, "timeMs":J
    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v113

    .line 4547
    .local v113, "count":I
    move-object/from16 v119, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Timer;

    .line 4548
    .local v1, "screenOffTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v1, :cond_6ed

    .line 4549
    invoke-virtual {v1, v6, v7, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v120

    add-long v120, v120, v111

    const-wide/16 v64, 0x3e8

    div-long v120, v120, v64

    goto :goto_6ef

    :cond_6ed
    move-wide/from16 v120, v115

    .line 4550
    .local v120, "screenOffTimeMs":J
    :goto_6ef
    if-eqz v1, :cond_6f6

    .line 4551
    invoke-virtual {v1, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v122

    goto :goto_6f8

    :cond_6f6
    const/16 v122, 0x0

    .line 4557
    .local v122, "screenOffCount":I
    :goto_6f8
    move-object/from16 v124, v1

    move-object/from16 v125, v3

    const/4 v1, 0x3

    .end local v1    # "screenOffTimer":Landroid/os/BatteryStats$Timer;
    .end local v3    # "totalTimer":Landroid/os/BatteryStats$Timer;
    .local v124, "screenOffTimer":Landroid/os/BatteryStats$Timer;
    .local v125, "totalTimer":Landroid/os/BatteryStats$Timer;
    new-array v3, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4558
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v126

    move-object/from16 v127, v2

    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v127, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-object/from16 v2, v126

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v3, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v16, 0x1

    aput-object v1, v3, v16

    invoke-static/range {v113 .. v113}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v16, 0x2

    aput-object v1, v3, v16

    .line 4557
    const-string/jumbo v1, "rpm"

    invoke-static {v9, v2, v12, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4560
    .end local v4    # "timeMs":J
    .end local v113    # "count":I
    .end local v120    # "screenOffTimeMs":J
    .end local v122    # "screenOffCount":I
    .end local v124    # "screenOffTimer":Landroid/os/BatteryStats$Timer;
    .end local v125    # "totalTimer":Landroid/os/BatteryStats$Timer;
    .end local v127    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-object/from16 v1, v119

    goto/16 :goto_6b0

    .line 4563
    :cond_73b
    invoke-direct/range {p0 .. p1}, Landroid/os/BatteryStats;->getBatteryUsageStats(Landroid/content/Context;)Landroid/os/BatteryUsageStats;

    move-result-object v5

    .line 4564
    .local v5, "stats":Landroid/os/BatteryUsageStats;
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    .line 4565
    invoke-virtual {v5}, Landroid/os/BatteryUsageStats;->getBatteryCapacity()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 4566
    invoke-virtual {v5}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 4567
    invoke-virtual {v5}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 4568
    invoke-virtual {v5}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    .line 4564
    const-string/jumbo v1, "pws"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4569
    invoke-virtual {v5, v3}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/BatteryConsumer;

    move-result-object v4

    .line 4571
    .local v4, "deviceConsumer":Landroid/os/BatteryConsumer;
    const/4 v1, 0x0

    .line 4572
    .local v1, "powerComponent":I
    :goto_78e
    const/16 v2, 0x12

    if-ge v1, v2, :cond_7ce

    .line 4573
    sget-object v2, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 4574
    .local v2, "label":Ljava/lang/String;
    if-nez v2, :cond_79a

    .line 4575
    const-string v2, "???"

    .line 4577
    :cond_79a
    move-wide/from16 v121, v6

    const/4 v3, 0x5

    .end local v6    # "rawRealtime":J
    .restart local v121    # "rawRealtime":J
    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v6, v3

    .line 4578
    invoke-virtual {v4, v1}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v119

    invoke-static/range {v119 .. v120}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v6, v7

    .line 4579
    invoke-direct {v0, v1}, Landroid/os/BatteryStats;->shouldHidePowerComponent(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v6, v7

    const-string v3, "0"

    const/4 v7, 0x3

    aput-object v3, v6, v7

    const-string v3, "0"

    const/4 v7, 0x4

    aput-object v3, v6, v7

    .line 4577
    const-string/jumbo v3, "pwi"

    const/4 v7, 0x0

    invoke-static {v9, v7, v12, v3, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4572
    .end local v2    # "label":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v6, v121

    goto :goto_78e

    .end local v121    # "rawRealtime":J
    .restart local v6    # "rawRealtime":J
    :cond_7ce
    move-wide/from16 v121, v6

    .line 4582
    .end local v1    # "powerComponent":I
    .end local v6    # "rawRealtime":J
    .restart local v121    # "rawRealtime":J
    new-instance v1, Landroid/os/BatteryStats$ProportionalAttributionCalculator;

    move-object/from16 v7, p1

    invoke-direct {v1, v7, v5}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;-><init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V

    move-object v6, v1

    .line 4584
    .local v6, "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    invoke-virtual {v5}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v3

    .line 4585
    .local v3, "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7dd
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_83b

    .line 4586
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UidBatteryConsumer;

    .line 4587
    .local v2, "consumer":Landroid/os/UidBatteryConsumer;
    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v0

    move-object/from16 v113, v3

    move-object/from16 v119, v4

    const/4 v3, 0x5

    .end local v3    # "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .end local v4    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .local v113, "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .local v119, "deviceConsumer":Landroid/os/BatteryConsumer;
    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "uid"

    const/16 v16, 0x0

    aput-object v3, v4, v16

    .line 4588
    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v124

    invoke-static/range {v124 .. v125}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    const/16 v63, 0x1

    aput-object v3, v4, v63

    .line 4589
    invoke-virtual {v6, v2}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->isSystemBatteryConsumer(Landroid/os/UidBatteryConsumer;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v114, 0x2

    aput-object v3, v4, v114

    .line 4590
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v124

    invoke-static/range {v124 .. v125}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    const/16 v67, 0x3

    aput-object v3, v4, v67

    .line 4592
    invoke-virtual {v6, v2}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->getProportionalPowerMah(Landroid/os/UidBatteryConsumer;)D

    move-result-wide v124

    .line 4591
    invoke-static/range {v124 .. v125}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    const/16 v68, 0x4

    aput-object v3, v4, v68

    .line 4587
    const-string/jumbo v3, "pwi"

    invoke-static {v9, v0, v12, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4585
    .end local v2    # "consumer":Landroid/os/UidBatteryConsumer;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v113

    move-object/from16 v4, v119

    goto :goto_7dd

    .end local v113    # "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .end local v119    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .restart local v3    # "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .restart local v4    # "deviceConsumer":Landroid/os/BatteryConsumer;
    :cond_83b
    move-object/from16 v113, v3

    move-object/from16 v119, v4

    .line 4595
    .end local v1    # "i":I
    .end local v3    # "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .end local v4    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .restart local v113    # "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .restart local v119    # "deviceConsumer":Landroid/os/BatteryConsumer;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v0

    .line 4596
    .local v0, "cpuFreqs":[J
    const/16 v4, 0x2c

    if-eqz v0, :cond_86b

    .line 4597
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4598
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_84c
    array-length v2, v0

    if-ge v1, v2, :cond_85c

    .line 4599
    if-eqz v1, :cond_854

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4600
    :cond_854
    aget-wide v2, v0, v1

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4598
    add-int/lit8 v1, v1, 0x1

    goto :goto_84c

    .line 4602
    .end local v1    # "i":I
    :cond_85c
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "gcf"

    invoke-static {v9, v3, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4606
    :cond_86b
    const/4 v1, 0x0

    move v3, v1

    .local v3, "iu":I
    :goto_86d
    move/from16 v2, v82

    .end local v82    # "NU":I
    .local v2, "NU":I
    if-ge v3, v2, :cond_13cd

    .line 4607
    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 4608
    .local v1, "uid":I
    if-ltz v11, :cond_8ae

    if-eq v1, v11, :cond_8ae

    .line 4609
    move/from16 v60, v2

    move/from16 v169, v3

    move-object/from16 v170, v5

    move-object/from16 v114, v8

    move-object/from16 v206, v13

    move-object/from16 v202, v14

    move-object/from16 v167, v15

    move-wide/from16 v14, v103

    move-wide/from16 v196, v105

    move-object/from16 v82, v119

    move-wide/from16 v200, v121

    const/16 v16, 0x0

    const/16 v63, 0x1

    const-wide/16 v64, 0x3e8

    const/16 v66, 0xc

    const/16 v67, 0x3

    const/16 v68, 0x4

    const/16 v69, 0x5

    const/16 v72, 0x8

    const/16 v73, 0x9

    const/16 v183, 0x12

    const/16 v188, 0xd

    const/16 v189, 0xa

    const/16 v204, 0x2

    move-object v8, v0

    move-object/from16 v121, v6

    goto/16 :goto_13ac

    .line 4611
    :cond_8ae
    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v82

    move-object/from16 v11, v82

    check-cast v11, Landroid/os/BatteryStats$Uid;

    .line 4614
    .local v11, "u":Landroid/os/BatteryStats$Uid;
    const/4 v4, 0x0

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v124

    .line 4615
    .local v124, "mobileBytesRx":J
    const/4 v4, 0x1

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v126

    .line 4616
    .local v126, "mobileBytesTx":J
    const/4 v4, 0x2

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v128

    .line 4617
    .local v128, "wifiBytesRx":J
    const/4 v4, 0x3

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v130

    .line 4618
    .local v130, "wifiBytesTx":J
    const/4 v4, 0x0

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v132

    .line 4619
    .local v132, "mobilePacketsRx":J
    const/4 v4, 0x1

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v134

    .line 4620
    .local v134, "mobilePacketsTx":J
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v136

    .line 4621
    .local v136, "mobileActiveTime":J
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v120

    .line 4622
    .local v120, "mobileActiveCount":I
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v138

    .line 4623
    .local v138, "mobileWakeup":J
    const/4 v4, 0x2

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v140

    .line 4624
    .local v140, "wifiPacketsRx":J
    const/4 v4, 0x3

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v142

    .line 4625
    .local v142, "wifiPacketsTx":J
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v144

    .line 4626
    .local v144, "wifiWakeup":J
    const/4 v4, 0x4

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v146

    .line 4627
    .local v146, "btBytesRx":J
    const/4 v4, 0x5

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v148

    .line 4629
    .local v148, "btBytesTx":J
    const/4 v4, 0x6

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v150

    .line 4631
    .local v150, "mobileBytesBgRx":J
    const/4 v4, 0x7

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v152

    .line 4633
    .local v152, "mobileBytesBgTx":J
    const/16 v4, 0x8

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v154

    .line 4634
    .local v154, "wifiBytesBgRx":J
    const/16 v4, 0x9

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v156

    .line 4635
    .local v156, "wifiBytesBgTx":J
    const/4 v4, 0x6

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v158

    .line 4637
    .local v158, "mobilePacketsBgRx":J
    const/4 v4, 0x7

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v160

    .line 4639
    .local v160, "mobilePacketsBgTx":J
    const/16 v4, 0x8

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v162

    .line 4641
    .local v162, "wifiPacketsBgRx":J
    const/16 v4, 0x9

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v164

    .line 4644
    .local v164, "wifiPacketsBgTx":J
    cmp-long v4, v124, v115

    if-gtz v4, :cond_983

    cmp-long v4, v126, v115

    if-gtz v4, :cond_983

    cmp-long v4, v128, v115

    if-gtz v4, :cond_983

    cmp-long v4, v130, v115

    if-gtz v4, :cond_983

    cmp-long v4, v132, v115

    if-gtz v4, :cond_983

    cmp-long v4, v134, v115

    if-gtz v4, :cond_983

    cmp-long v4, v140, v115

    if-gtz v4, :cond_983

    cmp-long v4, v142, v115

    if-gtz v4, :cond_983

    cmp-long v4, v136, v115

    if-gtz v4, :cond_983

    if-gtz v120, :cond_983

    cmp-long v4, v146, v115

    if-gtz v4, :cond_983

    cmp-long v4, v148, v115

    if-gtz v4, :cond_983

    cmp-long v4, v138, v115

    if-gtz v4, :cond_983

    cmp-long v4, v144, v115

    if-gtz v4, :cond_983

    cmp-long v4, v150, v115

    if-gtz v4, :cond_983

    cmp-long v4, v152, v115

    if-gtz v4, :cond_983

    cmp-long v4, v154, v115

    if-gtz v4, :cond_983

    cmp-long v4, v156, v115

    if-gtz v4, :cond_983

    cmp-long v4, v158, v115

    if-gtz v4, :cond_983

    cmp-long v4, v160, v115

    if-gtz v4, :cond_983

    cmp-long v4, v162, v115

    if-gtz v4, :cond_983

    cmp-long v4, v164, v115

    if-lez v4, :cond_97b

    goto :goto_983

    :cond_97b
    move-object/from16 v167, v15

    const/16 v60, 0x12

    const/16 v66, 0xc

    goto/16 :goto_a3f

    .line 4652
    :cond_983
    :goto_983
    const/16 v4, 0x16

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {v124 .. v125}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v16, 0x0

    aput-object v166, v4, v16

    invoke-static/range {v126 .. v127}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v63, 0x1

    aput-object v166, v4, v63

    .line 4653
    invoke-static/range {v128 .. v129}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v114, 0x2

    aput-object v166, v4, v114

    invoke-static/range {v130 .. v131}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v67, 0x3

    aput-object v166, v4, v67

    .line 4654
    invoke-static/range {v132 .. v133}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v68, 0x4

    aput-object v166, v4, v68

    invoke-static/range {v134 .. v135}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v69, 0x5

    aput-object v166, v4, v69

    .line 4655
    invoke-static/range {v140 .. v141}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v70, 0x6

    aput-object v166, v4, v70

    invoke-static/range {v142 .. v143}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v71, 0x7

    aput-object v166, v4, v71

    .line 4656
    invoke-static/range {v136 .. v137}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v72, 0x8

    aput-object v166, v4, v72

    invoke-static/range {v120 .. v120}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v166

    const/16 v73, 0x9

    aput-object v166, v4, v73

    .line 4657
    invoke-static/range {v146 .. v147}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v74, 0xa

    aput-object v166, v4, v74

    invoke-static/range {v148 .. v149}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v62, 0xb

    aput-object v166, v4, v62

    invoke-static/range {v138 .. v139}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v66, 0xc

    aput-object v166, v4, v66

    invoke-static/range {v144 .. v145}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    move-object/from16 v167, v15

    const/16 v15, 0xd

    .end local v15    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v167, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    aput-object v166, v4, v15

    const/16 v123, 0xe

    .line 4658
    invoke-static/range {v150 .. v151}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    aput-object v166, v4, v123

    const/16 v123, 0xf

    invoke-static/range {v152 .. v153}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    aput-object v166, v4, v123

    const/16 v123, 0x10

    invoke-static/range {v154 .. v155}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    aput-object v166, v4, v123

    const/16 v123, 0x11

    invoke-static/range {v156 .. v157}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    aput-object v166, v4, v123

    .line 4659
    invoke-static/range {v158 .. v159}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v123

    const/16 v60, 0x12

    aput-object v123, v4, v60

    const/16 v123, 0x13

    invoke-static/range {v160 .. v161}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    aput-object v166, v4, v123

    const/16 v123, 0x14

    invoke-static/range {v162 .. v163}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    aput-object v166, v4, v123

    const/16 v123, 0x15

    invoke-static/range {v164 .. v165}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    aput-object v166, v4, v123

    .line 4652
    const-string/jumbo v15, "nt"

    invoke-static {v9, v1, v12, v15, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4664
    :goto_a3f
    nop

    .line 4665
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v15

    .line 4664
    const-string/jumbo v4, "mcd"

    move/from16 v166, v1

    .end local v1    # "uid":I
    .local v166, "uid":I
    move-object/from16 v1, p2

    move/from16 v168, v2

    .end local v2    # "NU":I
    .local v168, "NU":I
    move/from16 v2, v166

    move/from16 v169, v3

    .end local v3    # "iu":I
    .local v169, "iu":I
    move-object v3, v12

    move-object/from16 v82, v119

    move-object/from16 v119, v0

    const/16 v0, 0x2c

    .end local v0    # "cpuFreqs":[J
    .local v82, "deviceConsumer":Landroid/os/BatteryConsumer;
    .local v119, "cpuFreqs":[J
    move-object/from16 v170, v5

    .end local v5    # "stats":Landroid/os/BatteryUsageStats;
    .local v170, "stats":Landroid/os/BatteryUsageStats;
    move-object v5, v15

    move-object/from16 v171, v14

    move-wide/from16 v14, v121

    move-object/from16 v121, v6

    .end local v6    # "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    .local v14, "rawRealtime":J
    .local v121, "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4668
    invoke-virtual {v11, v14, v15, v10}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v172

    .line 4669
    .local v172, "fullWifiLockOnTime":J
    invoke-virtual {v11, v14, v15, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v174

    .line 4670
    .local v174, "wifiScanTime":J
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v122

    .line 4671
    .local v122, "wifiScanCount":I
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v176

    .line 4673
    .local v176, "wifiScanCountBg":I
    invoke-virtual {v11, v14, v15}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v1

    add-long v1, v1, v111

    const-wide/16 v3, 0x3e8

    div-long v177, v1, v3

    .line 4674
    .local v177, "wifiScanActualTimeMs":J
    invoke-virtual {v11, v14, v15}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v1

    add-long v1, v1, v111

    div-long v179, v1, v3

    .line 4676
    .local v179, "wifiScanActualTimeMsBg":J
    invoke-virtual {v11, v14, v15, v10}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v181

    .line 4677
    .local v181, "uidWifiRunningTime":J
    cmp-long v1, v172, v115

    if-nez v1, :cond_aa8

    cmp-long v1, v174, v115

    if-nez v1, :cond_aa8

    if-nez v122, :cond_aa8

    if-nez v176, :cond_aa8

    cmp-long v1, v177, v115

    if-nez v1, :cond_aa8

    cmp-long v1, v179, v115

    if-nez v1, :cond_aa8

    cmp-long v1, v181, v115

    if-eqz v1, :cond_aa5

    goto :goto_aa8

    :cond_aa5
    move/from16 v6, v166

    goto :goto_af0

    .line 4680
    :cond_aa8
    :goto_aa8
    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static/range {v172 .. v173}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static/range {v174 .. v175}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 4681
    invoke-static/range {v181 .. v182}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static/range {v122 .. v122}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    .line 4682
    const/4 v1, 0x4

    aput-object v118, v2, v1

    const/4 v1, 0x5

    aput-object v118, v2, v1

    const/4 v1, 0x6

    aput-object v118, v2, v1

    .line 4683
    invoke-static/range {v176 .. v176}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v2, v3

    invoke-static/range {v177 .. v178}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v2, v3

    invoke-static/range {v179 .. v180}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v2, v3

    .line 4680
    const-string/jumbo v1, "wfl"

    move/from16 v6, v166

    .end local v166    # "uid":I
    .local v6, "uid":I
    invoke-static {v9, v6, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4686
    :goto_af0
    nop

    .line 4687
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4686
    const-string/jumbo v4, "wfcd"

    move-object/from16 v1, p2

    move v2, v6

    move-object v3, v12

    move v0, v6

    .end local v6    # "uid":I
    .local v0, "uid":I
    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4689
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 4690
    .local v6, "bleTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v6, :cond_c00

    .line 4692
    invoke-virtual {v6, v14, v15, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    add-long v1, v1, v111

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 4694
    .local v1, "totalTime":J
    cmp-long v3, v1, v115

    if-eqz v3, :cond_bf3

    .line 4695
    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    .line 4696
    .local v3, "count":I
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 4697
    .local v4, "bleTimerBg":Landroid/os/BatteryStats$Timer;
    if-eqz v4, :cond_b24

    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    goto :goto_b25

    :cond_b24
    const/4 v5, 0x0

    .line 4699
    .local v5, "countBg":I
    :goto_b25
    move-object/from16 v183, v8

    move-wide/from16 v7, v105

    .end local v8    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v105    # "rawRealtimeMs":J
    .local v7, "rawRealtimeMs":J
    .local v183, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v6, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v105

    .line 4700
    .local v105, "actualTime":J
    if-eqz v4, :cond_b34

    .line 4701
    invoke-virtual {v4, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v184

    goto :goto_b36

    :cond_b34
    move-wide/from16 v184, v115

    .line 4703
    .local v184, "actualTimeBg":J
    :goto_b36
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v186

    if-eqz v186, :cond_b47

    .line 4704
    move-object/from16 v186, v4

    .end local v4    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .local v186, "bleTimerBg":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v4

    goto :goto_b4a

    .end local v186    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .restart local v4    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    :cond_b47
    move-object/from16 v186, v4

    .end local v4    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .restart local v186    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    const/4 v4, 0x0

    .line 4705
    .local v4, "resultCount":I
    :goto_b4a
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v187

    if-eqz v187, :cond_b5b

    .line 4706
    move-object/from16 v187, v6

    .end local v6    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .local v187, "bleTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    goto :goto_b5e

    .end local v187    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v6    # "bleTimer":Landroid/os/BatteryStats$Timer;
    :cond_b5b
    move-object/from16 v187, v6

    .end local v6    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v187    # "bleTimer":Landroid/os/BatteryStats$Timer;
    const/4 v6, 0x0

    .line 4708
    .local v6, "resultCountBg":I
    :goto_b5e
    move-wide/from16 v188, v14

    .end local v14    # "rawRealtime":J
    .local v188, "rawRealtime":J
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    .line 4709
    .local v14, "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v14, :cond_b6b

    .line 4710
    invoke-virtual {v14, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v190

    goto :goto_b6d

    :cond_b6b
    move-wide/from16 v190, v115

    .line 4711
    .local v190, "unoptimizedScanTotalTime":J
    :goto_b6d
    if-eqz v14, :cond_b74

    .line 4712
    invoke-virtual {v14, v7, v8}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v192

    goto :goto_b76

    :cond_b74
    move-wide/from16 v192, v115

    .line 4714
    .local v192, "unoptimizedScanMaxTime":J
    :goto_b76
    nop

    .line 4715
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    .line 4716
    .local v15, "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    if-eqz v15, :cond_b82

    .line 4717
    invoke-virtual {v15, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v194

    goto :goto_b84

    :cond_b82
    move-wide/from16 v194, v115

    .line 4718
    .local v194, "unoptimizedScanTotalTimeBg":J
    :goto_b84
    if-eqz v15, :cond_b8b

    .line 4719
    invoke-virtual {v15, v7, v8}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v196

    goto :goto_b8d

    :cond_b8b
    move-wide/from16 v196, v115

    .line 4721
    .local v196, "unoptimizedScanMaxTimeBg":J
    :goto_b8d
    move-object/from16 v198, v14

    move-object/from16 v62, v15

    const/16 v14, 0xb

    .end local v14    # "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    .end local v15    # "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    .local v62, "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    .local v198, "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    const/16 v16, 0x0

    aput-object v199, v15, v16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v199

    const/16 v63, 0x1

    aput-object v199, v15, v63

    .line 4722
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v199

    const/16 v114, 0x2

    aput-object v199, v15, v114

    invoke-static/range {v105 .. v106}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    const/16 v67, 0x3

    aput-object v199, v15, v67

    invoke-static/range {v184 .. v185}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    const/16 v68, 0x4

    aput-object v199, v15, v68

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v199

    const/16 v69, 0x5

    aput-object v199, v15, v69

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v199

    const/16 v70, 0x6

    aput-object v199, v15, v70

    .line 4723
    invoke-static/range {v190 .. v191}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    const/16 v71, 0x7

    aput-object v199, v15, v71

    invoke-static/range {v194 .. v195}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    const/16 v72, 0x8

    aput-object v199, v15, v72

    .line 4724
    invoke-static/range {v192 .. v193}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    const/16 v73, 0x9

    aput-object v199, v15, v73

    invoke-static/range {v196 .. v197}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    const/16 v74, 0xa

    aput-object v199, v15, v74

    .line 4721
    const-string v14, "blem"

    invoke-static {v9, v0, v12, v14, v15}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c0c

    .line 4694
    .end local v3    # "count":I
    .end local v4    # "resultCount":I
    .end local v5    # "countBg":I
    .end local v7    # "rawRealtimeMs":J
    .end local v62    # "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    .end local v183    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v184    # "actualTimeBg":J
    .end local v186    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .end local v187    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v188    # "rawRealtime":J
    .end local v190    # "unoptimizedScanTotalTime":J
    .end local v192    # "unoptimizedScanMaxTime":J
    .end local v194    # "unoptimizedScanTotalTimeBg":J
    .end local v196    # "unoptimizedScanMaxTimeBg":J
    .end local v198    # "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    .local v6, "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v8    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v14, "rawRealtime":J
    .local v105, "rawRealtimeMs":J
    :cond_bf3
    move-object/from16 v187, v6

    move-object/from16 v183, v8

    move-wide/from16 v188, v14

    move-wide/from16 v7, v105

    const/16 v72, 0x8

    const/16 v73, 0x9

    .end local v6    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v8    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v14    # "rawRealtime":J
    .end local v105    # "rawRealtimeMs":J
    .restart local v7    # "rawRealtimeMs":J
    .restart local v183    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v187    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v188    # "rawRealtime":J
    goto :goto_c0c

    .line 4690
    .end local v1    # "totalTime":J
    .end local v7    # "rawRealtimeMs":J
    .end local v183    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v187    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v188    # "rawRealtime":J
    .restart local v6    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v8    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v14    # "rawRealtime":J
    .restart local v105    # "rawRealtimeMs":J
    :cond_c00
    move-object/from16 v187, v6

    move-object/from16 v183, v8

    move-wide/from16 v188, v14

    move-wide/from16 v7, v105

    const/16 v72, 0x8

    const/16 v73, 0x9

    .line 4728
    .end local v6    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v8    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v14    # "rawRealtime":J
    .end local v105    # "rawRealtimeMs":J
    .restart local v7    # "rawRealtimeMs":J
    .restart local v183    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v187    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v188    # "rawRealtime":J
    :goto_c0c
    nop

    .line 4729
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4728
    const-string v4, "ble"

    move-object/from16 v1, p2

    move v2, v0

    move-object v3, v12

    move-object/from16 v14, v187

    .end local v187    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .local v14, "bleTimer":Landroid/os/BatteryStats$Timer;
    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4731
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v1

    if-eqz v1, :cond_c48

    .line 4732
    sget v1, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 4733
    .end local v117    # "args":[Ljava/lang/Object;
    .local v1, "args":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 4734
    .local v2, "hasData":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c2a
    sget v4, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v3, v4, :cond_c3e

    .line 4735
    invoke-virtual {v11, v3, v10}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v4

    .line 4736
    .local v4, "val":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    .line 4737
    if-eqz v4, :cond_c3b

    const/4 v2, 0x1

    .line 4734
    .end local v4    # "val":I
    :cond_c3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c2a

    .line 4739
    .end local v3    # "i":I
    :cond_c3e
    if-eqz v2, :cond_c46

    .line 4740
    const-string/jumbo v3, "ua"

    invoke-static {v9, v0, v12, v3, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4744
    .end local v2    # "hasData":Z
    :cond_c46
    move-object/from16 v117, v1

    .end local v1    # "args":[Ljava/lang/Object;
    .restart local v117    # "args":[Ljava/lang/Object;
    :cond_c48
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_c7e

    .line 4745
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    .line 4747
    .local v1, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v1, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v2

    .line 4748
    .local v2, "totTimeMs":J
    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 4749
    .local v4, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v4, :cond_c61

    .line 4750
    invoke-virtual {v4, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v5

    goto :goto_c63

    :cond_c61
    move-wide/from16 v5, v115

    .line 4751
    .local v5, "bgTimeMs":J
    :goto_c63
    move-object/from16 v62, v1

    const/4 v15, 0x2

    .end local v1    # "timer":Landroid/os/BatteryStats$Timer;
    .local v62, "timer":Landroid/os/BatteryStats$Timer;
    new-array v1, v15, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v1, v16

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v63, 0x1

    aput-object v15, v1, v63

    const-string v15, "awl"

    invoke-static {v9, v0, v12, v15, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c80

    .line 4744
    .end local v2    # "totTimeMs":J
    .end local v4    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v5    # "bgTimeMs":J
    .end local v62    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_c7e
    const/16 v63, 0x1

    .line 4754
    :goto_c80
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v15

    .line 4755
    .local v15, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v6, v1

    .local v6, "iw":I
    :goto_c8b
    const/16 v5, 0x5f

    if-ltz v6, :cond_d43

    .line 4756
    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 4757
    .local v3, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-string v62, ""

    .line 4758
    .local v62, "linePrefix":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4759
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v105, "f"

    move-object v1, v13

    move-wide/from16 v184, v7

    move-object v8, v3

    .end local v3    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v7    # "rawRealtimeMs":J
    .local v8, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .local v184, "rawRealtimeMs":J
    move-wide/from16 v3, v188

    move v7, v5

    move-object/from16 v5, v105

    move-object/from16 v187, v14

    move v14, v6

    .end local v6    # "iw":I
    .local v14, "iw":I
    .restart local v187    # "bleTimer":Landroid/os/BatteryStats$Timer;
    move/from16 v6, p3

    move v10, v7

    move-wide/from16 v200, v184

    .end local v184    # "rawRealtimeMs":J
    .local v200, "rawRealtimeMs":J
    move-object/from16 v7, v62

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 4761
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v105

    .line 4762
    .local v105, "pTimer":Landroid/os/BatteryStats$Timer;
    const-string/jumbo v5, "p"

    move-object v1, v13

    move-object/from16 v2, v105

    move-object/from16 v7, v62

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 4764
    if-eqz v105, :cond_cd2

    invoke-virtual/range {v105 .. v105}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    goto :goto_cd3

    :cond_cd2
    const/4 v1, 0x0

    :goto_cd3
    move-object v2, v1

    const-string v5, "bp"

    move-object v1, v13

    move-wide/from16 v3, v188

    move/from16 v6, p3

    move-object/from16 v7, v62

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 4766
    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string/jumbo v5, "w"

    move-object v1, v13

    move-object/from16 v7, v62

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4770
    .end local v62    # "linePrefix":Ljava/lang/String;
    .local v1, "linePrefix":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_d34

    .line 4771
    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4772
    .local v2, "name":Ljava/lang/String;
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_d08

    .line 4773
    invoke-virtual {v2, v3, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 4775
    :cond_d08
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_d14

    .line 4776
    invoke-virtual {v2, v6, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 4778
    :cond_d14
    const/16 v7, 0xd

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_d20

    .line 4779
    invoke-virtual {v2, v7, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 4781
    :cond_d20
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string/jumbo v3, "wl"

    invoke-static {v9, v0, v12, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d38

    .line 4770
    .end local v2    # "name":Ljava/lang/String;
    :cond_d34
    const/16 v6, 0xa

    const/16 v7, 0xd

    .line 4755
    .end local v1    # "linePrefix":Ljava/lang/String;
    .end local v8    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v105    # "pTimer":Landroid/os/BatteryStats$Timer;
    :goto_d38
    add-int/lit8 v1, v14, -0x1

    move/from16 v10, p3

    move v6, v1

    move-object/from16 v14, v187

    move-wide/from16 v7, v200

    .end local v14    # "iw":I
    .local v1, "iw":I
    goto/16 :goto_c8b

    .end local v1    # "iw":I
    .end local v187    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v200    # "rawRealtimeMs":J
    .restart local v6    # "iw":I
    .restart local v7    # "rawRealtimeMs":J
    .local v14, "bleTimer":Landroid/os/BatteryStats$Timer;
    :cond_d43
    move v10, v5

    move-wide/from16 v200, v7

    move-object/from16 v187, v14

    const/16 v7, 0xd

    move v14, v6

    const/16 v6, 0xa

    .line 4786
    .end local v6    # "iw":I
    .end local v7    # "rawRealtimeMs":J
    .end local v14    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v187    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v200    # "rawRealtimeMs":J
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    .line 4787
    .local v14, "mcTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v14, :cond_d83

    .line 4788
    nop

    .line 4789
    move v8, v10

    move-wide/from16 v4, v188

    move/from16 v10, p3

    .end local v188    # "rawRealtime":J
    .local v4, "rawRealtime":J
    invoke-virtual {v14, v4, v5, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    const-wide/16 v64, 0x3e8

    div-long v1, v1, v64

    .line 4790
    .local v1, "totalMcWakelockTimeMs":J
    invoke-virtual {v14, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    .line 4791
    .local v3, "countMcWakelock":I
    cmp-long v62, v1, v115

    if-lez v62, :cond_d88

    .line 4792
    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    .line 4793
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v16, 0x0

    aput-object v6, v7, v16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v62, 0x1

    aput-object v6, v7, v62

    .line 4792
    const-string/jumbo v6, "wmc"

    invoke-static {v9, v0, v12, v6, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d88

    .line 4787
    .end local v1    # "totalMcWakelockTimeMs":J
    .end local v3    # "countMcWakelock":I
    .end local v4    # "rawRealtime":J
    .restart local v188    # "rawRealtime":J
    :cond_d83
    move v8, v10

    move-wide/from16 v4, v188

    move/from16 v10, p3

    .line 4797
    .end local v188    # "rawRealtime":J
    .restart local v4    # "rawRealtime":J
    :cond_d88
    :goto_d88
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v6

    .line 4798
    .local v6, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "isy":I
    :goto_d92
    if-ltz v1, :cond_e34

    .line 4799
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    .line 4801
    .local v3, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v3, v4, v5, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v105

    add-long v105, v105, v111

    const-wide/16 v64, 0x3e8

    div-long v105, v105, v64

    .line 4802
    .local v105, "totalTime":J
    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v7

    .line 4803
    .local v7, "count":I
    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 4804
    .local v2, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v2, :cond_db9

    .line 4805
    move-object/from16 v185, v14

    move-object/from16 v184, v15

    move-wide/from16 v14, v200

    .end local v15    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v200    # "rawRealtimeMs":J
    .local v14, "rawRealtimeMs":J
    .local v184, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v185, "mcTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v2, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v188

    goto :goto_dc1

    .end local v184    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v185    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .local v14, "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v15    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v200    # "rawRealtimeMs":J
    :cond_db9
    move-object/from16 v185, v14

    move-object/from16 v184, v15

    move-wide/from16 v14, v200

    .end local v15    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v200    # "rawRealtimeMs":J
    .local v14, "rawRealtimeMs":J
    .restart local v184    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v185    # "mcTimer":Landroid/os/BatteryStats$Timer;
    const-wide/16 v188, -0x1

    .line 4806
    .local v188, "bgTime":J
    :goto_dc1
    if-eqz v2, :cond_dc8

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v62

    goto :goto_dca

    :cond_dc8
    const/16 v62, -0x1

    .line 4807
    .local v62, "bgCount":I
    :goto_dca
    cmp-long v186, v105, v115

    if-eqz v186, :cond_e1c

    .line 4808
    move-object/from16 v190, v2

    const/4 v8, 0x5

    .end local v2    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .local v190, "bgTimer":Landroid/os/BatteryStats$Timer;
    new-array v2, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v191, v3

    move-object/from16 v3, v171

    .end local v3    # "timer":Landroid/os/BatteryStats$Timer;
    .local v191, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v171

    move-object/from16 v192, v6

    .end local v6    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v192, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-object/from16 v6, v171

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v2, v8

    .line 4809
    invoke-static/range {v105 .. v106}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v2, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v2, v8

    invoke-static/range {v188 .. v189}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v2, v8

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x4

    aput-object v6, v2, v8

    .line 4808
    const-string/jumbo v6, "sy"

    invoke-static {v9, v0, v12, v6, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e24

    .line 4807
    .end local v190    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v191    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v192    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v2    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .restart local v3    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v6    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_e1c
    move-object/from16 v190, v2

    move-object/from16 v191, v3

    move-object/from16 v192, v6

    move-object/from16 v3, v171

    .line 4798
    .end local v2    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v3    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v6    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v7    # "count":I
    .end local v62    # "bgCount":I
    .end local v105    # "totalTime":J
    .end local v188    # "bgTime":J
    .restart local v192    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :goto_e24
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v171, v3

    move-wide/from16 v200, v14

    move-object/from16 v15, v184

    move-object/from16 v14, v185

    move-object/from16 v6, v192

    const/16 v8, 0x5f

    goto/16 :goto_d92

    .end local v184    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v185    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v192    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v6    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v14, "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v15    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v200    # "rawRealtimeMs":J
    :cond_e34
    move-object/from16 v192, v6

    move-object/from16 v185, v14

    move-object/from16 v184, v15

    move-object/from16 v3, v171

    move-wide/from16 v14, v200

    .line 4813
    .end local v1    # "isy":I
    .end local v6    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v15    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v200    # "rawRealtimeMs":J
    .local v14, "rawRealtimeMs":J
    .restart local v184    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v185    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v192    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v8

    .line 4814
    .local v8, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "ij":I
    :goto_e48
    if-ltz v1, :cond_ed6

    .line 4815
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    .line 4817
    .local v2, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v2, v4, v5, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    add-long v6, v6, v111

    const-wide/16 v64, 0x3e8

    div-long v6, v6, v64

    .line 4818
    .local v6, "totalTime":J
    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v105

    .line 4819
    .local v105, "count":I
    move-wide/from16 v188, v4

    .end local v4    # "rawRealtime":J
    .local v188, "rawRealtime":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 4820
    .local v4, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v4, :cond_e6b

    .line 4821
    invoke-virtual {v4, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v190

    goto :goto_e6d

    :cond_e6b
    const-wide/16 v190, -0x1

    .line 4822
    .local v190, "bgTime":J
    :goto_e6d
    if-eqz v4, :cond_e74

    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    goto :goto_e75

    :cond_e74
    const/4 v5, -0x1

    .line 4823
    .local v5, "bgCount":I
    :goto_e75
    cmp-long v106, v6, v115

    if-eqz v106, :cond_ec7

    .line 4824
    move-object/from16 v106, v2

    move-object/from16 v171, v4

    const/4 v2, 0x5

    .end local v2    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v4    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .local v106, "timer":Landroid/os/BatteryStats$Timer;
    .local v171, "bgTimer":Landroid/os/BatteryStats$Timer;
    new-array v4, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v193

    move-object/from16 v194, v8

    .end local v8    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v194, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-object/from16 v8, v193

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v4, v8

    .line 4825
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v4, v8

    invoke-static/range {v105 .. v105}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x2

    aput-object v2, v4, v8

    invoke-static/range {v190 .. v191}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v67, 0x3

    aput-object v2, v4, v67

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v68, 0x4

    aput-object v2, v4, v68

    .line 4824
    const-string/jumbo v2, "jb"

    invoke-static {v9, v0, v12, v2, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ece

    .line 4823
    .end local v106    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v171    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v194    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v2    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v4    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .restart local v8    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_ec7
    move-object/from16 v106, v2

    move-object/from16 v171, v4

    move-object/from16 v194, v8

    const/4 v8, 0x2

    .line 4814
    .end local v2    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v4    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v5    # "bgCount":I
    .end local v6    # "totalTime":J
    .end local v8    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v105    # "count":I
    .end local v190    # "bgTime":J
    .restart local v194    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :goto_ece
    add-int/lit8 v1, v1, -0x1

    move-wide/from16 v4, v188

    move-object/from16 v8, v194

    goto/16 :goto_e48

    .end local v188    # "rawRealtime":J
    .end local v194    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v4, "rawRealtime":J
    .restart local v8    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_ed6
    move-wide/from16 v188, v4

    move-object/from16 v194, v8

    const/4 v8, 0x2

    .line 4829
    .end local v1    # "ij":I
    .end local v4    # "rawRealtime":J
    .end local v8    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v188    # "rawRealtime":J
    .restart local v194    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-static {}, Landroid/app/job/JobParameters;->getJobStopReasonCodes()[I

    move-result-object v6

    .line 4830
    .local v6, "jobStopReasonCodes":[I
    array-length v1, v6

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v7, v1, [Ljava/lang/Object;

    .line 4832
    .local v7, "jobCompletionArgs":[Ljava/lang/Object;
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v5

    .line 4833
    .local v5, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "ic":I
    :goto_eed
    if-ltz v1, :cond_f4d

    .line 4834
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    .line 4835
    .local v2, "types":Landroid/util/SparseIntArray;
    if-eqz v2, :cond_f41

    .line 4836
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v62

    move-object/from16 v8, v62

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v7, v8

    .line 4837
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f18
    array-length v8, v6

    if-ge v4, v8, :cond_f36

    .line 4838
    add-int/lit8 v8, v4, 0x1

    move-object/from16 v171, v3

    aget v3, v6, v4

    move-object/from16 v62, v5

    const/4 v5, 0x0

    .end local v5    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .local v62, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    .line 4837
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v62

    move-object/from16 v3, v171

    const/4 v8, 0x0

    goto :goto_f18

    .end local v62    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v5    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_f36
    move-object/from16 v171, v3

    move-object/from16 v62, v5

    .line 4841
    .end local v4    # "i":I
    .end local v5    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v62    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    const-string/jumbo v3, "jbc"

    invoke-static {v9, v0, v12, v3, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f45

    .line 4835
    .end local v62    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v5    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_f41
    move-object/from16 v171, v3

    move-object/from16 v62, v5

    .line 4833
    .end local v2    # "types":Landroid/util/SparseIntArray;
    .end local v5    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v62    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :goto_f45
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v5, v62

    move-object/from16 v3, v171

    const/4 v8, 0x2

    goto :goto_eed

    .end local v62    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v5    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_f4d
    move-object/from16 v171, v3

    move-object/from16 v62, v5

    .line 4846
    .end local v1    # "ic":I
    .end local v5    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v62    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-virtual {v11, v13, v10}, Landroid/os/BatteryStats$Uid;->getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V

    .line 4847
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_f6a

    .line 4848
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string/jumbo v1, "jbd"

    invoke-static {v9, v0, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4851
    :cond_f6a
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string v4, "fla"

    move-object/from16 v1, p2

    move v2, v0

    move-object/from16 v8, v171

    move-object v3, v12

    move-wide/from16 v105, v188

    .end local v188    # "rawRealtime":J
    .local v105, "rawRealtime":J
    move-object/from16 v123, v6

    move-object/from16 v171, v7

    move-object/from16 v74, v192

    const/16 v188, 0xd

    const/16 v189, 0xa

    .end local v6    # "jobStopReasonCodes":[I
    .end local v7    # "jobCompletionArgs":[Ljava/lang/Object;
    .end local v192    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v74, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v123, "jobStopReasonCodes":[I
    .local v171, "jobCompletionArgs":[Ljava/lang/Object;
    move-wide/from16 v6, v105

    move-object/from16 v202, v8

    move-object/from16 v186, v13

    move-object/from16 v114, v183

    const/4 v13, 0x2

    move/from16 v183, v60

    move/from16 v60, v168

    move-object/from16 v168, v194

    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .end local v183    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v194    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v60, "NU":I
    .local v114, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v168, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v186, "sb":Ljava/lang/StringBuilder;
    move/from16 v8, p3

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 4853
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string v4, "cam"

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 4855
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string/jumbo v4, "vid"

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 4857
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string v4, "aud"

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 4860
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v8

    .line 4861
    .local v8, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 4862
    .local v6, "NSE":I
    const/4 v1, 0x0

    .local v1, "ise":I
    :goto_fbb
    if-ge v1, v6, :cond_1051

    .line 4863
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Sensor;

    .line 4864
    .local v2, "se":Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4865
    .local v3, "sensorNumber":I
    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 4866
    .local v4, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v4, :cond_1044

    .line 4868
    move-wide/from16 v200, v14

    move-wide/from16 v13, v105

    .end local v14    # "rawRealtimeMs":J
    .end local v105    # "rawRealtime":J
    .local v13, "rawRealtime":J
    .restart local v200    # "rawRealtimeMs":J
    invoke-virtual {v4, v13, v14, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v105

    add-long v105, v105, v111

    const-wide/16 v64, 0x3e8

    div-long v105, v105, v64

    .line 4870
    .local v105, "totalTime":J
    cmp-long v5, v105, v115

    if-eqz v5, :cond_103d

    .line 4871
    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 4872
    .local v5, "count":I
    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    .line 4873
    .local v7, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v7, :cond_fee

    invoke-virtual {v7, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v190

    goto :goto_ff0

    :cond_fee
    const/16 v190, 0x0

    .line 4875
    .local v190, "bgCount":I
    :goto_ff0
    move-wide/from16 v191, v13

    move-wide/from16 v13, v200

    .end local v200    # "rawRealtimeMs":J
    .local v13, "rawRealtimeMs":J
    .local v191, "rawRealtime":J
    invoke-virtual {v4, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v193

    .line 4876
    .local v193, "actualTime":J
    if-eqz v7, :cond_fff

    .line 4877
    invoke-virtual {v7, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v195

    goto :goto_1001

    :cond_fff
    move-wide/from16 v195, v115

    .line 4878
    .local v195, "bgActualTime":J
    :goto_1001
    move-object/from16 v198, v2

    const/4 v15, 0x6

    .end local v2    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .local v198, "se":Landroid/os/BatteryStats$Uid$Sensor;
    new-array v2, v15, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v2, v16

    invoke-static/range {v105 .. v106}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v63, 0x1

    aput-object v15, v2, v63

    .line 4879
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v197, 0x2

    aput-object v15, v2, v197

    invoke-static/range {v190 .. v190}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v197

    const/16 v67, 0x3

    aput-object v197, v2, v67

    invoke-static/range {v193 .. v194}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v197

    const/16 v68, 0x4

    aput-object v197, v2, v68

    invoke-static/range {v195 .. v196}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v197

    const/16 v69, 0x5

    aput-object v197, v2, v69

    .line 4878
    const-string/jumbo v15, "sr"

    invoke-static {v9, v0, v12, v15, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1049

    .line 4870
    .end local v5    # "count":I
    .end local v7    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v190    # "bgCount":I
    .end local v191    # "rawRealtime":J
    .end local v193    # "actualTime":J
    .end local v195    # "bgActualTime":J
    .end local v198    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .restart local v2    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .local v13, "rawRealtime":J
    .restart local v200    # "rawRealtimeMs":J
    :cond_103d
    move-object/from16 v198, v2

    move-wide/from16 v191, v13

    move-wide/from16 v13, v200

    .end local v2    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v200    # "rawRealtimeMs":J
    .local v13, "rawRealtimeMs":J
    .restart local v191    # "rawRealtime":J
    .restart local v198    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    goto :goto_1049

    .line 4866
    .end local v13    # "rawRealtimeMs":J
    .end local v191    # "rawRealtime":J
    .end local v198    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .restart local v2    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .restart local v14    # "rawRealtimeMs":J
    .local v105, "rawRealtime":J
    :cond_1044
    move-object/from16 v198, v2

    move-wide v13, v14

    move-wide/from16 v191, v105

    .line 4862
    .end local v2    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v3    # "sensorNumber":I
    .end local v4    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v14    # "rawRealtimeMs":J
    .end local v105    # "rawRealtime":J
    .restart local v13    # "rawRealtimeMs":J
    .restart local v191    # "rawRealtime":J
    :goto_1049
    add-int/lit8 v1, v1, 0x1

    move-wide v14, v13

    move-wide/from16 v105, v191

    const/4 v13, 0x2

    goto/16 :goto_fbb

    .end local v13    # "rawRealtimeMs":J
    .end local v191    # "rawRealtime":J
    .restart local v14    # "rawRealtimeMs":J
    .restart local v105    # "rawRealtime":J
    :cond_1051
    move-wide v13, v14

    move-wide/from16 v191, v105

    .line 4884
    .end local v1    # "ise":I
    .end local v14    # "rawRealtimeMs":J
    .end local v105    # "rawRealtime":J
    .restart local v13    # "rawRealtimeMs":J
    .restart local v191    # "rawRealtime":J
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string/jumbo v4, "vib"

    move-object/from16 v1, p2

    move v2, v0

    move-object v3, v12

    move/from16 v105, v6

    .end local v6    # "NSE":I
    .local v105, "NSE":I
    move-wide/from16 v6, v191

    move-object/from16 v106, v8

    .end local v8    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .local v106, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    move/from16 v8, p3

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 4887
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string v4, "fg"

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 4890
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string v4, "fgs"

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 4893
    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/Object;

    .line 4894
    .local v2, "stateTimes":[Ljava/lang/Object;
    const-wide/16 v3, 0x0

    .line 4895
    .local v3, "totalStateTime":J
    const/4 v5, 0x0

    .local v5, "ips":I
    :goto_1082
    if-ge v5, v1, :cond_109e

    .line 4896
    move-wide/from16 v6, v191

    .end local v191    # "rawRealtime":J
    .local v6, "rawRealtime":J
    invoke-virtual {v11, v5, v6, v7, v10}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v190

    .line 4897
    .local v190, "time":J
    add-long v3, v3, v190

    .line 4898
    add-long v192, v190, v111

    const-wide/16 v64, 0x3e8

    div-long v192, v192, v64

    invoke-static/range {v192 .. v193}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v5

    .line 4895
    .end local v190    # "time":J
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v191, v6

    const/4 v1, 0x7

    goto :goto_1082

    .end local v6    # "rawRealtime":J
    .restart local v191    # "rawRealtime":J
    :cond_109e
    move-wide/from16 v6, v191

    .line 4900
    .end local v5    # "ips":I
    .end local v191    # "rawRealtime":J
    .restart local v6    # "rawRealtime":J
    cmp-long v1, v3, v115

    if-lez v1, :cond_10aa

    .line 4901
    const-string/jumbo v1, "st"

    invoke-static {v9, v0, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4904
    :cond_10aa
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v190

    .line 4905
    .local v190, "userCpuTimeUs":J
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v192

    .line 4906
    .local v192, "systemCpuTimeUs":J
    cmp-long v1, v190, v115

    if-gtz v1, :cond_10ba

    cmp-long v1, v192, v115

    if-lez v1, :cond_10d9

    .line 4907
    :cond_10ba
    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    const-wide/16 v64, 0x3e8

    div-long v194, v190, v64

    invoke-static/range {v194 .. v195}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v5, v8

    div-long v194, v192, v64

    invoke-static/range {v194 .. v195}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v8, 0x1

    aput-object v1, v5, v8

    .line 4908
    const/4 v1, 0x2

    aput-object v118, v5, v1

    .line 4907
    const-string v1, "cpu"

    invoke-static {v9, v0, v12, v1, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4912
    :cond_10d9
    if-eqz v119, :cond_11e4

    .line 4913
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v1

    .line 4916
    .local v1, "cpuFreqTimeMs":[J
    if-eqz v1, :cond_115d

    array-length v5, v1

    move-object/from16 v8, v119

    .end local v119    # "cpuFreqs":[J
    .local v8, "cpuFreqs":[J
    array-length v15, v8

    if-ne v5, v15, :cond_1154

    .line 4917
    move-object/from16 v5, v186

    const/4 v15, 0x0

    .end local v186    # "sb":Ljava/lang/StringBuilder;
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4918
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_10ee
    move-object/from16 v119, v2

    .end local v2    # "stateTimes":[Ljava/lang/Object;
    .local v119, "stateTimes":[Ljava/lang/Object;
    array-length v2, v1

    if-ge v15, v2, :cond_1108

    .line 4919
    if-eqz v15, :cond_10fa

    const/16 v2, 0x2c

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4920
    :cond_10fa
    move-wide/from16 v194, v3

    .end local v3    # "totalStateTime":J
    .local v194, "totalStateTime":J
    aget-wide v2, v1, v15

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4918
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v119

    move-wide/from16 v3, v194

    goto :goto_10ee

    .end local v194    # "totalStateTime":J
    .restart local v3    # "totalStateTime":J
    :cond_1108
    move-wide/from16 v194, v3

    .line 4922
    .end local v3    # "totalStateTime":J
    .end local v15    # "i":I
    .restart local v194    # "totalStateTime":J
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v2

    .line 4923
    .local v2, "screenOffCpuFreqTimeMs":[J
    if-eqz v2, :cond_1129

    .line 4924
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1111
    array-length v4, v2

    if-ge v3, v4, :cond_1126

    .line 4925
    const/16 v4, 0x2c

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v200, v6

    .end local v6    # "rawRealtime":J
    .local v200, "rawRealtime":J
    aget-wide v6, v2, v3

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4924
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v6, v200

    goto :goto_1111

    .end local v200    # "rawRealtime":J
    .restart local v6    # "rawRealtime":J
    :cond_1126
    move-wide/from16 v200, v6

    .end local v3    # "i":I
    .end local v6    # "rawRealtime":J
    .restart local v200    # "rawRealtime":J
    goto :goto_1137

    .line 4928
    .end local v200    # "rawRealtime":J
    .restart local v6    # "rawRealtime":J
    :cond_1129
    move-wide/from16 v200, v6

    .end local v6    # "rawRealtime":J
    .restart local v200    # "rawRealtime":J
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_112c
    array-length v4, v1

    if-ge v3, v4, :cond_1137

    .line 4929
    const-string v4, ",0"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4928
    add-int/lit8 v3, v3, 0x1

    goto :goto_112c

    .line 4932
    .end local v3    # "i":I
    :cond_1137
    :goto_1137
    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "A"

    const/4 v6, 0x0

    aput-object v3, v4, v6

    array-length v3, v1

    .line 4933
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v4, v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v4, v6

    .line 4932
    const-string v3, "ctf"

    invoke-static {v9, v0, v12, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1167

    .line 4916
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v119    # "stateTimes":[Ljava/lang/Object;
    .end local v194    # "totalStateTime":J
    .end local v200    # "rawRealtime":J
    .local v2, "stateTimes":[Ljava/lang/Object;
    .local v3, "totalStateTime":J
    .restart local v6    # "rawRealtime":J
    .restart local v186    # "sb":Ljava/lang/StringBuilder;
    :cond_1154
    move-object/from16 v119, v2

    move-wide/from16 v194, v3

    move-wide/from16 v200, v6

    move-object/from16 v5, v186

    .end local v2    # "stateTimes":[Ljava/lang/Object;
    .end local v3    # "totalStateTime":J
    .end local v6    # "rawRealtime":J
    .end local v186    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v119    # "stateTimes":[Ljava/lang/Object;
    .restart local v194    # "totalStateTime":J
    .restart local v200    # "rawRealtime":J
    goto :goto_1167

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "cpuFreqs":[J
    .end local v194    # "totalStateTime":J
    .end local v200    # "rawRealtime":J
    .restart local v2    # "stateTimes":[Ljava/lang/Object;
    .restart local v3    # "totalStateTime":J
    .restart local v6    # "rawRealtime":J
    .local v119, "cpuFreqs":[J
    .restart local v186    # "sb":Ljava/lang/StringBuilder;
    :cond_115d
    move-wide/from16 v194, v3

    move-wide/from16 v200, v6

    move-object/from16 v8, v119

    move-object/from16 v5, v186

    move-object/from16 v119, v2

    .line 4936
    .end local v2    # "stateTimes":[Ljava/lang/Object;
    .end local v3    # "totalStateTime":J
    .end local v6    # "rawRealtime":J
    .end local v186    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "cpuFreqs":[J
    .local v119, "stateTimes":[Ljava/lang/Object;
    .restart local v194    # "totalStateTime":J
    .restart local v200    # "rawRealtime":J
    :goto_1167
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqCount()I

    move-result v2

    new-array v2, v2, [J

    .line 4937
    .local v2, "timesInFreqMs":[J
    const/4 v3, 0x0

    .local v3, "procState":I
    :goto_116e
    const/4 v4, 0x7

    if-ge v3, v4, :cond_11e1

    .line 4938
    invoke-virtual {v11, v2, v3}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v4

    if-eqz v4, :cond_11da

    .line 4939
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4940
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_117c
    array-length v6, v2

    if-ge v4, v6, :cond_118e

    .line 4941
    if-eqz v4, :cond_1186

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4942
    :cond_1186
    aget-wide v6, v2, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4940
    add-int/lit8 v4, v4, 0x1

    goto :goto_117c

    .line 4944
    .end local v4    # "i":I
    :cond_118e
    invoke-virtual {v11, v2, v3}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v4

    if-eqz v4, :cond_11ad

    .line 4945
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1195
    array-length v6, v2

    if-ge v4, v6, :cond_11aa

    .line 4946
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v196, v13

    .end local v13    # "rawRealtimeMs":J
    .local v196, "rawRealtimeMs":J
    aget-wide v13, v2, v4

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4945
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v13, v196

    goto :goto_1195

    .end local v196    # "rawRealtimeMs":J
    .restart local v13    # "rawRealtimeMs":J
    :cond_11aa
    move-wide/from16 v196, v13

    .end local v4    # "i":I
    .end local v13    # "rawRealtimeMs":J
    .restart local v196    # "rawRealtimeMs":J
    goto :goto_11bb

    .line 4949
    .end local v196    # "rawRealtimeMs":J
    .restart local v13    # "rawRealtimeMs":J
    :cond_11ad
    move-wide/from16 v196, v13

    .end local v13    # "rawRealtimeMs":J
    .restart local v196    # "rawRealtimeMs":J
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_11b0
    array-length v6, v2

    if-ge v4, v6, :cond_11bb

    .line 4950
    const-string v6, ",0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4949
    add-int/lit8 v4, v4, 0x1

    goto :goto_11b0

    .line 4953
    .end local v4    # "i":I
    :cond_11bb
    :goto_11bb
    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/Object;

    sget-object v4, Landroid/os/BatteryStats$Uid;->UID_PROCESS_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v3

    const/4 v7, 0x0

    aput-object v4, v6, v7

    array-length v4, v2

    .line 4954
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v6, v7

    .line 4955
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v6, v7

    .line 4953
    const-string v4, "ctf"

    invoke-static {v9, v0, v12, v4, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11dc

    .line 4938
    .end local v196    # "rawRealtimeMs":J
    .restart local v13    # "rawRealtimeMs":J
    :cond_11da
    move-wide/from16 v196, v13

    .line 4937
    .end local v13    # "rawRealtimeMs":J
    .restart local v196    # "rawRealtimeMs":J
    :goto_11dc
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v13, v196

    goto :goto_116e

    .end local v196    # "rawRealtimeMs":J
    .restart local v13    # "rawRealtimeMs":J
    :cond_11e1
    move-wide/from16 v196, v13

    .end local v13    # "rawRealtimeMs":J
    .restart local v196    # "rawRealtimeMs":J
    goto :goto_11f0

    .line 4912
    .end local v1    # "cpuFreqTimeMs":[J
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "cpuFreqs":[J
    .end local v194    # "totalStateTime":J
    .end local v196    # "rawRealtimeMs":J
    .end local v200    # "rawRealtime":J
    .local v2, "stateTimes":[Ljava/lang/Object;
    .local v3, "totalStateTime":J
    .restart local v6    # "rawRealtime":J
    .restart local v13    # "rawRealtimeMs":J
    .local v119, "cpuFreqs":[J
    .restart local v186    # "sb":Ljava/lang/StringBuilder;
    :cond_11e4
    move-wide/from16 v194, v3

    move-wide/from16 v200, v6

    move-wide/from16 v196, v13

    move-object/from16 v8, v119

    move-object/from16 v5, v186

    move-object/from16 v119, v2

    .line 4960
    .end local v2    # "stateTimes":[Ljava/lang/Object;
    .end local v3    # "totalStateTime":J
    .end local v6    # "rawRealtime":J
    .end local v13    # "rawRealtimeMs":J
    .end local v186    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "cpuFreqs":[J
    .local v119, "stateTimes":[Ljava/lang/Object;
    .restart local v194    # "totalStateTime":J
    .restart local v196    # "rawRealtimeMs":J
    .restart local v200    # "rawRealtime":J
    :goto_11f0
    nop

    .line 4961
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 4962
    .local v1, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "ipr":I
    :goto_11fb
    if-ltz v2, :cond_129e

    .line 4963
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Proc;

    .line 4965
    .local v3, "ps":Landroid/os/BatteryStats$Uid$Proc;
    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v6

    .line 4966
    .local v6, "userMillis":J
    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v13

    .line 4967
    .local v13, "systemMillis":J
    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v203

    .line 4968
    .local v203, "foregroundMillis":J
    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v4

    .line 4969
    .local v4, "starts":I
    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v186

    .line 4970
    .local v186, "numCrashes":I
    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v198

    .line 4972
    .local v198, "numAnrs":I
    cmp-long v205, v6, v115

    if-nez v205, :cond_1235

    cmp-long v205, v13, v115

    if-nez v205, :cond_1235

    cmp-long v205, v203, v115

    if-nez v205, :cond_1235

    if-nez v4, :cond_1235

    if-nez v198, :cond_1235

    if-eqz v186, :cond_122e

    goto :goto_1235

    :cond_122e
    move-object/from16 v207, v1

    move-object/from16 v206, v5

    move-object/from16 v5, v202

    goto :goto_1294

    .line 4974
    :cond_1235
    :goto_1235
    move-object/from16 v71, v3

    const/4 v15, 0x7

    .end local v3    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .local v71, "ps":Landroid/os/BatteryStats$Uid$Proc;
    new-array v3, v15, [Ljava/lang/Object;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v206, v5

    move-object/from16 v5, v202

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .local v206, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v202

    move-object/from16 v207, v1

    .end local v1    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .local v207, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    move-object/from16 v1, v202

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    aput-object v1, v3, v15

    .line 4975
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v15, 0x1

    aput-object v1, v3, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v15, 0x2

    aput-object v1, v3, v15

    invoke-static/range {v203 .. v204}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v67, 0x3

    aput-object v15, v3, v67

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v68, 0x4

    aput-object v15, v3, v68

    invoke-static/range {v198 .. v198}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v69, 0x5

    aput-object v15, v3, v69

    invoke-static/range {v186 .. v186}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v70, 0x6

    aput-object v15, v3, v70

    .line 4974
    const-string/jumbo v15, "pr"

    invoke-static {v9, v0, v12, v15, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4962
    .end local v4    # "starts":I
    .end local v6    # "userMillis":J
    .end local v13    # "systemMillis":J
    .end local v71    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v186    # "numCrashes":I
    .end local v198    # "numAnrs":I
    .end local v203    # "foregroundMillis":J
    :goto_1294
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v202, v5

    move-object/from16 v5, v206

    move-object/from16 v1, v207

    goto/16 :goto_11fb

    .end local v206    # "sb":Ljava/lang/StringBuilder;
    .end local v207    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v1    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_129e
    move-object/from16 v207, v1

    move-object/from16 v206, v5

    move-object/from16 v5, v202

    .line 4979
    .end local v1    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v2    # "ipr":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v206    # "sb":Ljava/lang/StringBuilder;
    .restart local v207    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    nop

    .line 4980
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 4981
    .local v2, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "ipkg":I
    :goto_12af
    if-ltz v3, :cond_139a

    .line 4982
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Pkg;

    .line 4983
    .local v4, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    const/4 v6, 0x0

    .line 4984
    .local v6, "wakeups":I
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v7

    .line 4985
    .local v7, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    .local v13, "iwa":I
    :goto_12c2
    if-ltz v13, :cond_12f9

    .line 4986
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Counter;

    invoke-virtual {v14, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v14

    .line 4987
    .local v14, "count":I
    add-int/2addr v6, v14

    .line 4988
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v202, v5

    const/16 v1, 0x5f

    const/16 v5, 0x2c

    invoke-virtual {v15, v5, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v15

    .line 4989
    .local v15, "name":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v5, v16

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v71

    const/16 v63, 0x1

    aput-object v71, v5, v63

    const-string/jumbo v1, "wua"

    invoke-static {v9, v0, v12, v1, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4985
    .end local v14    # "count":I
    .end local v15    # "name":Ljava/lang/String;
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v5, v202

    goto :goto_12c2

    :cond_12f9
    move-object/from16 v202, v5

    .line 4991
    .end local v13    # "iwa":I
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 4992
    .local v1, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v13, 0x1

    sub-int/2addr v5, v13

    .local v5, "isvc":I
    :goto_1305
    if-ltz v5, :cond_1380

    .line 4993
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 4994
    .local v13, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-wide/from16 v14, v103

    .end local v103    # "batteryUptime":J
    .local v14, "batteryUptime":J
    invoke-virtual {v13, v14, v15, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v103

    .line 4995
    .local v103, "startTime":J
    invoke-virtual {v13, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v71

    .line 4996
    .local v71, "starts":I
    invoke-virtual {v13, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v186

    .line 4997
    .local v186, "launches":I
    cmp-long v198, v103, v115

    if-nez v198, :cond_1337

    if-nez v71, :cond_1337

    if-eqz v186, :cond_1324

    goto :goto_1337

    :cond_1324
    move-object/from16 v198, v4

    move-object/from16 v70, v7

    const/16 v16, 0x0

    const/16 v63, 0x1

    const-wide/16 v64, 0x3e8

    const/16 v67, 0x3

    const/16 v68, 0x4

    const/16 v69, 0x5

    const/16 v204, 0x2

    goto :goto_1377

    .line 4998
    :cond_1337
    :goto_1337
    move-object/from16 v198, v4

    move-object/from16 v70, v7

    const/4 v4, 0x6

    .end local v4    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v7    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .local v70, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .local v198, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    new-array v7, v4, [Ljava/lang/Object;

    .line 4999
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v203

    const/16 v16, 0x0

    aput-object v203, v7, v16

    .line 5000
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v203

    const/16 v63, 0x1

    aput-object v203, v7, v63

    .line 5001
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v203

    const/16 v204, 0x2

    aput-object v203, v7, v204

    const-wide/16 v64, 0x3e8

    div-long v208, v103, v64

    .line 5002
    invoke-static/range {v208 .. v209}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v203

    const/16 v67, 0x3

    aput-object v203, v7, v67

    .line 5003
    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v203

    const/16 v68, 0x4

    aput-object v203, v7, v68

    .line 5004
    invoke-static/range {v186 .. v186}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v203

    const/16 v69, 0x5

    aput-object v203, v7, v69

    .line 4998
    const-string v4, "apk"

    invoke-static {v9, v0, v12, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4992
    .end local v13    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v71    # "starts":I
    .end local v103    # "startTime":J
    .end local v186    # "launches":I
    :goto_1377
    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v103, v14

    move-object/from16 v7, v70

    move-object/from16 v4, v198

    goto :goto_1305

    .end local v14    # "batteryUptime":J
    .end local v70    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v198    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .restart local v4    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .restart local v7    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .local v103, "batteryUptime":J
    :cond_1380
    move-object/from16 v198, v4

    move-object/from16 v70, v7

    move-wide/from16 v14, v103

    const/16 v16, 0x0

    const/16 v63, 0x1

    const-wide/16 v64, 0x3e8

    const/16 v67, 0x3

    const/16 v68, 0x4

    const/16 v69, 0x5

    const/16 v204, 0x2

    .line 4981
    .end local v1    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v4    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v5    # "isvc":I
    .end local v6    # "wakeups":I
    .end local v7    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v103    # "batteryUptime":J
    .restart local v14    # "batteryUptime":J
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v5, v202

    goto/16 :goto_12af

    .end local v14    # "batteryUptime":J
    .restart local v103    # "batteryUptime":J
    :cond_139a
    move-object/from16 v202, v5

    move-wide/from16 v14, v103

    const/16 v16, 0x0

    const/16 v63, 0x1

    const-wide/16 v64, 0x3e8

    const/16 v67, 0x3

    const/16 v68, 0x4

    const/16 v69, 0x5

    const/16 v204, 0x2

    .line 4606
    .end local v0    # "uid":I
    .end local v2    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v3    # "ipkg":I
    .end local v11    # "u":Landroid/os/BatteryStats$Uid;
    .end local v62    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v74    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v103    # "batteryUptime":J
    .end local v105    # "NSE":I
    .end local v106    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v119    # "stateTimes":[Ljava/lang/Object;
    .end local v120    # "mobileActiveCount":I
    .end local v122    # "wifiScanCount":I
    .end local v123    # "jobStopReasonCodes":[I
    .end local v124    # "mobileBytesRx":J
    .end local v126    # "mobileBytesTx":J
    .end local v128    # "wifiBytesRx":J
    .end local v130    # "wifiBytesTx":J
    .end local v132    # "mobilePacketsRx":J
    .end local v134    # "mobilePacketsTx":J
    .end local v136    # "mobileActiveTime":J
    .end local v138    # "mobileWakeup":J
    .end local v140    # "wifiPacketsRx":J
    .end local v142    # "wifiPacketsTx":J
    .end local v144    # "wifiWakeup":J
    .end local v146    # "btBytesRx":J
    .end local v148    # "btBytesTx":J
    .end local v150    # "mobileBytesBgRx":J
    .end local v152    # "mobileBytesBgTx":J
    .end local v154    # "wifiBytesBgRx":J
    .end local v156    # "wifiBytesBgTx":J
    .end local v158    # "mobilePacketsBgRx":J
    .end local v160    # "mobilePacketsBgTx":J
    .end local v162    # "wifiPacketsBgRx":J
    .end local v164    # "wifiPacketsBgTx":J
    .end local v168    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v171    # "jobCompletionArgs":[Ljava/lang/Object;
    .end local v172    # "fullWifiLockOnTime":J
    .end local v174    # "wifiScanTime":J
    .end local v176    # "wifiScanCountBg":I
    .end local v177    # "wifiScanActualTimeMs":J
    .end local v179    # "wifiScanActualTimeMsBg":J
    .end local v181    # "uidWifiRunningTime":J
    .end local v184    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v185    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v187    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v190    # "userCpuTimeUs":J
    .end local v192    # "systemCpuTimeUs":J
    .end local v194    # "totalStateTime":J
    .end local v207    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v14    # "batteryUptime":J
    :goto_13ac
    add-int/lit8 v3, v169, 0x1

    move-object/from16 v7, p1

    move/from16 v11, p4

    move-object v0, v8

    move-wide/from16 v103, v14

    move-object/from16 v119, v82

    move-object/from16 v8, v114

    move-object/from16 v6, v121

    move-object/from16 v15, v167

    move-object/from16 v5, v170

    move-wide/from16 v105, v196

    move-wide/from16 v121, v200

    move-object/from16 v14, v202

    move-object/from16 v13, v206

    const/16 v4, 0x2c

    move/from16 v82, v60

    .end local v169    # "iu":I
    .local v3, "iu":I
    goto/16 :goto_86d

    .line 5009
    .end local v3    # "iu":I
    .end local v14    # "batteryUptime":J
    .end local v60    # "NU":I
    .end local v82    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .end local v114    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v167    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v170    # "stats":Landroid/os/BatteryUsageStats;
    .end local v196    # "rawRealtimeMs":J
    .end local v200    # "rawRealtime":J
    .end local v206    # "sb":Ljava/lang/StringBuilder;
    .local v0, "cpuFreqs":[J
    .local v2, "NU":I
    .local v5, "stats":Landroid/os/BatteryUsageStats;
    .local v6, "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    .local v8, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v13, "sb":Ljava/lang/StringBuilder;
    .local v15, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v103    # "batteryUptime":J
    .local v105, "rawRealtimeMs":J
    .local v119, "deviceConsumer":Landroid/os/BatteryConsumer;
    .local v121, "rawRealtime":J
    :cond_13cd
    return-void
.end method

.method public greylist-max-o dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p4, "flags"    # I
    .param p5, "histStart"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ)V"
        }
    .end annotation

    .line 7673
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 7675
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 7676
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v0, v10

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v11, 0x1

    aput-object v1, v0, v11

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x2

    aput-object v1, v0, v12

    .line 7677
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 7675
    const-string/jumbo v13, "i"

    const-string/jumbo v1, "vers"

    invoke-static {v8, v10, v13, v1, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7679
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryBaseTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v14, v0, v2

    .line 7681
    .local v14, "now":J
    and-int/lit8 v0, p4, 0x18

    if-eqz v0, :cond_b2

    .line 7682
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 7684
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4c
    :try_start_4c
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v1

    if-ge v0, v1, :cond_9d

    .line 7685
    const/16 v1, 0x9

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x2c

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 7686
    const-string/jumbo v2, "hsp"

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 7687
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7688
    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7689
    invoke-virtual {v7, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7690
    const-string v1, ",\""

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7691
    invoke-virtual {v7, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_7d
    .catchall {:try_start_4c .. :try_end_7d} :catchall_ad

    .line 7692
    .local v1, "str":Ljava/lang/String;
    const-string v2, "\""

    if-eqz v1, :cond_94

    .line 7693
    :try_start_81
    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 7694
    const-string v3, "\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 7695
    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7697
    :cond_94
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7698
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 7684
    .end local v1    # "str":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 7700
    .end local v0    # "i":I
    :cond_9d
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-wide/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    :try_end_a9
    .catchall {:try_start_81 .. :try_end_a9} :catchall_ad

    .line 7702
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 7703
    goto :goto_b2

    .line 7702
    :catchall_ad
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 7703
    throw v0

    .line 7707
    :cond_b2
    :goto_b2
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_b7

    .line 7708
    return-void

    .line 7711
    :cond_b7
    if-eqz v9, :cond_166

    .line 7712
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7713
    .local v0, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_bf
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_fe

    .line 7714
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 7715
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 7716
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 7715
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 7717
    .local v3, "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    if-nez v3, :cond_f2

    .line 7718
    new-instance v4, Landroid/util/Pair;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/util/MutableBoolean;

    invoke-direct {v6, v10}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    .line 7719
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7721
    :cond_f2
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7713
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_bf

    .line 7723
    .end local v1    # "i":I
    :cond_fe
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v1

    .line 7724
    .local v1, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 7725
    .local v2, "NU":I
    new-array v3, v12, [Ljava/lang/String;

    .line 7726
    .local v3, "lineArgs":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_109
    if-ge v4, v2, :cond_164

    .line 7727
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 7728
    .local v5, "uid":I
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 7729
    .local v6, "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    if-eqz v6, :cond_15c

    iget-object v12, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroid/util/MutableBoolean;

    iget-boolean v12, v12, Landroid/util/MutableBoolean;->value:Z

    if-nez v12, :cond_15c

    .line 7730
    iget-object v12, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroid/util/MutableBoolean;

    iput-boolean v11, v12, Landroid/util/MutableBoolean;->value:Z

    .line 7731
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_12a
    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v12, v11, :cond_159

    .line 7732
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    .line 7733
    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v11, v3, v16

    .line 7734
    move-object v11, v3

    check-cast v11, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local v0    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    .local v17, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    const-string/jumbo v0, "uid"

    invoke-static {v8, v10, v13, v0, v11}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7731
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v17

    const/4 v11, 0x1

    goto :goto_12a

    .end local v17    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    .restart local v0    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    :cond_159
    move-object/from16 v17, v0

    .end local v0    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    .restart local v17    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    goto :goto_15e

    .line 7729
    .end local v12    # "j":I
    .end local v17    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    .restart local v0    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    :cond_15c
    move-object/from16 v17, v0

    .line 7726
    .end local v0    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    .end local v5    # "uid":I
    .end local v6    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    .restart local v17    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    :goto_15e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v17

    const/4 v11, 0x1

    goto :goto_109

    .end local v17    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    .restart local v0    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    :cond_164
    move-object/from16 v17, v0

    .line 7740
    .end local v0    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    .end local v1    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v2    # "NU":I
    .end local v3    # "lineArgs":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_166
    and-int/lit8 v0, p4, 0x4

    if-nez v0, :cond_1d1

    .line 7741
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v0

    const-string v1, ""

    const-string v2, "dsd"

    const/4 v3, 0x1

    invoke-static {v8, v1, v2, v0, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    .line 7742
    new-array v0, v3, [Ljava/lang/String;

    .line 7743
    .local v0, "lineArgs":[Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v7, v2, v3}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v2

    .line 7744
    .local v2, "timeRemaining":J
    const-wide/16 v11, 0x0

    cmp-long v6, v2, v11

    if-ltz v6, :cond_197

    .line 7745
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    .line 7746
    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    const-string v11, "dtr"

    invoke-static {v8, v10, v13, v11, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7749
    :cond_197
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v6

    const-string v11, "csd"

    const/4 v12, 0x1

    invoke-static {v8, v1, v11, v6, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    .line 7750
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    mul-long v4, v4, v18

    invoke-virtual {v7, v4, v5}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v18

    .line 7751
    .end local v2    # "timeRemaining":J
    .local v18, "timeRemaining":J
    const-wide/16 v1, 0x0

    cmp-long v1, v18, v1

    if-ltz v1, :cond_1bf

    .line 7752
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 7753
    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    const-string v2, "ctr"

    invoke-static {v8, v10, v13, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7756
    :cond_1bf
    const/4 v4, 0x0

    const/4 v5, -0x1

    and-int/lit8 v1, p4, 0x40

    if-eqz v1, :cond_1c7

    move v6, v12

    goto :goto_1c8

    :cond_1c7
    move v6, v10

    :goto_1c8
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    .line 7759
    .end local v0    # "lineArgs":[Ljava/lang/String;
    .end local v18    # "timeRemaining":J
    :cond_1d1
    return-void
.end method

.method public greylist-max-o dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .registers 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .param p4, "reqUid"    # I
    .param p5, "histStart"    # J

    .line 7497
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 7499
    and-int/lit8 v0, p3, 0xe

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    move/from16 v16, v0

    .line 7502
    .local v16, "filtering":Z
    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_16

    if-nez v16, :cond_78

    .line 7503
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    move-result v0

    int-to-long v7, v0

    .line 7504
    .local v7, "historyTotalSize":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    move-result v0

    int-to-long v9, v0

    .line 7505
    .local v9, "historyUsedSize":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 7507
    :try_start_26
    const-string v0, "Battery History ("

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7508
    const-wide/16 v0, 0x64

    mul-long/2addr v0, v9

    div-long/2addr v0, v7

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 7509
    const-string v0, "% used, "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7510
    invoke-direct {v14, v15, v9, v10}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 7511
    const-string v0, " used of "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7512
    invoke-direct {v14, v15, v7, v8}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 7513
    const-string v0, ", "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7514
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7515
    const-string v0, " strings using "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7516
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolBytes()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {v14, v15, v0, v1}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 7517
    const-string v0, "):"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7518
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V

    .line 7519
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_6f
    .catchall {:try_start_26 .. :try_end_6f} :catchall_73

    .line 7521
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 7522
    goto :goto_78

    .line 7521
    :catchall_73
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 7522
    throw v0

    .line 7526
    .end local v7    # "historyTotalSize":J
    .end local v9    # "historyUsedSize":J
    :cond_78
    :goto_78
    if-eqz v16, :cond_7f

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_7f

    .line 7527
    return-void

    .line 7530
    :cond_7f
    if-nez v16, :cond_e4

    .line 7531
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    .line 7532
    .local v0, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 7533
    .local v1, "NU":I
    const/4 v2, 0x0

    .line 7534
    .local v2, "didPid":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 7535
    .local v3, "nowRealtime":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8f
    if-ge v5, v1, :cond_df

    .line 7536
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid;

    .line 7537
    .local v6, "uid":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v9

    .line 7538
    .local v9, "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    if-eqz v9, :cond_dc

    .line 7539
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_9e
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_dc

    .line 7540
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid$Pid;

    .line 7541
    .local v11, "pid":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v2, :cond_b2

    .line 7542
    const-string v13, "Per-PID Stats:"

    invoke-virtual {v15, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7543
    const/4 v2, 0x1

    .line 7545
    :cond_b2
    iget-wide v7, v11, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget v13, v11, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v13, :cond_bd

    .line 7546
    iget-wide v12, v11, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v12, v3, v12

    goto :goto_bf

    :cond_bd
    const-wide/16 v12, 0x0

    :goto_bf
    add-long/2addr v7, v12

    .line 7547
    .local v7, "time":J
    const-string v12, "  PID "

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 7548
    const-string v12, " wake time: "

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7549
    invoke-static {v7, v8, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 7550
    const-string v12, ""

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7539
    .end local v7    # "time":J
    .end local v11    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    add-int/lit8 v10, v10, 0x1

    goto :goto_9e

    .line 7535
    .end local v6    # "uid":Landroid/os/BatteryStats$Uid;
    .end local v9    # "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    .end local v10    # "j":I
    :cond_dc
    add-int/lit8 v5, v5, 0x1

    goto :goto_8f

    .line 7554
    .end local v5    # "i":I
    :cond_df
    if-eqz v2, :cond_e4

    .line 7555
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 7559
    .end local v0    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v1    # "NU":I
    .end local v2    # "didPid":Z
    .end local v3    # "nowRealtime":J
    :cond_e4
    if-eqz v16, :cond_ee

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_eb

    goto :goto_ee

    :cond_eb
    const/4 v12, 0x0

    goto/16 :goto_17d

    .line 7560
    :cond_ee
    :goto_ee
    nop

    .line 7561
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v0

    .line 7560
    const-string v7, "  "

    const-string v1, "Discharge step durations:"

    const/4 v2, 0x0

    invoke-static {v15, v7, v1, v0, v2}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    const-wide/16 v8, 0x3e8

    if-eqz v0, :cond_14f

    .line 7562
    nop

    .line 7563
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v8

    .line 7562
    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v10

    .line 7564
    .local v10, "timeRemaining":J
    const-wide/16 v0, 0x0

    cmp-long v2, v10, v0

    if-ltz v2, :cond_11d

    .line 7565
    const-string v0, "  Estimated discharge time remaining: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7566
    div-long v0, v10, v8

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 7567
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 7569
    :cond_11d
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v0

    .line 7570
    .local v0, "steps":Landroid/os/BatteryStats$LevelStepTracker;
    const/4 v1, 0x0

    move v12, v1

    .local v12, "i":I
    :goto_123
    sget-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v2, v1

    if-ge v12, v2, :cond_14c

    .line 7571
    sget-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v3, v2, v12

    aget v1, v1, v12

    int-to-long v1, v1

    sget-object v4, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v4, v4, v12

    int-to-long v4, v4

    const/16 v25, 0x0

    .line 7572
    move-object/from16 v20, v0

    move-wide/from16 v21, v1

    move-wide/from16 v23, v4

    invoke-virtual/range {v20 .. v25}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v5

    .line 7571
    const-string v2, "  Estimated "

    const-string v4, " time: "

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 7570
    add-int/lit8 v12, v12, 0x1

    goto :goto_123

    .line 7575
    .end local v12    # "i":I
    :cond_14c
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 7577
    .end local v0    # "steps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v10    # "timeRemaining":J
    :cond_14f
    nop

    .line 7578
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v0

    .line 7577
    const-string v1, "Charge step durations:"

    const/4 v12, 0x0

    invoke-static {v15, v7, v1, v0, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 7579
    nop

    .line 7580
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v8

    .line 7579
    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v0

    .line 7581
    .local v0, "timeRemaining":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_17a

    .line 7582
    const-string v2, "  Estimated charge time remaining: "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7583
    div-long v2, v0, v8

    invoke-static {v2, v3, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 7584
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 7586
    :cond_17a
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 7589
    .end local v0    # "timeRemaining":J
    :cond_17d
    :goto_17d
    if-eqz v16, :cond_189

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_184

    goto :goto_189

    :cond_184
    move v1, v12

    const/16 v17, 0x1

    goto/16 :goto_333

    .line 7590
    :cond_189
    :goto_189
    const-string v0, "Daily stats:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7591
    const-string v0, "  Current start time: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7592
    nop

    .line 7593
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    move-result-wide v0

    .line 7592
    const-string/jumbo v13, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v13, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7593
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7592
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7594
    const-string v0, "  Next min deadline: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7595
    nop

    .line 7596
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    move-result-wide v0

    .line 7595
    invoke-static {v13, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7596
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7595
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7597
    const-string v0, "  Next max deadline: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7598
    nop

    .line 7599
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    move-result-wide v0

    .line 7598
    invoke-static {v13, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7599
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7598
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7600
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7601
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    new-array v11, v0, [I

    .line 7602
    .local v11, "outInt":[I
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v10

    .line 7603
    .local v10, "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v9

    .line 7604
    .local v9, "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    move-result-object v8

    .line 7605
    .local v8, "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    iget v1, v10, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const-string v7, "    "

    if-gtz v1, :cond_1ff

    iget v1, v9, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v1, :cond_1ff

    if-eqz v8, :cond_1f3

    goto :goto_1ff

    :cond_1f3
    move/from16 v17, v0

    move-object v0, v7

    move-object v3, v8

    move-object v4, v9

    move-object v1, v10

    move-object v2, v11

    move v5, v12

    move-object/from16 v26, v13

    goto/16 :goto_276

    .line 7606
    :cond_1ff
    :goto_1ff
    and-int/lit8 v1, p3, 0x4

    if-nez v1, :cond_23d

    if-nez v16, :cond_210

    move/from16 v17, v0

    move-object v0, v7

    move-object v3, v8

    move-object v4, v9

    move-object v1, v10

    move-object v2, v11

    move v5, v12

    move-object/from16 v26, v13

    goto :goto_247

    .line 7619
    :cond_210
    const-string v1, "  Current daily steps:"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7620
    const-string v3, "    "

    const-string v4, "Discharge"

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v5, v10

    move-object v0, v7

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 7622
    const-string v1, "    "

    const-string v2, "Charge"

    move-object/from16 v7, p0

    move-object v3, v8

    .end local v8    # "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    .local v3, "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    move-object/from16 v8, p2

    move-object v4, v9

    .end local v9    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .local v4, "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    move-object v9, v1

    move-object v1, v10

    .end local v10    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .local v1, "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    move-object v10, v2

    move-object v2, v11

    .end local v11    # "outInt":[I
    .local v2, "outInt":[I
    move-object v11, v4

    move v5, v12

    move-object v12, v6

    move-object/from16 v26, v13

    const/16 v17, 0x1

    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_276

    .line 7606
    .end local v1    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v2    # "outInt":[I
    .end local v3    # "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    .end local v4    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v8    # "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    .restart local v9    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v10    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v11    # "outInt":[I
    :cond_23d
    move/from16 v17, v0

    move-object v0, v7

    move-object v3, v8

    move-object v4, v9

    move-object v1, v10

    move-object v2, v11

    move v5, v12

    move-object/from16 v26, v13

    .line 7607
    .end local v8    # "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    .end local v9    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v10    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v11    # "outInt":[I
    .restart local v1    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v2    # "outInt":[I
    .restart local v3    # "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    .restart local v4    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    :goto_247
    const-string v7, "  Current daily discharge step durations:"

    invoke-static {v15, v0, v7, v1, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v7

    if-eqz v7, :cond_25d

    .line 7609
    const-string v9, "      "

    const-string v10, "Discharge"

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object v11, v1

    move-object v12, v6

    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 7612
    :cond_25d
    const-string v7, "  Current daily charge step durations:"

    invoke-static {v15, v0, v7, v4, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v7

    if-eqz v7, :cond_273

    .line 7614
    const-string v9, "      "

    const-string v10, "Charge"

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object v11, v4

    move-object v12, v6

    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 7617
    :cond_273
    invoke-direct {v14, v15, v0, v3}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 7627
    :goto_276
    const/4 v7, 0x0

    .line 7628
    .local v7, "curIndex":I
    :goto_277
    invoke-virtual {v14, v7}, Landroid/os/BatteryStats;->getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;

    move-result-object v8

    move-object v13, v8

    .local v13, "dit":Landroid/os/BatteryStats$DailyItem;
    if-eqz v8, :cond_32c

    .line 7629
    add-int/lit8 v18, v7, 0x1

    .line 7630
    .end local v7    # "curIndex":I
    .local v18, "curIndex":I
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_287

    .line 7631
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 7633
    :cond_287
    const-string v7, "  Daily from "

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7634
    iget-wide v7, v13, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    move-object/from16 v12, v26

    invoke-static {v12, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7635
    const-string v7, " to "

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7636
    iget-wide v7, v13, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v12, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7637
    const-string v7, ":"

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7638
    and-int/lit8 v7, p3, 0x4

    if-nez v7, :cond_2db

    if-nez v16, :cond_2bc

    move-object/from16 v19, v12

    move-object v5, v13

    goto :goto_2de

    .line 7651
    :cond_2bc
    iget-object v11, v13, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v9, "    "

    const-string v10, "Discharge"

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v19, v12

    move-object v12, v6

    move-object v5, v13

    .end local v13    # "dit":Landroid/os/BatteryStats$DailyItem;
    .local v5, "dit":Landroid/os/BatteryStats$DailyItem;
    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 7653
    iget-object v11, v5, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v9, "    "

    const-string v10, "Charge"

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    move-object/from16 v20, v1

    const/4 v1, 0x0

    goto :goto_323

    .line 7638
    .end local v5    # "dit":Landroid/os/BatteryStats$DailyItem;
    .restart local v13    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_2db
    move-object/from16 v19, v12

    move-object v5, v13

    .line 7639
    .end local v13    # "dit":Landroid/os/BatteryStats$DailyItem;
    .restart local v5    # "dit":Landroid/os/BatteryStats$DailyItem;
    :goto_2de
    iget-object v7, v5, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v13, "      "

    const-string v8, "    Discharge step durations:"

    const/4 v9, 0x0

    invoke-static {v15, v13, v8, v7, v9}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v7

    if-eqz v7, :cond_2fe

    .line 7641
    iget-object v11, v5, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v9, "        "

    const-string v10, "Discharge"

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object v12, v6

    move-object/from16 v20, v1

    move-object v1, v13

    .end local v1    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .local v20, "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_301

    .line 7639
    .end local v20    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v1    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    :cond_2fe
    move-object/from16 v20, v1

    move-object v1, v13

    .line 7644
    .end local v1    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v20    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    :goto_301
    iget-object v7, v5, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v8, "    Charge step durations:"

    const/4 v13, 0x0

    invoke-static {v15, v1, v8, v7, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v1

    if-eqz v1, :cond_31d

    .line 7646
    iget-object v11, v5, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v9, "        "

    const-string v10, "Charge"

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object v12, v6

    move v1, v13

    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_31e

    .line 7644
    :cond_31d
    move v1, v13

    .line 7649
    :goto_31e
    iget-object v7, v5, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-direct {v14, v15, v0, v7}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 7628
    .end local v5    # "dit":Landroid/os/BatteryStats$DailyItem;
    .end local v20    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v1    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    :goto_323
    move v5, v1

    move/from16 v7, v18

    move-object/from16 v26, v19

    move-object/from16 v1, v20

    .end local v1    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v20    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    goto/16 :goto_277

    .line 7657
    .end local v18    # "curIndex":I
    .end local v20    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v1    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v7    # "curIndex":I
    .restart local v13    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_32c
    move-object/from16 v20, v1

    move v1, v5

    move-object v5, v13

    .end local v1    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v13    # "dit":Landroid/os/BatteryStats$DailyItem;
    .restart local v5    # "dit":Landroid/os/BatteryStats$DailyItem;
    .restart local v20    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 7659
    .end local v2    # "outInt":[I
    .end local v3    # "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    .end local v4    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v5    # "dit":Landroid/os/BatteryStats$DailyItem;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "curIndex":I
    .end local v20    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    :goto_333
    if-eqz v16, :cond_339

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_37f

    .line 7660
    :cond_339
    const-string v0, "Statistics since last charge:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  System starts: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", currently on battery: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7662
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7661
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7663
    const/4 v5, 0x0

    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_36e

    move/from16 v7, v17

    goto :goto_36f

    :cond_36e
    move v7, v1

    :goto_36f
    const-string v4, ""

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    .line 7665
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 7667
    :cond_37f
    return-void
.end method

.method public final greylist-max-o dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "reqUid"    # I

    .line 5037
    invoke-static {p1}, Landroid/os/BatteryStats;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    .line 5038
    return-void
.end method

.method public final greylist-max-o dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V
    .registers 242
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "reqUid"    # I
    .param p6, "wifiOnly"    # Z

    .line 5044
    move-object/from16 v7, p0

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move/from16 v13, p4

    move/from16 v11, p5

    if-eqz v13, :cond_29

    .line 5045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: BatteryStats.dump called for which type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but only STATS_SINCE_CHARGED is supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5047
    return-void

    .line 5050
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v16, 0x3e8

    mul-long v9, v0, v16

    .line 5051
    .local v9, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long v5, v0, v16

    .line 5052
    .local v5, "rawRealtime":J
    const-wide/16 v18, 0x1f4

    add-long v0, v5, v18

    div-long v3, v0, v16

    .line 5053
    .local v3, "rawRealtimeMs":J
    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v1

    .line 5055
    .local v1, "batteryUptime":J
    move-wide/from16 v20, v3

    .end local v3    # "rawRealtimeMs":J
    .local v20, "rawRealtimeMs":J
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v3

    .line 5056
    .local v3, "whichBatteryUptime":J
    move-wide/from16 v22, v1

    .end local v1    # "batteryUptime":J
    .local v22, "batteryUptime":J
    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v1

    .line 5057
    .local v1, "whichBatteryRealtime":J
    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v11

    .line 5058
    .local v11, "totalRealtime":J
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v24

    .line 5059
    .local v24, "totalUptime":J
    move-wide/from16 v26, v3

    .end local v3    # "whichBatteryUptime":J
    .local v26, "whichBatteryUptime":J
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v3

    .line 5060
    .local v3, "whichBatteryScreenOffUptime":J
    move-wide/from16 v28, v9

    .end local v9    # "rawUptime":J
    .local v28, "rawUptime":J
    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v9

    .line 5062
    .local v9, "whichBatteryScreenOffRealtime":J
    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v30

    .line 5063
    .local v30, "batteryTimeRemaining":J
    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v32

    .line 5064
    .local v32, "chargeTimeRemaining":J
    move-wide/from16 v34, v3

    .end local v3    # "whichBatteryScreenOffUptime":J
    .local v34, "whichBatteryScreenOffUptime":J
    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v3

    .line 5066
    .local v3, "screenDozeTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v8, 0x80

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v0

    .line 5068
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    .line 5069
    .local v0, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    move-wide/from16 v36, v5

    .end local v5    # "rawRealtime":J
    .local v36, "rawRealtime":J
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 5071
    .local v5, "NU":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v6

    .line 5072
    .local v6, "estimatedBatteryCapacity":I
    move-object/from16 v38, v0

    .end local v0    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v38, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    const-string v0, " mAh"

    move/from16 v39, v5

    .end local v5    # "NU":I
    .local v39, "NU":I
    const/4 v5, 0x0

    if-lez v6, :cond_ae

    .line 5073
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5074
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5075
    const-string v5, "  Estimated battery capacity: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5076
    move-wide/from16 v41, v3

    .end local v3    # "screenDozeTime":J
    .local v41, "screenDozeTime":J
    int-to-double v3, v6

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5077
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5078
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b0

    .line 5072
    .end local v41    # "screenDozeTime":J
    .restart local v3    # "screenDozeTime":J
    :cond_ae
    move-wide/from16 v41, v3

    .line 5081
    .end local v3    # "screenDozeTime":J
    .restart local v41    # "screenDozeTime":J
    :goto_b0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLearnedBatteryCapacity()I

    move-result v5

    .line 5082
    .local v5, "lastLearnedBatteryCapacity":I
    if-lez v5, :cond_d6

    .line 5083
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5084
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5085
    const-string v3, "  Last learned battery capacity: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5086
    div-int/lit16 v3, v5, 0x3e8

    int-to-double v3, v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5087
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5088
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5090
    :cond_d6
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v4

    .line 5091
    .local v4, "minLearnedBatteryCapacity":I
    if-lez v4, :cond_ff

    .line 5092
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5093
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5094
    const-string v3, "  Min learned battery capacity: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5095
    div-int/lit16 v3, v4, 0x3e8

    move/from16 v43, v4

    .end local v4    # "minLearnedBatteryCapacity":I
    .local v43, "minLearnedBatteryCapacity":I
    int-to-double v3, v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5096
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5097
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_101

    .line 5091
    .end local v43    # "minLearnedBatteryCapacity":I
    .restart local v4    # "minLearnedBatteryCapacity":I
    :cond_ff
    move/from16 v43, v4

    .line 5099
    .end local v4    # "minLearnedBatteryCapacity":I
    .restart local v43    # "minLearnedBatteryCapacity":I
    :goto_101
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v4

    .line 5100
    .local v4, "maxLearnedBatteryCapacity":I
    if-lez v4, :cond_12a

    .line 5101
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5102
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5103
    const-string v3, "  Max learned battery capacity: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5104
    div-int/lit16 v3, v4, 0x3e8

    move/from16 v44, v4

    .end local v4    # "maxLearnedBatteryCapacity":I
    .local v44, "maxLearnedBatteryCapacity":I
    int-to-double v3, v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5105
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5106
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12c

    .line 5100
    .end local v44    # "maxLearnedBatteryCapacity":I
    .restart local v4    # "maxLearnedBatteryCapacity":I
    :cond_12a
    move/from16 v44, v4

    .line 5109
    .end local v4    # "maxLearnedBatteryCapacity":I
    .restart local v44    # "maxLearnedBatteryCapacity":I
    :goto_12c
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5110
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5111
    const-string v3, "  Time on battery: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5112
    div-long v3, v1, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v4, "("

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5113
    invoke-virtual {v7, v1, v2, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5114
    const-string v3, ") realtime, "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5115
    move/from16 v46, v5

    move/from16 v45, v6

    .end local v5    # "lastLearnedBatteryCapacity":I
    .end local v6    # "estimatedBatteryCapacity":I
    .local v45, "estimatedBatteryCapacity":I
    .local v46, "lastLearnedBatteryCapacity":I
    div-long v5, v26, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5116
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v26

    .end local v26    # "whichBatteryUptime":J
    .local v5, "whichBatteryUptime":J
    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5117
    const-string v3, ") uptime"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5118
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5120
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5121
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5122
    const-string v3, "  Time on battery screen off: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5123
    nop

    .end local v5    # "whichBatteryUptime":J
    .restart local v26    # "whichBatteryUptime":J
    div-long v5, v9, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5124
    invoke-virtual {v7, v9, v10, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5125
    const-string v3, ") realtime, "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5126
    div-long v5, v34, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5127
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5128
    move-wide/from16 v5, v34

    .end local v34    # "whichBatteryScreenOffUptime":J
    .local v5, "whichBatteryScreenOffUptime":J
    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5129
    const-string v3, ") uptime"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5130
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5132
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5133
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5134
    const-string v3, "  Time on battery screen doze: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5135
    nop

    .end local v5    # "whichBatteryScreenOffUptime":J
    .restart local v34    # "whichBatteryScreenOffUptime":J
    div-long v5, v41, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5136
    move-wide/from16 v5, v41

    .end local v41    # "screenDozeTime":J
    .local v5, "screenDozeTime":J
    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5137
    const-string v3, ")"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5138
    nop

    .end local v5    # "screenDozeTime":J
    .restart local v41    # "screenDozeTime":J
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5140
    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5141
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5142
    const-string v5, "  Total run time: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5143
    div-long v5, v11, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5144
    const-string/jumbo v5, "realtime, "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5145
    div-long v5, v24, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5146
    const-string/jumbo v5, "uptime"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5147
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5148
    const-wide/16 v5, 0x0

    cmp-long v47, v30, v5

    if-ltz v47, :cond_21f

    .line 5149
    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5150
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5151
    const-string v5, "  Battery time remaining: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5152
    div-long v5, v30, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5153
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5155
    :cond_21f
    const-wide/16 v5, 0x0

    cmp-long v49, v32, v5

    if-ltz v49, :cond_23d

    .line 5156
    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5157
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5158
    const-string v5, "  Charge time remaining: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5159
    div-long v5, v32, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5160
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5163
    :cond_23d
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v5

    .line 5164
    .local v5, "dischargeCount":J
    const-wide/16 v47, 0x0

    cmp-long v49, v5, v47

    const-wide v50, 0x408f400000000000L    # 1000.0

    if-ltz v49, :cond_26f

    .line 5165
    move-wide/from16 v52, v9

    const/4 v9, 0x0

    .end local v9    # "whichBatteryScreenOffRealtime":J
    .local v52, "whichBatteryScreenOffRealtime":J
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5166
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5167
    const-string v9, "  Discharge: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5168
    long-to-double v9, v5

    div-double v9, v9, v50

    invoke-static {v9, v10}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5169
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5170
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_271

    .line 5164
    .end local v52    # "whichBatteryScreenOffRealtime":J
    .restart local v9    # "whichBatteryScreenOffRealtime":J
    :cond_26f
    move-wide/from16 v52, v9

    .line 5173
    .end local v9    # "whichBatteryScreenOffRealtime":J
    .restart local v52    # "whichBatteryScreenOffRealtime":J
    :goto_271
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v9

    .line 5174
    .local v9, "dischargeScreenOffCount":J
    const-wide/16 v47, 0x0

    cmp-long v49, v9, v47

    if-ltz v49, :cond_29e

    .line 5175
    move-wide/from16 v54, v11

    const/4 v11, 0x0

    .end local v11    # "totalRealtime":J
    .local v54, "totalRealtime":J
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5176
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5177
    const-string v11, "  Screen off discharge: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5178
    long-to-double v11, v9

    div-double v11, v11, v50

    invoke-static {v11, v12}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5179
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5180
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a0

    .line 5174
    .end local v54    # "totalRealtime":J
    .restart local v11    # "totalRealtime":J
    :cond_29e
    move-wide/from16 v54, v11

    .line 5183
    .end local v11    # "totalRealtime":J
    .restart local v54    # "totalRealtime":J
    :goto_2a0
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v11

    .line 5184
    .local v11, "dischargeScreenDozeCount":J
    const-wide/16 v47, 0x0

    cmp-long v49, v11, v47

    if-ltz v49, :cond_2cf

    .line 5185
    move-object/from16 v49, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5186
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5187
    const-string v3, "  Screen doze discharge: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5188
    move-wide/from16 v56, v1

    .end local v1    # "whichBatteryRealtime":J
    .local v56, "whichBatteryRealtime":J
    long-to-double v1, v11

    div-double v1, v1, v50

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5189
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5190
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2d3

    .line 5184
    .end local v56    # "whichBatteryRealtime":J
    .restart local v1    # "whichBatteryRealtime":J
    :cond_2cf
    move-wide/from16 v56, v1

    move-object/from16 v49, v3

    .line 5193
    .end local v1    # "whichBatteryRealtime":J
    .restart local v56    # "whichBatteryRealtime":J
    :goto_2d3
    sub-long v2, v5, v9

    .line 5194
    .local v2, "dischargeScreenOnCount":J
    const-wide/16 v47, 0x0

    cmp-long v1, v2, v47

    if-ltz v1, :cond_2fe

    .line 5195
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5196
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5197
    const-string v1, "  Screen on discharge: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5198
    move-wide/from16 v58, v5

    .end local v5    # "dischargeCount":J
    .local v58, "dischargeCount":J
    long-to-double v5, v2

    div-double v5, v5, v50

    invoke-static {v5, v6}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5199
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5200
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_300

    .line 5194
    .end local v58    # "dischargeCount":J
    .restart local v5    # "dischargeCount":J
    :cond_2fe
    move-wide/from16 v58, v5

    .line 5203
    .end local v5    # "dischargeCount":J
    .restart local v58    # "dischargeCount":J
    :goto_300
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v5

    .line 5204
    .local v5, "dischargeLightDozeCount":J
    const-wide/16 v47, 0x0

    cmp-long v1, v5, v47

    if-ltz v1, :cond_32d

    .line 5205
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5206
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5207
    const-string v1, "  Device light doze discharge: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5208
    move-wide/from16 v60, v2

    .end local v2    # "dischargeScreenOnCount":J
    .local v60, "dischargeScreenOnCount":J
    long-to-double v1, v5

    div-double v1, v1, v50

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5209
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5210
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32f

    .line 5204
    .end local v60    # "dischargeScreenOnCount":J
    .restart local v2    # "dischargeScreenOnCount":J
    :cond_32d
    move-wide/from16 v60, v2

    .line 5213
    .end local v2    # "dischargeScreenOnCount":J
    .restart local v60    # "dischargeScreenOnCount":J
    :goto_32f
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v2

    .line 5214
    .local v2, "dischargeDeepDozeCount":J
    const-wide/16 v47, 0x0

    cmp-long v1, v2, v47

    if-ltz v1, :cond_35c

    .line 5215
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5216
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5217
    const-string v1, "  Device deep doze discharge: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5218
    move-wide/from16 v62, v5

    .end local v5    # "dischargeLightDozeCount":J
    .local v62, "dischargeLightDozeCount":J
    long-to-double v5, v2

    div-double v5, v5, v50

    invoke-static {v5, v6}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5219
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5220
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_35e

    .line 5214
    .end local v62    # "dischargeLightDozeCount":J
    .restart local v5    # "dischargeLightDozeCount":J
    :cond_35c
    move-wide/from16 v62, v5

    .line 5223
    .end local v5    # "dischargeLightDozeCount":J
    .restart local v62    # "dischargeLightDozeCount":J
    :goto_35e
    const-string v0, "  Start clock time: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5224
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v0

    const-string/jumbo v5, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v5, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5226
    move-wide/from16 v5, v36

    .end local v36    # "rawRealtime":J
    .local v5, "rawRealtime":J
    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v0

    .line 5227
    .local v0, "screenOnTime":J
    move-wide/from16 v36, v11

    .end local v11    # "dischargeScreenDozeCount":J
    .local v36, "dischargeScreenDozeCount":J
    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v11

    .line 5228
    .local v11, "interactiveTime":J
    move-wide/from16 v50, v9

    .end local v9    # "dischargeScreenOffCount":J
    .local v50, "dischargeScreenOffCount":J
    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v9

    .line 5229
    .local v9, "powerSaveModeEnabledTime":J
    move-wide/from16 v64, v2

    .end local v2    # "dischargeDeepDozeCount":J
    .local v64, "dischargeDeepDozeCount":J
    const/4 v3, 0x1

    move-wide/from16 v66, v9

    .end local v9    # "powerSaveModeEnabledTime":J
    .local v66, "powerSaveModeEnabledTime":J
    invoke-virtual {v7, v3, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v9

    .line 5231
    .local v9, "deviceIdleModeLightTime":J
    const/4 v2, 0x2

    move-wide/from16 v68, v9

    .end local v9    # "deviceIdleModeLightTime":J
    .local v68, "deviceIdleModeLightTime":J
    invoke-virtual {v7, v2, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v9

    .line 5233
    .local v9, "deviceIdleModeFullTime":J
    move-wide/from16 v70, v9

    .end local v9    # "deviceIdleModeFullTime":J
    .local v70, "deviceIdleModeFullTime":J
    invoke-virtual {v7, v3, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v9

    .line 5235
    .local v9, "deviceLightIdlingTime":J
    move-object/from16 v72, v4

    invoke-virtual {v7, v2, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v3

    .line 5237
    .local v3, "deviceIdlingTime":J
    move-wide/from16 v75, v3

    .end local v3    # "deviceIdlingTime":J
    .local v75, "deviceIdlingTime":J
    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v2

    .line 5238
    .local v2, "phoneOnTime":J
    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v77

    .line 5239
    .local v77, "wifiRunningTime":J
    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v79

    .line 5240
    .local v79, "wifiOnTime":J
    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5241
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5242
    const-string v4, "  Screen on: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v81, v2

    .end local v2    # "phoneOnTime":J
    .local v81, "phoneOnTime":J
    div-long v2, v0, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5243
    move-object/from16 v4, v72

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v56

    move-wide/from16 v56, v9

    .end local v9    # "deviceLightIdlingTime":J
    .local v2, "whichBatteryRealtime":J
    .local v56, "deviceLightIdlingTime":J
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5244
    const-string v10, ") "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5245
    const-string/jumbo v9, "x, Interactive: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v72, v10

    div-long v9, v11, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5246
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5247
    move-object/from16 v9, v49

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5248
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5249
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5250
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5251
    const-string v10, "  Screen brightnesses:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5252
    const/4 v10, 0x0

    .line 5255
    .local v10, "didOne":Z
    const/16 v49, 0x0

    move-wide/from16 v83, v11

    move/from16 v11, v49

    .local v11, "i":I
    .local v83, "interactiveTime":J
    :goto_416
    const/4 v12, 0x5

    move-wide/from16 v85, v2

    .end local v2    # "whichBatteryRealtime":J
    .local v85, "whichBatteryRealtime":J
    const-string v2, " "

    if-ge v11, v12, :cond_45d

    .line 5256
    move-object/from16 v49, v9

    move v3, v10

    .end local v10    # "didOne":Z
    .local v3, "didOne":Z
    invoke-virtual {v7, v11, v5, v6, v13}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v9

    .line 5257
    .local v9, "time":J
    const-wide/16 v47, 0x0

    cmp-long v12, v9, v47

    if-nez v12, :cond_42e

    .line 5258
    move v10, v3

    move-object/from16 v2, v49

    goto :goto_457

    .line 5260
    :cond_42e
    const-string v12, "\n    "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5261
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5262
    const/4 v3, 0x1

    .line 5264
    sget-object v12, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES_OLD:[Ljava/lang/String;

    aget-object v12, v12, v11

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5265
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5266
    move v12, v3

    .end local v3    # "didOne":Z
    .local v12, "didOne":Z
    div-long v2, v9, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5267
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5268
    invoke-virtual {v7, v9, v10, v0, v1}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5269
    move-object/from16 v2, v49

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v12

    .line 5255
    .end local v9    # "time":J
    .end local v12    # "didOne":Z
    .restart local v10    # "didOne":Z
    :goto_457
    add-int/lit8 v11, v11, 0x1

    move-object v9, v2

    move-wide/from16 v2, v85

    goto :goto_416

    :cond_45d
    move v3, v10

    .line 5272
    .end local v10    # "didOne":Z
    .end local v11    # "i":I
    .restart local v3    # "didOne":Z
    const-string v10, " (no activity)"

    if-nez v3, :cond_465

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5273
    :cond_465
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5274
    const-wide/16 v11, 0x0

    cmp-long v49, v66, v11

    if-eqz v49, :cond_4a2

    .line 5275
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5276
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5277
    const-string v11, "  Power save mode enabled: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5278
    div-long v11, v66, v16

    invoke-static {v8, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5279
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5280
    move/from16 v49, v3

    move-wide/from16 v11, v85

    move-wide/from16 v225, v0

    move-wide/from16 v0, v66

    move-wide/from16 v66, v225

    .end local v3    # "didOne":Z
    .end local v85    # "whichBatteryRealtime":J
    .local v0, "powerSaveModeEnabledTime":J
    .local v11, "whichBatteryRealtime":J
    .local v49, "didOne":Z
    .local v66, "screenOnTime":J
    invoke-virtual {v7, v0, v1, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5281
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5282
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4ac

    .line 5274
    .end local v11    # "whichBatteryRealtime":J
    .end local v49    # "didOne":Z
    .local v0, "screenOnTime":J
    .restart local v3    # "didOne":Z
    .local v66, "powerSaveModeEnabledTime":J
    .restart local v85    # "whichBatteryRealtime":J
    :cond_4a2
    move/from16 v49, v3

    move-wide/from16 v11, v85

    move-wide/from16 v225, v0

    move-wide/from16 v0, v66

    move-wide/from16 v66, v225

    .line 5284
    .end local v3    # "didOne":Z
    .end local v85    # "whichBatteryRealtime":J
    .local v0, "powerSaveModeEnabledTime":J
    .restart local v11    # "whichBatteryRealtime":J
    .restart local v49    # "didOne":Z
    .local v66, "screenOnTime":J
    :goto_4ac
    const-wide/16 v47, 0x0

    cmp-long v3, v56, v47

    move-wide/from16 v85, v0

    .end local v0    # "powerSaveModeEnabledTime":J
    .local v85, "powerSaveModeEnabledTime":J
    const-string/jumbo v1, "x"

    if-eqz v3, :cond_4ef

    .line 5285
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5286
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5287
    const-string v0, "  Device light idling: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5288
    move-object v3, v9

    move-object/from16 v87, v10

    div-long v9, v56, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5289
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5290
    move-wide/from16 v9, v56

    .end local v56    # "deviceLightIdlingTime":J
    .local v9, "deviceLightIdlingTime":J
    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5291
    move-object/from16 v0, v72

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    .end local v9    # "deviceLightIdlingTime":J
    .restart local v56    # "deviceLightIdlingTime":J
    invoke-virtual {v7, v9, v13}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5292
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5293
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4f4

    .line 5284
    :cond_4ef
    move-object v3, v9

    move-object/from16 v87, v10

    move-object/from16 v0, v72

    .line 5295
    :goto_4f4
    const-wide/16 v9, 0x0

    cmp-long v72, v68, v9

    if-eqz v72, :cond_53d

    .line 5296
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5297
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5298
    const-string v9, "  Idle mode light time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5299
    div-long v9, v68, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5300
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5301
    move-wide/from16 v9, v68

    move-object/from16 v68, v3

    .end local v68    # "deviceIdleModeLightTime":J
    .local v9, "deviceIdleModeLightTime":J
    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5302
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5303
    move-wide/from16 v88, v9

    const/4 v3, 0x1

    .end local v9    # "deviceIdleModeLightTime":J
    .local v88, "deviceIdleModeLightTime":J
    invoke-virtual {v7, v3, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5304
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5305
    const-string v9, " -- longest "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5306
    invoke-virtual {v7, v3}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5307
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_541

    .line 5295
    .end local v88    # "deviceIdleModeLightTime":J
    .restart local v68    # "deviceIdleModeLightTime":J
    :cond_53d
    move-wide/from16 v88, v68

    move-object/from16 v68, v3

    .line 5309
    .end local v68    # "deviceIdleModeLightTime":J
    .restart local v88    # "deviceIdleModeLightTime":J
    :goto_541
    const-wide/16 v9, 0x0

    cmp-long v3, v75, v9

    if-eqz v3, :cond_579

    .line 5310
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5311
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5312
    const-string v3, "  Device full idling: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5313
    div-long v9, v75, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5314
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5315
    move-wide/from16 v9, v75

    .end local v75    # "deviceIdlingTime":J
    .local v9, "deviceIdlingTime":J
    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5316
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    .end local v9    # "deviceIdlingTime":J
    .restart local v75    # "deviceIdlingTime":J
    invoke-virtual {v7, v3, v13}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5317
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5318
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5320
    :cond_579
    const-wide/16 v9, 0x0

    cmp-long v3, v70, v9

    if-eqz v3, :cond_5bd

    .line 5321
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5322
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5323
    const-string v3, "  Idle mode full time: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5324
    div-long v9, v70, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5325
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5326
    move-wide/from16 v9, v70

    .end local v70    # "deviceIdleModeFullTime":J
    .local v9, "deviceIdleModeFullTime":J
    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5327
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5328
    const/4 v3, 0x2

    .end local v9    # "deviceIdleModeFullTime":J
    .restart local v70    # "deviceIdleModeFullTime":J
    invoke-virtual {v7, v3, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5329
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5330
    const-string v9, " -- longest "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5331
    invoke-virtual {v7, v3}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5332
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5334
    :cond_5bd
    const-wide/16 v9, 0x0

    cmp-long v3, v81, v9

    if-eqz v3, :cond_5ee

    .line 5335
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5336
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5337
    const-string v3, "  Active phone call: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, v81, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5338
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v81

    .end local v81    # "phoneOnTime":J
    .local v9, "phoneOnTime":J
    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5339
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getPhoneOnCount(I)I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f0

    .line 5334
    .end local v9    # "phoneOnTime":J
    .restart local v81    # "phoneOnTime":J
    :cond_5ee
    move-wide/from16 v9, v81

    .line 5341
    .end local v81    # "phoneOnTime":J
    .restart local v9    # "phoneOnTime":J
    :goto_5f0
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v3

    .line 5342
    .local v3, "connChanges":I
    if-eqz v3, :cond_604

    .line 5343
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5344
    move-object/from16 v69, v1

    const-string v1, "  Connectivity changes: "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_606

    .line 5342
    :cond_604
    move-object/from16 v69, v1

    .line 5348
    :goto_606
    const-wide/16 v81, 0x0

    .line 5349
    .local v81, "fullWakeLockTimeTotalMicros":J
    const-wide/16 v90, 0x0

    .line 5351
    .local v90, "partialWakeLockTimeTotalMicros":J
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5353
    .local v1, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    const/16 v72, 0x0

    move/from16 v92, v3

    move/from16 v3, v72

    .local v3, "iu":I
    .local v92, "connChanges":I
    :goto_615
    move-wide/from16 v93, v9

    move/from16 v9, v39

    .end local v39    # "NU":I
    .local v9, "NU":I
    .local v93, "phoneOnTime":J
    if-ge v3, v9, :cond_698

    .line 5354
    move-object/from16 v10, v38

    .end local v38    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v10, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/BatteryStats$Uid;

    .line 5356
    .local v38, "u":Landroid/os/BatteryStats$Uid;
    nop

    .line 5357
    move/from16 v39, v9

    .end local v9    # "NU":I
    .restart local v39    # "NU":I
    invoke-virtual/range {v38 .. v38}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v9

    .line 5358
    .local v9, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v72

    move-object/from16 v95, v10

    const/4 v10, 0x1

    .end local v10    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v95, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    add-int/lit8 v72, v72, -0x1

    move/from16 v10, v72

    .local v10, "iw":I
    :goto_635
    if-ltz v10, :cond_68a

    .line 5359
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v72

    move-object/from16 v96, v2

    move-object/from16 v2, v72

    check-cast v2, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 5361
    .local v2, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    move-object/from16 v72, v0

    move-wide/from16 v97, v11

    const/4 v0, 0x1

    .end local v11    # "whichBatteryRealtime":J
    .local v97, "whichBatteryRealtime":J
    invoke-virtual {v2, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v11

    .line 5362
    .local v11, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v11, :cond_652

    .line 5363
    invoke-virtual {v11, v5, v6, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v99

    add-long v81, v81, v99

    .line 5367
    :cond_652
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v12

    .line 5368
    .local v12, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v12, :cond_681

    .line 5369
    invoke-virtual {v12, v5, v6, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v105

    .line 5371
    .local v105, "totalTimeMicros":J
    const-wide/16 v47, 0x0

    cmp-long v0, v105, v47

    if-lez v0, :cond_681

    .line 5372
    if-gez p5, :cond_67f

    .line 5376
    new-instance v0, Landroid/os/BatteryStats$TimerEntry;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v99

    move-object/from16 v100, v99

    check-cast v100, Ljava/lang/String;

    invoke-virtual/range {v38 .. v38}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v101

    move-object/from16 v99, v0

    move-object/from16 v102, v12

    move-wide/from16 v103, v105

    invoke-direct/range {v99 .. v104}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5379
    :cond_67f
    add-long v90, v90, v105

    .line 5358
    .end local v2    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v11    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v12    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v105    # "totalTimeMicros":J
    :cond_681
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, v72

    move-object/from16 v2, v96

    move-wide/from16 v11, v97

    goto :goto_635

    .end local v97    # "whichBatteryRealtime":J
    .local v11, "whichBatteryRealtime":J
    :cond_68a
    move-object/from16 v72, v0

    move-object/from16 v96, v2

    move-wide/from16 v97, v11

    .line 5353
    .end local v9    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v10    # "iw":I
    .end local v11    # "whichBatteryRealtime":J
    .end local v38    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v97    # "whichBatteryRealtime":J
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v9, v93

    move-object/from16 v38, v95

    goto/16 :goto_615

    .end local v39    # "NU":I
    .end local v95    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v97    # "whichBatteryRealtime":J
    .local v9, "NU":I
    .restart local v11    # "whichBatteryRealtime":J
    .local v38, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_698
    move-object/from16 v72, v0

    move-object/from16 v96, v2

    move/from16 v39, v9

    move-wide/from16 v97, v11

    move-object/from16 v95, v38

    .line 5385
    .end local v3    # "iu":I
    .end local v9    # "NU":I
    .end local v11    # "whichBatteryRealtime":J
    .end local v38    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v39    # "NU":I
    .restart local v95    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v97    # "whichBatteryRealtime":J
    const/4 v0, 0x0

    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v11

    .line 5386
    .local v11, "mobileRxTotalBytes":J
    const/4 v2, 0x1

    invoke-virtual {v7, v2, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    .line 5387
    .local v9, "mobileTxTotalBytes":J
    move-object/from16 v38, v1

    const/4 v3, 0x2

    .end local v1    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v38, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual {v7, v3, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v0

    .line 5388
    .local v0, "wifiRxTotalBytes":J
    const/4 v3, 0x3

    invoke-virtual {v7, v3, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 5389
    .local v2, "wifiTxTotalBytes":J
    move-wide/from16 v99, v0

    move-wide/from16 v101, v9

    const/4 v0, 0x0

    .end local v0    # "wifiRxTotalBytes":J
    .end local v9    # "mobileTxTotalBytes":J
    .local v99, "wifiRxTotalBytes":J
    .local v101, "mobileTxTotalBytes":J
    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v9

    .line 5390
    .local v9, "mobileRxTotalPackets":J
    move-wide/from16 v103, v9

    const/4 v0, 0x1

    .end local v9    # "mobileRxTotalPackets":J
    .local v103, "mobileRxTotalPackets":J
    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v9

    .line 5391
    .local v9, "mobileTxTotalPackets":J
    move-wide/from16 v105, v9

    const/4 v1, 0x2

    .end local v9    # "mobileTxTotalPackets":J
    .local v105, "mobileTxTotalPackets":J
    invoke-virtual {v7, v1, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v9

    .line 5392
    .local v9, "wifiRxTotalPackets":J
    const/4 v0, 0x3

    move-wide/from16 v107, v9

    .end local v9    # "wifiRxTotalPackets":J
    .local v107, "wifiRxTotalPackets":J
    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v9

    .line 5393
    .local v9, "wifiTxTotalPackets":J
    const/4 v0, 0x4

    move-wide/from16 v109, v9

    .end local v9    # "wifiTxTotalPackets":J
    .local v109, "wifiTxTotalPackets":J
    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    .line 5394
    .local v9, "btRxTotalBytes":J
    const/4 v0, 0x5

    move-wide/from16 v111, v9

    .end local v9    # "btRxTotalBytes":J
    .local v111, "btRxTotalBytes":J
    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    .line 5396
    .local v9, "btTxTotalBytes":J
    const-wide/16 v47, 0x0

    cmp-long v0, v81, v47

    if-eqz v0, :cond_707

    .line 5397
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5398
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5399
    const-string v0, "  Total full wakelock time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v113, v81, v18

    move-wide/from16 v115, v2

    .end local v2    # "wifiTxTotalBytes":J
    .local v115, "wifiTxTotalBytes":J
    div-long v1, v113, v16

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5401
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_709

    .line 5396
    .end local v115    # "wifiTxTotalBytes":J
    .restart local v2    # "wifiTxTotalBytes":J
    :cond_707
    move-wide/from16 v115, v2

    .line 5404
    .end local v2    # "wifiTxTotalBytes":J
    .restart local v115    # "wifiTxTotalBytes":J
    :goto_709
    const-wide/16 v0, 0x0

    cmp-long v2, v90, v0

    if-eqz v2, :cond_729

    .line 5405
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5406
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5407
    const-string v0, "  Total partial wakelock time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v0, v90, v18

    div-long v0, v0, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5409
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5412
    :cond_729
    nop

    .line 5413
    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v113

    .line 5414
    .local v113, "multicastWakeLockTimeTotalMicros":J
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v3

    .line 5415
    .local v3, "multicastWakeLockCountTotal":I
    const-wide/16 v0, 0x0

    cmp-long v2, v113, v0

    if-eqz v2, :cond_768

    .line 5416
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5417
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5418
    const-string v0, "  Total WiFi Multicast wakelock Count: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5419
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5420
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5422
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5423
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5424
    const-string v0, "  Total WiFi Multicast wakelock time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5425
    add-long v0, v113, v18

    div-long v0, v0, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5426
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5429
    :cond_768
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDisplayCount()I

    move-result v2

    .line 5430
    .local v2, "numDisplays":I
    const/4 v1, 0x1

    if-le v2, v1, :cond_8c4

    .line 5431
    const-string v0, ""

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5432
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5433
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5434
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5435
    const-string v0, "  MULTI-DISPLAY POWER SUMMARY START"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5436
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5438
    const/4 v0, 0x0

    .local v0, "display":I
    :goto_78b
    if-ge v0, v2, :cond_899

    .line 5439
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5440
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5441
    const-string v1, "  Display "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5442
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5443
    const-string v1, " Statistics:"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5444
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5446
    move/from16 v117, v2

    .end local v2    # "numDisplays":I
    .local v117, "numDisplays":I
    invoke-virtual {v7, v0, v5, v6}, Landroid/os/BatteryStats;->getDisplayScreenOnTime(IJ)J

    move-result-wide v1

    .line 5447
    .local v1, "displayScreenOnTime":J
    move/from16 v118, v3

    const/4 v3, 0x0

    .end local v3    # "multicastWakeLockCountTotal":I
    .local v118, "multicastWakeLockCountTotal":I
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5448
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5449
    const-string v3, "    Screen on: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5450
    move-wide/from16 v119, v9

    .end local v9    # "btTxTotalBytes":J
    .local v119, "btTxTotalBytes":J
    div-long v9, v1, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5451
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5452
    move-wide/from16 v9, v97

    .end local v97    # "whichBatteryRealtime":J
    .local v9, "whichBatteryRealtime":J
    invoke-virtual {v7, v1, v2, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5453
    move-object/from16 v3, v72

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5454
    move-wide/from16 v97, v11

    .end local v11    # "mobileRxTotalBytes":J
    .local v97, "mobileRxTotalBytes":J
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5456
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5457
    const-string v11, "    Screen brightness levels:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5458
    const/4 v11, 0x0

    .line 5459
    .end local v49    # "didOne":Z
    .local v11, "didOne":Z
    const/4 v12, 0x0

    move/from16 v49, v11

    .end local v11    # "didOne":Z
    .local v12, "bin":I
    .restart local v49    # "didOne":Z
    :goto_7ea
    const/16 v11, 0x64

    if-ge v12, v11, :cond_836

    .line 5460
    move-wide/from16 v121, v9

    .end local v9    # "whichBatteryRealtime":J
    .local v121, "whichBatteryRealtime":J
    invoke-virtual {v7, v0, v12, v5, v6}, Landroid/os/BatteryStats;->getDisplayScreenBrightnessTime(IIJ)J

    move-result-wide v9

    .line 5461
    .local v9, "timeUs":J
    const-wide/16 v47, 0x0

    cmp-long v11, v9, v47

    if-nez v11, :cond_7ff

    .line 5462
    move-object/from16 v13, v68

    move-object/from16 v11, v96

    goto :goto_829

    .line 5464
    :cond_7ff
    const/16 v49, 0x1

    .line 5465
    const-string v11, "\n      "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5466
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5467
    sget-object v11, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v11, v11, v12

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5468
    move-object/from16 v11, v96

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5469
    div-long v13, v9, v16

    invoke-static {v8, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5470
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5471
    invoke-virtual {v7, v9, v10, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5472
    move-object/from16 v13, v68

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5459
    .end local v9    # "timeUs":J
    :goto_829
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v14, p3

    move-object/from16 v96, v11

    move-object/from16 v68, v13

    move-wide/from16 v9, v121

    move/from16 v13, p4

    goto :goto_7ea

    .end local v121    # "whichBatteryRealtime":J
    .local v9, "whichBatteryRealtime":J
    :cond_836
    move-wide/from16 v121, v9

    move-object/from16 v13, v68

    move-object/from16 v11, v96

    const-wide/16 v47, 0x0

    .line 5474
    .end local v9    # "whichBatteryRealtime":J
    .end local v12    # "bin":I
    .restart local v121    # "whichBatteryRealtime":J
    if-nez v49, :cond_846

    move-object/from16 v9, v87

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_848

    :cond_846
    move-object/from16 v9, v87

    .line 5475
    :goto_848
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5477
    move-wide/from16 v123, v1

    .end local v1    # "displayScreenOnTime":J
    .local v123, "displayScreenOnTime":J
    invoke-virtual {v7, v0, v5, v6}, Landroid/os/BatteryStats;->getDisplayScreenDozeTime(IJ)J

    move-result-wide v1

    .line 5478
    .local v1, "displayScreenDozeTimeUs":J
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5479
    move-object/from16 v14, p3

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5480
    const-string v10, "    Screen Doze: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5481
    move-object/from16 v96, v11

    div-long v10, v1, v16

    invoke-static {v8, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5482
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5483
    move-wide/from16 v10, v121

    .end local v121    # "whichBatteryRealtime":J
    .local v10, "whichBatteryRealtime":J
    invoke-virtual {v7, v1, v2, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5484
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5485
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5438
    .end local v1    # "displayScreenDozeTimeUs":J
    .end local v123    # "displayScreenOnTime":J
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v72, v3

    move-object/from16 v87, v9

    move-object/from16 v68, v13

    move/from16 v2, v117

    move/from16 v3, v118

    const/4 v1, 0x1

    move/from16 v13, p4

    move-wide/from16 v225, v10

    move-wide/from16 v9, v119

    move-wide/from16 v11, v97

    move-wide/from16 v97, v225

    goto/16 :goto_78b

    .end local v10    # "whichBatteryRealtime":J
    .end local v117    # "numDisplays":I
    .end local v118    # "multicastWakeLockCountTotal":I
    .end local v119    # "btTxTotalBytes":J
    .restart local v2    # "numDisplays":I
    .restart local v3    # "multicastWakeLockCountTotal":I
    .local v9, "btTxTotalBytes":J
    .local v11, "mobileRxTotalBytes":J
    .local v97, "whichBatteryRealtime":J
    :cond_899
    move/from16 v117, v2

    move/from16 v118, v3

    move-wide/from16 v119, v9

    move-object/from16 v13, v68

    move-object/from16 v3, v72

    move-object/from16 v9, v87

    const-wide/16 v47, 0x0

    move-wide/from16 v225, v11

    move-wide/from16 v10, v97

    move-wide/from16 v97, v225

    .line 5487
    .end local v0    # "display":I
    .end local v2    # "numDisplays":I
    .end local v3    # "multicastWakeLockCountTotal":I
    .end local v9    # "btTxTotalBytes":J
    .end local v11    # "mobileRxTotalBytes":J
    .restart local v10    # "whichBatteryRealtime":J
    .local v97, "mobileRxTotalBytes":J
    .restart local v117    # "numDisplays":I
    .restart local v118    # "multicastWakeLockCountTotal":I
    .restart local v119    # "btTxTotalBytes":J
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5488
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5489
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5490
    const-string v0, "  MULTI-DISPLAY POWER SUMMARY END"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5491
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8d8

    .line 5430
    .end local v10    # "whichBatteryRealtime":J
    .end local v117    # "numDisplays":I
    .end local v118    # "multicastWakeLockCountTotal":I
    .end local v119    # "btTxTotalBytes":J
    .restart local v2    # "numDisplays":I
    .restart local v3    # "multicastWakeLockCountTotal":I
    .restart local v9    # "btTxTotalBytes":J
    .restart local v11    # "mobileRxTotalBytes":J
    .local v97, "whichBatteryRealtime":J
    :cond_8c4
    move/from16 v117, v2

    move/from16 v118, v3

    move-wide/from16 v119, v9

    move-object/from16 v13, v68

    move-object/from16 v3, v72

    move-object/from16 v9, v87

    const-wide/16 v47, 0x0

    move-wide/from16 v225, v11

    move-wide/from16 v10, v97

    move-wide/from16 v97, v225

    .line 5494
    .end local v2    # "numDisplays":I
    .end local v3    # "multicastWakeLockCountTotal":I
    .end local v9    # "btTxTotalBytes":J
    .end local v11    # "mobileRxTotalBytes":J
    .restart local v10    # "whichBatteryRealtime":J
    .local v97, "mobileRxTotalBytes":J
    .restart local v117    # "numDisplays":I
    .restart local v118    # "multicastWakeLockCountTotal":I
    .restart local v119    # "btTxTotalBytes":J
    :goto_8d8
    const-string v0, ""

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5495
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5496
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5497
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5498
    const-string v0, "  CONNECTIVITY POWER SUMMARY START"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5499
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5501
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5502
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5503
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5504
    const-string v0, "  Logging duration for connectivity statistics: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5505
    div-long v1, v10, v16

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5506
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5508
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5509
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5510
    const-string v0, "  Cellular Statistics:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5511
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5513
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5514
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5515
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5516
    const-string v0, "     Cellular kernel active time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5517
    move/from16 v2, p4

    invoke-virtual {v7, v5, v6, v2}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v0

    .line 5518
    .local v0, "mobileActiveTime":J
    move-object/from16 v68, v13

    div-long v12, v0, v16

    invoke-static {v8, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5519
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5520
    move-object/from16 v12, v68

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5521
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5523
    nop

    .line 5524
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v13

    .line 5523
    const-string v68, "Cellular"

    move-wide/from16 v125, v0

    move-object v1, v3

    move-wide/from16 v121, v10

    move-object v10, v12

    move-object/from16 v3, v95

    move-wide/from16 v11, v99

    .end local v0    # "mobileActiveTime":J
    .end local v10    # "whichBatteryRealtime":J
    .end local v95    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v99    # "wifiRxTotalBytes":J
    .local v3, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v11, "wifiRxTotalBytes":J
    .restart local v121    # "whichBatteryRealtime":J
    .local v125, "mobileActiveTime":J
    move-object/from16 v0, p0

    move-wide/from16 v127, v22

    const/16 v23, 0x2

    const/16 v72, 0x1

    move-object v12, v1

    move-object/from16 v22, v10

    move-wide/from16 v10, v121

    .end local v11    # "wifiRxTotalBytes":J
    .end local v22    # "batteryUptime":J
    .end local v121    # "whichBatteryRealtime":J
    .restart local v10    # "whichBatteryRealtime":J
    .restart local v99    # "wifiRxTotalBytes":J
    .local v127, "batteryUptime":J
    move-object/from16 v1, p2

    move-object/from16 v87, v9

    move-wide/from16 v73, v93

    move-wide/from16 v129, v115

    move/from16 v23, v117

    move v9, v2

    move-object/from16 v93, v12

    move-object/from16 v12, v96

    .end local v93    # "phoneOnTime":J
    .end local v115    # "wifiTxTotalBytes":J
    .end local v117    # "numDisplays":I
    .local v23, "numDisplays":I
    .local v73, "phoneOnTime":J
    .local v129, "wifiTxTotalBytes":J
    move-object v2, v8

    move-object/from16 v132, v3

    move-wide/from16 v94, v20

    move-object/from16 v133, v22

    move-wide/from16 v20, v26

    move-wide/from16 v26, v34

    move-wide/from16 v34, v41

    move-wide/from16 v41, v75

    move/from16 v22, v92

    move/from16 v72, v118

    .end local v3    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v75    # "deviceIdlingTime":J
    .end local v92    # "connChanges":I
    .end local v118    # "multicastWakeLockCountTotal":I
    .local v20, "whichBatteryUptime":J
    .local v22, "connChanges":I
    .local v26, "whichBatteryScreenOffUptime":J
    .local v34, "screenDozeTime":J
    .local v41, "deviceIdlingTime":J
    .local v72, "multicastWakeLockCountTotal":I
    .local v94, "rawRealtimeMs":J
    .local v132, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    move-object/from16 v3, p3

    move-object v10, v4

    .end local v10    # "whichBatteryRealtime":J
    .restart local v121    # "whichBatteryRealtime":J
    move-object/from16 v4, v68

    move-object/from16 v68, v10

    move/from16 v135, v39

    move/from16 v39, v46

    move-wide v10, v5

    const/4 v6, 0x0

    .end local v5    # "rawRealtime":J
    .end local v46    # "lastLearnedBatteryCapacity":I
    .local v10, "rawRealtime":J
    .local v39, "lastLearnedBatteryCapacity":I
    .local v135, "NU":I
    move-object v5, v13

    move v13, v6

    move/from16 v40, v45

    .end local v45    # "estimatedBatteryCapacity":I
    .local v40, "estimatedBatteryCapacity":I
    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 5526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v4, v94

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats;->printCellularPerRatBreakdown(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 5528
    const-string v0, "     Cellular data received: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v97

    .end local v97    # "mobileRxTotalBytes":J
    .local v5, "mobileRxTotalBytes":J
    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5529
    const-string v0, "     Cellular data sent: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v101

    .end local v101    # "mobileTxTotalBytes":J
    .local v3, "mobileTxTotalBytes":J
    invoke-virtual {v7, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5530
    const-string v0, "     Cellular packets received: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v1, v103

    .end local v103    # "mobileRxTotalPackets":J
    .local v1, "mobileRxTotalPackets":J
    invoke-virtual {v15, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 5531
    const-string v0, "     Cellular packets sent: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v13, v105

    .end local v105    # "mobileTxTotalPackets":J
    .local v13, "mobileTxTotalPackets":J
    invoke-virtual {v15, v13, v14}, Ljava/io/PrintWriter;->println(J)V

    .line 5533
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5534
    move-wide/from16 v75, v13

    move-object/from16 v14, p3

    .end local v13    # "mobileTxTotalPackets":J
    .local v75, "mobileTxTotalPackets":J
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5535
    const-string v0, "     Cellular Radio Access Technology:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5536
    const/4 v0, 0x0

    .line 5537
    .end local v49    # "didOne":Z
    .local v0, "didOne":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_a07
    move-wide/from16 v103, v1

    .end local v1    # "mobileRxTotalPackets":J
    .restart local v103    # "mobileRxTotalPackets":J
    sget v1, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v13, v1, :cond_a66

    .line 5538
    invoke-virtual {v7, v13, v10, v11, v9}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v1

    .line 5539
    .local v1, "time":J
    const-wide/16 v46, 0x0

    cmp-long v49, v1, v46

    if-nez v49, :cond_a22

    .line 5540
    move-wide/from16 v101, v3

    move-wide/from16 v97, v5

    move-object/from16 v4, v68

    move-object/from16 v3, v93

    move-wide/from16 v5, v121

    goto :goto_a57

    .line 5542
    :cond_a22
    move-wide/from16 v101, v3

    .end local v3    # "mobileTxTotalBytes":J
    .restart local v101    # "mobileTxTotalBytes":J
    const-string v3, "\n       "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5543
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5544
    const/4 v0, 0x1

    .line 5545
    sget-object v3, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v4, v3

    if-ge v13, v4, :cond_a35

    aget-object v3, v3, v13

    goto :goto_a37

    :cond_a35
    const-string v3, "ERROR"

    :goto_a37
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5546
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5547
    div-long v3, v1, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5548
    move-object/from16 v4, v68

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5549
    move-wide/from16 v97, v5

    move-wide/from16 v5, v121

    .end local v121    # "whichBatteryRealtime":J
    .local v5, "whichBatteryRealtime":J
    .restart local v97    # "mobileRxTotalBytes":J
    invoke-virtual {v7, v1, v2, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5550
    move-object/from16 v3, v93

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5537
    .end local v1    # "time":J
    :goto_a57
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v93, v3

    move-object/from16 v68, v4

    move-wide/from16 v121, v5

    move-wide/from16 v5, v97

    move-wide/from16 v3, v101

    move-wide/from16 v1, v103

    goto :goto_a07

    .end local v97    # "mobileRxTotalBytes":J
    .end local v101    # "mobileTxTotalBytes":J
    .restart local v3    # "mobileTxTotalBytes":J
    .local v5, "mobileRxTotalBytes":J
    .restart local v121    # "whichBatteryRealtime":J
    :cond_a66
    move-wide/from16 v101, v3

    move-wide/from16 v97, v5

    move-object/from16 v4, v68

    move-object/from16 v3, v93

    move-wide/from16 v5, v121

    .line 5552
    .end local v3    # "mobileTxTotalBytes":J
    .end local v13    # "i":I
    .end local v121    # "whichBatteryRealtime":J
    .local v5, "whichBatteryRealtime":J
    .restart local v97    # "mobileRxTotalBytes":J
    .restart local v101    # "mobileTxTotalBytes":J
    if-nez v0, :cond_a78

    move-object/from16 v13, v87

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a7a

    :cond_a78
    move-object/from16 v13, v87

    .line 5553
    :goto_a7a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5555
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5556
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5557
    const-string v1, "     Cellular Rx signal strength (RSRP):"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5558
    const-string/jumbo v1, "very poor (less than -128dBm): "

    const-string/jumbo v2, "poor (-128dBm to -118dBm): "

    move/from16 v46, v0

    .end local v0    # "didOne":Z
    .local v46, "didOne":Z
    const-string/jumbo v0, "moderate (-118dBm to -108dBm): "

    const-string/jumbo v15, "good (-108dBm to -98dBm): "

    move-object/from16 v87, v13

    const-string/jumbo v13, "great (greater than -98dBm): "

    filled-new-array {v1, v2, v0, v15, v13}, [Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 5564
    .local v15, "cellularRxSignalStrengthDescription":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 5565
    .end local v46    # "didOne":Z
    .restart local v0    # "didOne":Z
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    array-length v2, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 5567
    .local v13, "numCellularRxBins":I
    const/4 v1, 0x0

    move/from16 v46, v0

    .end local v0    # "didOne":Z
    .local v1, "i":I
    .restart local v46    # "didOne":Z
    :goto_ab2
    if-ge v1, v13, :cond_afa

    .line 5568
    move-object/from16 v93, v3

    invoke-virtual {v7, v1, v10, v11, v9}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    .line 5569
    .local v2, "time":J
    const-wide/16 v47, 0x0

    cmp-long v0, v2, v47

    if-nez v0, :cond_ac7

    .line 5570
    move-object/from16 v96, v12

    move/from16 v49, v13

    move-object/from16 v12, v93

    goto :goto_af2

    .line 5572
    :cond_ac7
    const-string v0, "\n       "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5573
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5574
    const/4 v0, 0x1

    .line 5575
    .end local v46    # "didOne":Z
    .restart local v0    # "didOne":Z
    move/from16 v46, v0

    .end local v0    # "didOne":Z
    .restart local v46    # "didOne":Z
    aget-object v0, v15, v1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5576
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5577
    move-object/from16 v96, v12

    move/from16 v49, v13

    .end local v13    # "numCellularRxBins":I
    .local v49, "numCellularRxBins":I
    div-long v12, v2, v16

    invoke-static {v8, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5578
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5579
    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5580
    move-object/from16 v12, v93

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5567
    .end local v2    # "time":J
    :goto_af2
    add-int/lit8 v1, v1, 0x1

    move-object v3, v12

    move/from16 v13, v49

    move-object/from16 v12, v96

    goto :goto_ab2

    .end local v49    # "numCellularRxBins":I
    .restart local v13    # "numCellularRxBins":I
    :cond_afa
    move-object/from16 v96, v12

    move/from16 v49, v13

    move-object v12, v3

    .line 5582
    .end local v1    # "i":I
    .end local v13    # "numCellularRxBins":I
    .restart local v49    # "numCellularRxBins":I
    if-nez v46, :cond_b07

    move-object/from16 v13, v87

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b09

    :cond_b07
    move-object/from16 v13, v87

    .line 5583
    :goto_b09
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p2

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5585
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5586
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5587
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5588
    const-string v0, "  Wifi Statistics:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5589
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5591
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5592
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5593
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5594
    const-string v0, "     Wifi kernel active time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5595
    invoke-virtual {v7, v10, v11, v9}, Landroid/os/BatteryStats;->getWifiActiveTime(JI)J

    move-result-wide v1

    .line 5596
    .local v1, "wifiActiveTime":J
    move-object/from16 v93, v12

    move-object/from16 v87, v13

    div-long v12, v1, v16

    invoke-static {v8, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5597
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5598
    move-object/from16 v13, v133

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5599
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5601
    nop

    .line 5602
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v12

    .line 5601
    const-string v68, "WiFi"

    move-object/from16 v0, p0

    move-wide/from16 v105, v1

    .end local v1    # "wifiActiveTime":J
    .local v105, "wifiActiveTime":J
    move-object/from16 v1, p2

    move-object v2, v8

    move-object/from16 v92, v15

    move-object/from16 v13, v93

    move-object v15, v3

    .end local v15    # "cellularRxSignalStrengthDescription":[Ljava/lang/String;
    .local v92, "cellularRxSignalStrengthDescription":[Ljava/lang/String;
    move-object/from16 v3, p3

    move-object v13, v4

    move-object/from16 v4, v68

    move-wide/from16 v136, v5

    .end local v5    # "whichBatteryRealtime":J
    .local v136, "whichBatteryRealtime":J
    move-object v5, v12

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 5604
    const-string v0, "     Wifi data received: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v99

    .end local v99    # "wifiRxTotalBytes":J
    .local v5, "wifiRxTotalBytes":J
    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5605
    const-string v0, "     Wifi data sent: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v129

    .end local v129    # "wifiTxTotalBytes":J
    .local v3, "wifiTxTotalBytes":J
    invoke-virtual {v7, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5606
    const-string v0, "     Wifi packets received: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v1, v107

    .end local v107    # "wifiRxTotalPackets":J
    .local v1, "wifiRxTotalPackets":J
    invoke-virtual {v15, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 5607
    const-string v0, "     Wifi packets sent: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v109

    .end local v109    # "wifiTxTotalPackets":J
    .local v5, "wifiTxTotalPackets":J
    .restart local v99    # "wifiRxTotalBytes":J
    invoke-virtual {v15, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    .line 5609
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5610
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5611
    const-string v0, "     Wifi states:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5612
    const/4 v0, 0x0

    .line 5613
    .end local v46    # "didOne":Z
    .restart local v0    # "didOne":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_bb8
    move-wide/from16 v107, v1

    .end local v1    # "wifiRxTotalPackets":J
    .restart local v107    # "wifiRxTotalPackets":J
    const/16 v1, 0x8

    if-ge v12, v1, :cond_c0e

    .line 5614
    invoke-virtual {v7, v12, v10, v11, v9}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v1

    .line 5615
    .local v1, "time":J
    const-wide/16 v46, 0x0

    cmp-long v68, v1, v46

    if-nez v68, :cond_bd3

    .line 5616
    move-wide/from16 v129, v3

    move-wide/from16 v109, v5

    move-object/from16 v3, v93

    move-object/from16 v4, v96

    move-wide/from16 v5, v136

    goto :goto_bff

    .line 5618
    :cond_bd3
    move-wide/from16 v129, v3

    .end local v3    # "wifiTxTotalBytes":J
    .restart local v129    # "wifiTxTotalBytes":J
    const-string v3, "\n       "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5619
    const/4 v0, 0x1

    .line 5620
    sget-object v3, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v12

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5621
    move-object/from16 v4, v96

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5622
    move-wide/from16 v109, v5

    .end local v5    # "wifiTxTotalPackets":J
    .restart local v109    # "wifiTxTotalPackets":J
    div-long v5, v1, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5623
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5624
    move-wide/from16 v5, v136

    .end local v136    # "whichBatteryRealtime":J
    .local v5, "whichBatteryRealtime":J
    invoke-virtual {v7, v1, v2, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5625
    move-object/from16 v3, v93

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5613
    .end local v1    # "time":J
    :goto_bff
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v93, v3

    move-object/from16 v96, v4

    move-wide/from16 v136, v5

    move-wide/from16 v1, v107

    move-wide/from16 v5, v109

    move-wide/from16 v3, v129

    goto :goto_bb8

    .end local v109    # "wifiTxTotalPackets":J
    .end local v129    # "wifiTxTotalBytes":J
    .restart local v3    # "wifiTxTotalBytes":J
    .local v5, "wifiTxTotalPackets":J
    .restart local v136    # "whichBatteryRealtime":J
    :cond_c0e
    move-wide/from16 v129, v3

    move-wide/from16 v109, v5

    move-object/from16 v3, v93

    move-object/from16 v4, v96

    move-wide/from16 v5, v136

    .line 5627
    .end local v3    # "wifiTxTotalBytes":J
    .end local v12    # "i":I
    .end local v136    # "whichBatteryRealtime":J
    .local v5, "whichBatteryRealtime":J
    .restart local v109    # "wifiTxTotalPackets":J
    .restart local v129    # "wifiTxTotalBytes":J
    if-nez v0, :cond_c20

    move-object/from16 v1, v87

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c22

    :cond_c20
    move-object/from16 v1, v87

    .line 5628
    :goto_c22
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5630
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5631
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5632
    const-string v2, "     Wifi supplicant states:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5633
    const/4 v0, 0x0

    .line 5634
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c37
    const/16 v12, 0xd

    if-ge v2, v12, :cond_c77

    .line 5635
    invoke-virtual {v7, v2, v10, v11, v9}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v14

    .line 5636
    .local v14, "time":J
    const-wide/16 v46, 0x0

    cmp-long v12, v14, v46

    if-nez v12, :cond_c48

    .line 5637
    move-wide/from16 v115, v10

    goto :goto_c6c

    .line 5639
    :cond_c48
    const-string v12, "\n       "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5640
    const/4 v0, 0x1

    .line 5641
    sget-object v12, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5642
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5643
    move-wide/from16 v115, v10

    .end local v10    # "rawRealtime":J
    .local v115, "rawRealtime":J
    div-long v9, v14, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5644
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5645
    invoke-virtual {v7, v14, v15, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5646
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5634
    .end local v14    # "time":J
    :goto_c6c
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move/from16 v9, p4

    move-wide/from16 v10, v115

    goto :goto_c37

    .end local v115    # "rawRealtime":J
    .restart local v10    # "rawRealtime":J
    :cond_c77
    move-wide/from16 v115, v10

    .line 5648
    .end local v2    # "i":I
    .end local v10    # "rawRealtime":J
    .restart local v115    # "rawRealtime":J
    if-nez v0, :cond_c7e

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5649
    :cond_c7e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v15, p2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5651
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5652
    move-object/from16 v14, p3

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5653
    const-string v2, "     Wifi Rx signal strength (RSSI):"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5654
    const-string/jumbo v2, "very poor (less than -88.75dBm): "

    const-string/jumbo v9, "poor (-88.75 to -77.5dBm): "

    const-string/jumbo v10, "moderate (-77.5dBm to -66.25dBm): "

    const-string/jumbo v11, "good (-66.25dBm to -55dBm): "

    const-string/jumbo v12, "great (greater than -55dBm): "

    filled-new-array {v2, v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    .line 5660
    .local v11, "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 5661
    const/4 v2, 0x5

    array-length v9, v11

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 5663
    .local v12, "numWifiRxBins":I
    const/4 v2, 0x0

    move/from16 v46, v0

    .end local v0    # "didOne":Z
    .restart local v2    # "i":I
    .restart local v46    # "didOne":Z
    :goto_cb3
    if-ge v2, v12, :cond_d05

    .line 5664
    move/from16 v9, p4

    move-object/from16 v87, v1

    move-object/from16 v93, v3

    move-object/from16 v96, v4

    move-wide/from16 v0, v115

    .end local v115    # "rawRealtime":J
    .local v0, "rawRealtime":J
    invoke-virtual {v7, v2, v0, v1, v9}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v3

    .line 5665
    .local v3, "time":J
    const-wide/16 v47, 0x0

    cmp-long v10, v3, v47

    if-nez v10, :cond_cce

    .line 5666
    move-object/from16 v68, v11

    move-object/from16 v10, v93

    goto :goto_cf9

    .line 5668
    :cond_cce
    const-string v10, "\n    "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5669
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5670
    const/4 v10, 0x1

    .line 5671
    .end local v46    # "didOne":Z
    .local v10, "didOne":Z
    move/from16 v46, v10

    .end local v10    # "didOne":Z
    .restart local v46    # "didOne":Z
    const-string v10, "     "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5672
    aget-object v10, v11, v2

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5673
    move-object/from16 v68, v11

    .end local v11    # "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    .local v68, "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    div-long v10, v3, v16

    invoke-static {v8, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5674
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5675
    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5676
    move-object/from16 v10, v93

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5663
    .end local v3    # "time":J
    :goto_cf9
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v115, v0

    move-object v3, v10

    move-object/from16 v11, v68

    move-object/from16 v1, v87

    move-object/from16 v4, v96

    goto :goto_cb3

    .end local v0    # "rawRealtime":J
    .end local v68    # "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    .restart local v11    # "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    .restart local v115    # "rawRealtime":J
    :cond_d05
    move/from16 v9, p4

    move-object/from16 v87, v1

    move-object v10, v3

    move-object/from16 v96, v4

    move-object/from16 v68, v11

    move-wide/from16 v0, v115

    .line 5678
    .end local v2    # "i":I
    .end local v11    # "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    .end local v115    # "rawRealtime":J
    .restart local v0    # "rawRealtime":J
    .restart local v68    # "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    if-nez v46, :cond_d17

    move-object/from16 v2, v87

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5679
    :cond_d17
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5681
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5682
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5683
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5684
    const-string v3, "  GPS Statistics:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5685
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5687
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5688
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5689
    const-string v2, "     GPS signal quality (Top 4 Average CN0):"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5690
    const-string/jumbo v2, "poor (less than 20 dBHz): "

    const-string/jumbo v3, "good (greater than 20 dBHz): "

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    .line 5693
    .local v11, "gpsSignalQualityDescription":[Ljava/lang/String;
    array-length v2, v11

    const/4 v4, 0x2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5696
    .local v3, "numGpsSignalQualityBins":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_d51
    if-ge v2, v3, :cond_d8c

    .line 5697
    move-wide/from16 v121, v5

    .end local v5    # "whichBatteryRealtime":J
    .restart local v121    # "whichBatteryRealtime":J
    invoke-virtual {v7, v2, v0, v1, v9}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    move-result-wide v4

    .line 5698
    .local v4, "time":J
    const-string v6, "\n    "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5699
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5700
    const-string v6, "  "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5701
    aget-object v6, v11, v2

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5702
    move-object/from16 v93, v11

    move/from16 v87, v12

    .end local v11    # "gpsSignalQualityDescription":[Ljava/lang/String;
    .end local v12    # "numWifiRxBins":I
    .local v87, "numWifiRxBins":I
    .local v93, "gpsSignalQualityDescription":[Ljava/lang/String;
    div-long v11, v4, v16

    invoke-static {v8, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5703
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5704
    move-wide/from16 v11, v121

    .end local v121    # "whichBatteryRealtime":J
    .local v11, "whichBatteryRealtime":J
    invoke-virtual {v7, v4, v5, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5705
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5696
    .end local v4    # "time":J
    add-int/lit8 v2, v2, 0x1

    move-wide v5, v11

    move/from16 v12, v87

    move-object/from16 v11, v93

    const/4 v4, 0x2

    goto :goto_d51

    .end local v87    # "numWifiRxBins":I
    .end local v93    # "gpsSignalQualityDescription":[Ljava/lang/String;
    .restart local v5    # "whichBatteryRealtime":J
    .local v11, "gpsSignalQualityDescription":[Ljava/lang/String;
    .restart local v12    # "numWifiRxBins":I
    :cond_d8c
    move-object/from16 v93, v11

    move/from16 v87, v12

    move-wide v11, v5

    .line 5707
    .end local v2    # "i":I
    .end local v5    # "whichBatteryRealtime":J
    .end local v12    # "numWifiRxBins":I
    .local v11, "whichBatteryRealtime":J
    .restart local v87    # "numWifiRxBins":I
    .restart local v93    # "gpsSignalQualityDescription":[Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5709
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getGpsBatteryDrainMaMs()J

    move-result-wide v5

    .line 5710
    .local v5, "gpsBatteryDrainMaMs":J
    const-wide/16 v47, 0x0

    cmp-long v2, v5, v47

    if-lez v2, :cond_dd7

    .line 5711
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5712
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5713
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5714
    const-string v2, "     GPS Battery Drain: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5715
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v2, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move/from16 v115, v3

    .end local v3    # "numGpsSignalQualityBins":I
    .local v115, "numGpsSignalQualityBins":I
    long-to-double v3, v5

    const-wide v116, 0x414b774000000000L    # 3600000.0

    div-double v3, v3, v116

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5717
    const-string/jumbo v2, "mAh"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5718
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_dd9

    .line 5710
    .end local v115    # "numGpsSignalQualityBins":I
    .restart local v3    # "numGpsSignalQualityBins":I
    :cond_dd7
    move/from16 v115, v3

    .line 5721
    .end local v3    # "numGpsSignalQualityBins":I
    .restart local v115    # "numGpsSignalQualityBins":I
    :goto_dd9
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5722
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5723
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5724
    const-string v2, "  CONNECTIVITY POWER SUMMARY END"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5725
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5726
    const-string v2, ""

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5728
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5729
    const-string v2, "  Bluetooth total received: "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v111

    .end local v111    # "btRxTotalBytes":J
    .local v3, "btRxTotalBytes":J
    invoke-virtual {v7, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5730
    const-string v2, ", sent: "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v111, v10

    move-wide/from16 v121, v11

    move-wide/from16 v10, v119

    .end local v11    # "whichBatteryRealtime":J
    .end local v119    # "btTxTotalBytes":J
    .local v10, "btTxTotalBytes":J
    .restart local v121    # "whichBatteryRealtime":J
    invoke-virtual {v7, v10, v11}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5732
    invoke-virtual {v7, v0, v1, v9}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    move-result-wide v116

    .end local v10    # "btTxTotalBytes":J
    .restart local v119    # "btTxTotalBytes":J
    div-long v11, v116, v16

    .line 5733
    .local v11, "bluetoothScanTimeMs":J
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5734
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5735
    const-string v2, "  Bluetooth scan time: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5736
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5738
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v10

    const-string v112, "Bluetooth"

    move-wide v1, v0

    .end local v0    # "rawRealtime":J
    .local v1, "rawRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v116, v11

    move-wide v11, v1

    .end local v1    # "rawRealtime":J
    .local v11, "rawRealtime":J
    .local v116, "bluetoothScanTimeMs":J
    move-object/from16 v1, p2

    move-object v2, v8

    move-wide/from16 v123, v129

    move-wide/from16 v129, v3

    move-object/from16 v4, v111

    move/from16 v111, v115

    .end local v3    # "btRxTotalBytes":J
    .end local v115    # "numGpsSignalQualityBins":I
    .local v111, "numGpsSignalQualityBins":I
    .local v123, "wifiTxTotalBytes":J
    .local v129, "btRxTotalBytes":J
    move-object/from16 v3, p3

    move-object v9, v4

    move-object/from16 v138, v96

    move-object/from16 v4, v112

    move-wide/from16 v136, v11

    move-wide/from16 v11, v121

    move-wide/from16 v121, v5

    .end local v5    # "gpsBatteryDrainMaMs":J
    .local v11, "whichBatteryRealtime":J
    .local v121, "gpsBatteryDrainMaMs":J
    .local v136, "rawRealtime":J
    move-object v5, v10

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 5741
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5743
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Device battery use since last full charge"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5744
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged (lower bound): "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5745
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5746
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged (upper bound): "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5747
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5748
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen on: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5749
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5750
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen off: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5751
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5752
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen doze: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5753
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5754
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5756
    new-instance v0, Lcom/android/internal/os/BatteryUsageStatsProvider;

    move-object/from16 v10, p1

    invoke-direct {v0, v10, v7}, Lcom/android/internal/os/BatteryUsageStatsProvider;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    move-object v6, v0

    .line 5757
    .local v6, "provider":Lcom/android/internal/os/BatteryUsageStatsProvider;
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 5759
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 5760
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 5761
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 5762
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 5763
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    .line 5757
    invoke-virtual {v6, v0}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v5

    .line 5764
    .local v5, "stats":Landroid/os/BatteryUsageStats;
    invoke-virtual {v5, v15, v14}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5766
    nop

    .line 5767
    invoke-virtual {v5}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/BatteryStats;->getUidMobileRadioStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 5768
    .local v4, "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, " ("

    const-string v3, ": "

    if-lez v0, :cond_f9a

    .line 5769
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5770
    const-string v0, "  Per-app mobile ms per packet:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5771
    const-wide/16 v0, 0x0

    .line 5772
    .local v0, "totalTime":J
    const/16 v96, 0x0

    move/from16 v225, v96

    move-object/from16 v96, v5

    move/from16 v5, v225

    .local v5, "i":I
    .local v96, "stats":Landroid/os/BatteryUsageStats;
    :goto_f05
    move-object/from16 v112, v6

    .end local v6    # "provider":Lcom/android/internal/os/BatteryUsageStatsProvider;
    .local v112, "provider":Lcom/android/internal/os/BatteryUsageStatsProvider;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_f6b

    .line 5773
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$UidMobileRadioStats;

    .line 5774
    .local v6, "mrs":Landroid/os/BatteryStats$UidMobileRadioStats;
    move-object/from16 v115, v4

    const/4 v4, 0x0

    .end local v4    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .local v115, "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5775
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5776
    const-string v4, "    Uid "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5777
    iget v4, v6, Landroid/os/BatteryStats$UidMobileRadioStats;->uid:I

    invoke-static {v8, v4}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 5778
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5779
    move-object/from16 v118, v3

    iget-wide v3, v6, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatValue(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5780
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5781
    iget-wide v3, v6, Landroid/os/BatteryStats$UidMobileRadioStats;->rxPackets:J

    move-wide/from16 v140, v11

    .end local v11    # "whichBatteryRealtime":J
    .local v140, "whichBatteryRealtime":J
    iget-wide v10, v6, Landroid/os/BatteryStats$UidMobileRadioStats;->txPackets:J

    add-long/2addr v3, v10

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5782
    const-string v3, " packets over "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5783
    iget-wide v3, v6, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveMs:J

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5784
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5785
    iget v3, v6, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveCount:I

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5786
    move-object/from16 v11, v69

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5787
    invoke-virtual {v15, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5788
    iget-wide v3, v6, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveMs:J

    add-long/2addr v0, v3

    .line 5772
    .end local v6    # "mrs":Landroid/os/BatteryStats$UidMobileRadioStats;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v10, p1

    move-object/from16 v6, v112

    move-object/from16 v4, v115

    move-object/from16 v3, v118

    move-wide/from16 v11, v140

    goto :goto_f05

    .end local v115    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .end local v140    # "whichBatteryRealtime":J
    .restart local v4    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .restart local v11    # "whichBatteryRealtime":J
    :cond_f6b
    move-object/from16 v118, v3

    move-object/from16 v115, v4

    move-wide/from16 v140, v11

    move-object/from16 v11, v69

    .line 5790
    .end local v4    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .end local v5    # "i":I
    .end local v11    # "whichBatteryRealtime":J
    .restart local v115    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .restart local v140    # "whichBatteryRealtime":J
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5791
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5792
    const-string v3, "    TOTAL TIME: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5793
    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5794
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5795
    move-wide/from16 v5, v140

    .end local v140    # "whichBatteryRealtime":J
    .local v5, "whichBatteryRealtime":J
    invoke-virtual {v7, v0, v1, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5796
    move-object/from16 v12, v133

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5797
    invoke-virtual {v15, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5798
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_fa7

    .line 5768
    .end local v0    # "totalTime":J
    .end local v96    # "stats":Landroid/os/BatteryUsageStats;
    .end local v112    # "provider":Lcom/android/internal/os/BatteryUsageStatsProvider;
    .end local v115    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .restart local v4    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .local v5, "stats":Landroid/os/BatteryUsageStats;
    .local v6, "provider":Lcom/android/internal/os/BatteryUsageStatsProvider;
    .restart local v11    # "whichBatteryRealtime":J
    :cond_f9a
    move-object/from16 v118, v3

    move-object/from16 v115, v4

    move-object/from16 v96, v5

    move-object/from16 v112, v6

    move-wide v5, v11

    move-object/from16 v11, v69

    move-object/from16 v12, v133

    .line 5801
    .end local v4    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .end local v6    # "provider":Lcom/android/internal/os/BatteryUsageStatsProvider;
    .end local v11    # "whichBatteryRealtime":J
    .local v5, "whichBatteryRealtime":J
    .restart local v96    # "stats":Landroid/os/BatteryUsageStats;
    .restart local v112    # "provider":Lcom/android/internal/os/BatteryUsageStatsProvider;
    .restart local v115    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    :goto_fa7
    new-instance v0, Landroid/os/BatteryStats$1;

    invoke-direct {v0, v7}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    move-object v10, v0

    .line 5816
    .local v10, "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    const-string v4, " realtime"

    if-gez p5, :cond_11ee

    .line 5817
    nop

    .line 5818
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v69

    .line 5819
    .local v69, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v69 .. v69}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_10c3

    .line 5820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 5822
    .local v3, "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v69 .. v69}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_fca
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1020

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5823
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v131

    move-object/from16 v133, v0

    move-object/from16 v0, v131

    check-cast v0, Landroid/os/BatteryStats$Timer;

    .line 5824
    .local v0, "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v131, v9

    move/from16 v9, p4

    move-wide/from16 v225, v5

    move-object v6, v4

    move-wide/from16 v4, v136

    move-wide/from16 v136, v225

    .end local v5    # "whichBatteryRealtime":J
    .local v4, "rawRealtime":J
    .local v136, "whichBatteryRealtime":J
    invoke-static {v0, v4, v5, v9}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v146

    .line 5825
    .local v146, "totalTimeMillis":J
    const-wide/16 v47, 0x0

    cmp-long v140, v146, v47

    if-lez v140, :cond_1010

    .line 5826
    move-object/from16 v148, v2

    new-instance v2, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v140

    move-object/from16 v141, v140

    check-cast v141, Ljava/lang/String;

    const/16 v142, 0x0

    move-object/from16 v140, v2

    move-object/from16 v143, v0

    move-wide/from16 v144, v146

    invoke-direct/range {v140 .. v145}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1012

    .line 5825
    :cond_1010
    move-object/from16 v148, v2

    .line 5828
    .end local v0    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v146    # "totalTimeMillis":J
    :goto_1012
    move-object/from16 v9, v131

    move-object/from16 v0, v133

    move-object/from16 v2, v148

    move-wide/from16 v225, v4

    move-object v4, v6

    move-wide/from16 v5, v136

    move-wide/from16 v136, v225

    goto :goto_fca

    .line 5829
    .end local v4    # "rawRealtime":J
    .restart local v5    # "whichBatteryRealtime":J
    .local v136, "rawRealtime":J
    :cond_1020
    move-object/from16 v148, v2

    move-object/from16 v131, v9

    const-wide/16 v47, 0x0

    move/from16 v9, p4

    move-wide/from16 v225, v5

    move-object v6, v4

    move-wide/from16 v4, v136

    move-wide/from16 v136, v225

    .end local v5    # "whichBatteryRealtime":J
    .restart local v4    # "rawRealtime":J
    .local v136, "whichBatteryRealtime":J
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10b7

    .line 5830
    invoke-static {v3, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5831
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All kernel wake locks:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5832
    const/4 v0, 0x0

    move v2, v0

    .restart local v2    # "i":I
    :goto_1042
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_10a6

    .line 5833
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/BatteryStats$TimerEntry;

    .line 5834
    .local v1, "timer":Landroid/os/BatteryStats$TimerEntry;
    const-string v133, ": "

    .line 5835
    .local v133, "linePrefix":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5836
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5837
    const-string v0, "  Kernel Wake lock "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5838
    iget-object v0, v1, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5839
    iget-object v0, v1, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v140, 0x0

    move-object/from16 v141, v0

    move-object v0, v8

    move-object/from16 v142, v1

    .end local v1    # "timer":Landroid/os/BatteryStats$TimerEntry;
    .local v142, "timer":Landroid/os/BatteryStats$TimerEntry;
    move-object/from16 v1, v141

    move/from16 v141, v2

    move-object/from16 v7, v118

    move-object/from16 v149, v148

    move-object/from16 v118, v3

    .end local v2    # "i":I
    .end local v3    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v118, "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v141, "i":I
    move-wide v2, v4

    move-object/from16 v143, v13

    move-object v13, v6

    move-wide v5, v4

    .end local v4    # "rawRealtime":J
    .local v5, "rawRealtime":J
    move-object/from16 v4, v140

    move-wide/from16 v144, v5

    .end local v5    # "rawRealtime":J
    .local v144, "rawRealtime":J
    move/from16 v5, p4

    move-object/from16 v6, v133

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5841
    .end local v133    # "linePrefix":Ljava/lang/String;
    .local v0, "linePrefix":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1096

    .line 5842
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5844
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5832
    .end local v0    # "linePrefix":Ljava/lang/String;
    .end local v142    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_1096
    add-int/lit8 v2, v141, 0x1

    move-object v6, v13

    move-object/from16 v3, v118

    move-object/from16 v13, v143

    move-wide/from16 v4, v144

    move-object/from16 v148, v149

    move-object/from16 v118, v7

    move-object/from16 v7, p0

    .end local v141    # "i":I
    .restart local v2    # "i":I
    goto :goto_1042

    .end local v118    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v144    # "rawRealtime":J
    .restart local v3    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v4    # "rawRealtime":J
    :cond_10a6
    move/from16 v141, v2

    move-wide/from16 v144, v4

    move-object/from16 v143, v13

    move-object/from16 v7, v118

    move-object/from16 v149, v148

    move-object/from16 v118, v3

    move-object v13, v6

    .line 5847
    .end local v2    # "i":I
    .end local v3    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v4    # "rawRealtime":J
    .restart local v118    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v144    # "rawRealtime":J
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_10d4

    .line 5829
    .end local v118    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v144    # "rawRealtime":J
    .restart local v3    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v4    # "rawRealtime":J
    :cond_10b7
    move-wide/from16 v144, v4

    move-object/from16 v143, v13

    move-object/from16 v7, v118

    move-object/from16 v149, v148

    move-object/from16 v118, v3

    move-object v13, v6

    .end local v3    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v4    # "rawRealtime":J
    .restart local v118    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v144    # "rawRealtime":J
    goto :goto_10d4

    .line 5819
    .end local v118    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v144    # "rawRealtime":J
    .local v5, "whichBatteryRealtime":J
    .local v136, "rawRealtime":J
    :cond_10c3
    move-object/from16 v149, v2

    move-object/from16 v131, v9

    move-object/from16 v143, v13

    move-object/from16 v7, v118

    move-wide/from16 v144, v136

    const-wide/16 v47, 0x0

    move/from16 v9, p4

    move-object v13, v4

    move-wide/from16 v136, v5

    .line 5851
    .end local v5    # "whichBatteryRealtime":J
    .local v136, "whichBatteryRealtime":J
    .restart local v144    # "rawRealtime":J
    :goto_10d4
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1146

    .line 5852
    move-object/from16 v6, v38

    .end local v38    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v6, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-static {v6, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5853
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All partial wake locks:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5854
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_10e9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_1139

    .line 5855
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/BatteryStats$TimerEntry;

    .line 5856
    .local v4, "timer":Landroid/os/BatteryStats$TimerEntry;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5857
    const-string v0, "  Wake lock "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5858
    iget v0, v4, Landroid/os/BatteryStats$TimerEntry;->mId:I

    invoke-static {v8, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 5859
    move-object/from16 v2, v138

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5860
    iget-object v0, v4, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5861
    iget-object v1, v4, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v38, 0x0

    const-string v118, ": "

    move-object v0, v8

    move-object/from16 v133, v2

    move-wide/from16 v2, v144

    move-object/from16 v138, v4

    .end local v4    # "timer":Landroid/os/BatteryStats$TimerEntry;
    .local v138, "timer":Landroid/os/BatteryStats$TimerEntry;
    move-object/from16 v4, v38

    move/from16 v38, v5

    .end local v5    # "i":I
    .local v38, "i":I
    move/from16 v5, p4

    move-object/from16 v140, v6

    .end local v6    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v140, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    move-object/from16 v6, v118

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 5862
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5863
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5854
    .end local v138    # "timer":Landroid/os/BatteryStats$TimerEntry;
    add-int/lit8 v5, v38, 0x1

    move-object/from16 v138, v133

    move-object/from16 v6, v140

    .end local v38    # "i":I
    .restart local v5    # "i":I
    goto :goto_10e9

    .end local v140    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v6    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    :cond_1139
    move/from16 v38, v5

    move-object/from16 v140, v6

    move-object/from16 v133, v138

    .line 5865
    .end local v5    # "i":I
    .end local v6    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v140    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual/range {v140 .. v140}, Ljava/util/ArrayList;->clear()V

    .line 5866
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_114a

    .line 5851
    .end local v140    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v38, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    :cond_1146
    move-object/from16 v140, v38

    move-object/from16 v133, v138

    .line 5869
    .end local v38    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v140    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    :goto_114a
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v38

    .line 5870
    .local v38, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1203

    .line 5871
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All wakeup reasons:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5872
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 5873
    .local v6, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_116a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_119a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5874
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    .line 5875
    .local v2, "timer":Landroid/os/BatteryStats$Timer;
    new-instance v3, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v151, v4

    check-cast v151, Ljava/lang/String;

    const/16 v152, 0x0

    .line 5876
    invoke-virtual {v2, v9}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v150, v3

    move-object/from16 v153, v2

    move-wide/from16 v154, v4

    invoke-direct/range {v150 .. v155}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    .line 5875
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5877
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v2    # "timer":Landroid/os/BatteryStats$Timer;
    goto :goto_116a

    .line 5878
    :cond_119a
    invoke-static {v6, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5879
    const/4 v0, 0x0

    move v5, v0

    .restart local v5    # "i":I
    :goto_119f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_11e6

    .line 5880
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/BatteryStats$TimerEntry;

    .line 5881
    .restart local v4    # "timer":Landroid/os/BatteryStats$TimerEntry;
    const-string v118, ": "

    .line 5882
    .local v118, "linePrefix":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5883
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5884
    const-string v0, "  Wakeup reason "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5885
    iget-object v0, v4, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5886
    iget-object v1, v4, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v138, 0x0

    const-string v141, ": "

    move-object v0, v8

    move-wide/from16 v2, v144

    move-object/from16 v142, v4

    .end local v4    # "timer":Landroid/os/BatteryStats$TimerEntry;
    .restart local v142    # "timer":Landroid/os/BatteryStats$TimerEntry;
    move-object/from16 v4, v138

    move/from16 v138, v5

    .end local v5    # "i":I
    .local v138, "i":I
    move/from16 v5, p4

    move-object/from16 v146, v6

    .end local v6    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v146, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    move-object/from16 v6, v141

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 5887
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5888
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5879
    .end local v118    # "linePrefix":Ljava/lang/String;
    .end local v142    # "timer":Landroid/os/BatteryStats$TimerEntry;
    add-int/lit8 v5, v138, 0x1

    move-object/from16 v6, v146

    .end local v138    # "i":I
    .restart local v5    # "i":I
    goto :goto_119f

    .end local v146    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v6    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    :cond_11e6
    move/from16 v138, v5

    move-object/from16 v146, v6

    .line 5890
    .end local v5    # "i":I
    .end local v6    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v146    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1203

    .line 5816
    .end local v69    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v140    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v144    # "rawRealtime":J
    .end local v146    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v5, "whichBatteryRealtime":J
    .local v38, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v136, "rawRealtime":J
    :cond_11ee
    move-object/from16 v149, v2

    move-object/from16 v131, v9

    move-object/from16 v143, v13

    move-object/from16 v140, v38

    move-object/from16 v7, v118

    move-wide/from16 v144, v136

    move-object/from16 v133, v138

    const-wide/16 v47, 0x0

    move/from16 v9, p4

    move-object v13, v4

    move-wide/from16 v136, v5

    .line 5894
    .end local v5    # "whichBatteryRealtime":J
    .end local v38    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v136, "whichBatteryRealtime":J
    .restart local v140    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v144    # "rawRealtime":J
    :cond_1203
    :goto_1203
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v6

    .line 5895
    .local v6, "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_124d

    .line 5896
    const-string v0, "  Memory Stats"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5897
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1213
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1247

    .line 5898
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5899
    const-string v2, "  Bandwidth "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5900
    invoke-virtual {v6, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5901
    const-string v2, " Time "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5902
    invoke-virtual {v6, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    move-wide/from16 v3, v144

    .end local v144    # "rawRealtime":J
    .local v3, "rawRealtime":J
    invoke-virtual {v2, v3, v4, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5903
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5897
    add-int/lit8 v0, v0, 0x1

    goto :goto_1213

    .end local v3    # "rawRealtime":J
    .restart local v144    # "rawRealtime":J
    :cond_1247
    move-wide/from16 v3, v144

    .line 5905
    .end local v0    # "i":I
    .end local v144    # "rawRealtime":J
    .restart local v3    # "rawRealtime":J
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_124f

    .line 5895
    .end local v3    # "rawRealtime":J
    .restart local v144    # "rawRealtime":J
    :cond_124d
    move-wide/from16 v3, v144

    .line 5908
    .end local v144    # "rawRealtime":J
    .restart local v3    # "rawRealtime":J
    :goto_124f
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v38

    .line 5909
    .local v38, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_13ba

    .line 5910
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Resource Power Manager Stats"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5911
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1370

    .line 5912
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_126f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1329

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5913
    .restart local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5914
    .local v2, "timerName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/BatteryStats$Timer;

    .line 5915
    .local v45, "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v69, v8

    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .local v69, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v8, p2

    move-wide/from16 v225, v119

    move-wide/from16 v118, v129

    move-wide/from16 v129, v225

    move-wide/from16 v227, v101

    move-wide/from16 v101, v103

    move-wide/from16 v103, v75

    move-wide/from16 v75, v70

    move-wide/from16 v70, v88

    move-wide/from16 v88, v227

    move-wide/from16 v229, v56

    move-wide/from16 v56, v85

    move-wide/from16 v85, v229

    move-wide/from16 v231, v50

    move-wide/from16 v50, v52

    move-wide/from16 v52, v231

    .end local v119    # "btTxTotalBytes":J
    .local v50, "whichBatteryScreenOffRealtime":J
    .local v52, "dischargeScreenOffCount":J
    .local v56, "powerSaveModeEnabledTime":J
    .local v70, "deviceIdleModeLightTime":J
    .local v75, "deviceIdleModeFullTime":J
    .local v85, "deviceLightIdlingTime":J
    .local v88, "mobileTxTotalBytes":J
    .local v101, "mobileRxTotalPackets":J
    .local v103, "mobileTxTotalPackets":J
    .local v118, "btRxTotalBytes":J
    .local v129, "btTxTotalBytes":J
    move-object/from16 v9, v69

    move-object/from16 v120, v6

    move-wide/from16 v156, v136

    move-object/from16 v6, v143

    move-wide/from16 v136, v47

    move-object/from16 v48, v7

    move-object/from16 v47, v10

    move-object/from16 v7, v131

    .end local v6    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v10    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v136    # "whichBatteryRealtime":J
    .local v47, "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v120, "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .local v156, "whichBatteryRealtime":J
    move-object/from16 v10, v45

    move/from16 v5, p5

    move-object/from16 v158, v133

    move-object/from16 v133, v12

    move-wide/from16 v225, v116

    move-object/from16 v117, v1

    move-object v1, v11

    move-object/from16 v116, v93

    move/from16 v93, v87

    move-object/from16 v87, v68

    move-object/from16 v68, v140

    move-wide/from16 v140, v225

    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v68, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v87, "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    .local v93, "numWifiRxBins":I
    .local v116, "gpsSignalQualityDescription":[Ljava/lang/String;
    .local v117, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v140, "bluetoothScanTimeMs":J
    move-wide v11, v3

    move-object/from16 v138, v0

    move-object/from16 v131, v1

    move-object/from16 v159, v13

    move-object/from16 v160, v133

    const/4 v1, 0x0

    move/from16 v0, p4

    move/from16 v13, p4

    move-object/from16 v14, p3

    move-object v15, v2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    .line 5916
    .end local v2    # "timerName":Ljava/lang/String;
    .end local v45    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v117    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-object/from16 v15, p2

    move v9, v0

    move-object/from16 v10, v47

    move-object/from16 v8, v69

    move-object/from16 v6, v120

    move-object/from16 v11, v131

    move-object/from16 v0, v138

    move-object/from16 v133, v158

    move-object/from16 v13, v159

    move-object/from16 v12, v160

    move-object/from16 v131, v7

    move-object/from16 v7, v48

    move-wide/from16 v47, v136

    move-wide/from16 v136, v156

    move-object/from16 v140, v68

    move-object/from16 v68, v87

    move/from16 v87, v93

    move-object/from16 v93, v116

    move-wide/from16 v116, v225

    move-wide/from16 v227, v118

    move-wide/from16 v119, v129

    move-wide/from16 v129, v227

    move-wide/from16 v229, v75

    move-wide/from16 v75, v103

    move-wide/from16 v103, v101

    move-wide/from16 v101, v88

    move-wide/from16 v88, v70

    move-wide/from16 v70, v229

    move-wide/from16 v231, v56

    move-wide/from16 v56, v85

    move-wide/from16 v85, v231

    move-wide/from16 v233, v50

    move-wide/from16 v50, v52

    move-wide/from16 v52, v233

    goto/16 :goto_126f

    .line 5912
    .end local v47    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v69    # "sb":Ljava/lang/StringBuilder;
    .end local v118    # "btRxTotalBytes":J
    .end local v120    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v156    # "whichBatteryRealtime":J
    .restart local v6    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v10    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v50, "dischargeScreenOffCount":J
    .local v52, "whichBatteryScreenOffRealtime":J
    .local v56, "deviceLightIdlingTime":J
    .local v68, "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    .local v70, "deviceIdleModeFullTime":J
    .local v75, "mobileTxTotalPackets":J
    .local v85, "powerSaveModeEnabledTime":J
    .local v87, "numWifiRxBins":I
    .local v88, "deviceIdleModeLightTime":J
    .local v93, "gpsSignalQualityDescription":[Ljava/lang/String;
    .local v101, "mobileTxTotalBytes":J
    .local v103, "mobileRxTotalPackets":J
    .local v116, "bluetoothScanTimeMs":J
    .restart local v119    # "btTxTotalBytes":J
    .local v129, "btRxTotalBytes":J
    .restart local v136    # "whichBatteryRealtime":J
    .local v140, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    :cond_1329
    move/from16 v5, p5

    move-object/from16 v69, v8

    move v0, v9

    move-object/from16 v160, v12

    move-object/from16 v159, v13

    move-object/from16 v158, v133

    move-wide/from16 v156, v136

    const/4 v1, 0x0

    move-wide/from16 v136, v47

    move-object/from16 v48, v7

    move-object/from16 v47, v10

    move-object/from16 v7, v131

    move-object/from16 v131, v11

    move-wide/from16 v225, v119

    move-object/from16 v120, v6

    move-wide/from16 v118, v129

    move-object/from16 v6, v143

    move-wide/from16 v129, v225

    move/from16 v227, v87

    move-object/from16 v87, v68

    move-object/from16 v68, v140

    move-wide/from16 v140, v116

    move-object/from16 v116, v93

    move/from16 v93, v227

    move-wide/from16 v228, v101

    move-wide/from16 v101, v103

    move-wide/from16 v103, v75

    move-wide/from16 v75, v70

    move-wide/from16 v70, v88

    move-wide/from16 v88, v228

    move-wide/from16 v230, v56

    move-wide/from16 v56, v85

    move-wide/from16 v85, v230

    move-wide/from16 v232, v50

    move-wide/from16 v50, v52

    move-wide/from16 v52, v232

    .end local v6    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v119    # "btTxTotalBytes":J
    .end local v136    # "whichBatteryRealtime":J
    .restart local v47    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v50, "whichBatteryScreenOffRealtime":J
    .local v52, "dischargeScreenOffCount":J
    .local v56, "powerSaveModeEnabledTime":J
    .local v68, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v69    # "sb":Ljava/lang/StringBuilder;
    .local v70, "deviceIdleModeLightTime":J
    .local v75, "deviceIdleModeFullTime":J
    .local v85, "deviceLightIdlingTime":J
    .local v87, "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    .local v88, "mobileTxTotalBytes":J
    .local v93, "numWifiRxBins":I
    .local v101, "mobileRxTotalPackets":J
    .local v103, "mobileTxTotalPackets":J
    .local v116, "gpsSignalQualityDescription":[Ljava/lang/String;
    .restart local v118    # "btRxTotalBytes":J
    .restart local v120    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .local v129, "btTxTotalBytes":J
    .local v140, "bluetoothScanTimeMs":J
    .restart local v156    # "whichBatteryRealtime":J
    goto :goto_13b6

    .line 5911
    .end local v47    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v69    # "sb":Ljava/lang/StringBuilder;
    .end local v118    # "btRxTotalBytes":J
    .end local v120    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v156    # "whichBatteryRealtime":J
    .restart local v6    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v10    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v50, "dischargeScreenOffCount":J
    .local v52, "whichBatteryScreenOffRealtime":J
    .local v56, "deviceLightIdlingTime":J
    .local v68, "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    .local v70, "deviceIdleModeFullTime":J
    .local v75, "mobileTxTotalPackets":J
    .local v85, "powerSaveModeEnabledTime":J
    .local v87, "numWifiRxBins":I
    .local v88, "deviceIdleModeLightTime":J
    .local v93, "gpsSignalQualityDescription":[Ljava/lang/String;
    .local v101, "mobileTxTotalBytes":J
    .local v103, "mobileRxTotalPackets":J
    .local v116, "bluetoothScanTimeMs":J
    .restart local v119    # "btTxTotalBytes":J
    .local v129, "btRxTotalBytes":J
    .restart local v136    # "whichBatteryRealtime":J
    .local v140, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    :cond_1370
    move/from16 v5, p5

    move-object/from16 v69, v8

    move v0, v9

    move-object/from16 v160, v12

    move-object/from16 v159, v13

    move-object/from16 v158, v133

    move-wide/from16 v156, v136

    const/4 v1, 0x0

    move-wide/from16 v136, v47

    move-object/from16 v48, v7

    move-object/from16 v47, v10

    move-object/from16 v7, v131

    move-object/from16 v131, v11

    move-wide/from16 v225, v119

    move-object/from16 v120, v6

    move-wide/from16 v118, v129

    move-object/from16 v6, v143

    move-wide/from16 v129, v225

    move/from16 v227, v87

    move-object/from16 v87, v68

    move-object/from16 v68, v140

    move-wide/from16 v140, v116

    move-object/from16 v116, v93

    move/from16 v93, v227

    move-wide/from16 v228, v101

    move-wide/from16 v101, v103

    move-wide/from16 v103, v75

    move-wide/from16 v75, v70

    move-wide/from16 v70, v88

    move-wide/from16 v88, v228

    move-wide/from16 v230, v56

    move-wide/from16 v56, v85

    move-wide/from16 v85, v230

    move-wide/from16 v232, v50

    move-wide/from16 v50, v52

    move-wide/from16 v52, v232

    .line 5918
    .end local v6    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v119    # "btTxTotalBytes":J
    .end local v136    # "whichBatteryRealtime":J
    .restart local v47    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v50, "whichBatteryScreenOffRealtime":J
    .local v52, "dischargeScreenOffCount":J
    .local v56, "powerSaveModeEnabledTime":J
    .local v68, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v69    # "sb":Ljava/lang/StringBuilder;
    .local v70, "deviceIdleModeLightTime":J
    .local v75, "deviceIdleModeFullTime":J
    .local v85, "deviceLightIdlingTime":J
    .local v87, "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    .local v88, "mobileTxTotalBytes":J
    .local v93, "numWifiRxBins":I
    .local v101, "mobileRxTotalPackets":J
    .local v103, "mobileTxTotalPackets":J
    .local v116, "gpsSignalQualityDescription":[Ljava/lang/String;
    .restart local v118    # "btRxTotalBytes":J
    .restart local v120    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .local v129, "btTxTotalBytes":J
    .local v140, "bluetoothScanTimeMs":J
    .restart local v156    # "whichBatteryRealtime":J
    :goto_13b6
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1400

    .line 5909
    .end local v47    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v69    # "sb":Ljava/lang/StringBuilder;
    .end local v118    # "btRxTotalBytes":J
    .end local v120    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v156    # "whichBatteryRealtime":J
    .restart local v6    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v10    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v50, "dischargeScreenOffCount":J
    .local v52, "whichBatteryScreenOffRealtime":J
    .local v56, "deviceLightIdlingTime":J
    .local v68, "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    .local v70, "deviceIdleModeFullTime":J
    .local v75, "mobileTxTotalPackets":J
    .local v85, "powerSaveModeEnabledTime":J
    .local v87, "numWifiRxBins":I
    .local v88, "deviceIdleModeLightTime":J
    .local v93, "gpsSignalQualityDescription":[Ljava/lang/String;
    .local v101, "mobileTxTotalBytes":J
    .local v103, "mobileRxTotalPackets":J
    .local v116, "bluetoothScanTimeMs":J
    .restart local v119    # "btTxTotalBytes":J
    .local v129, "btRxTotalBytes":J
    .restart local v136    # "whichBatteryRealtime":J
    .local v140, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    :cond_13ba
    move/from16 v5, p5

    move-object/from16 v69, v8

    move v0, v9

    move-object/from16 v160, v12

    move-object/from16 v159, v13

    move-object/from16 v158, v133

    move-wide/from16 v156, v136

    const/4 v1, 0x0

    move-wide/from16 v136, v47

    move-object/from16 v48, v7

    move-object/from16 v47, v10

    move-object/from16 v7, v131

    move-object/from16 v131, v11

    move-wide/from16 v225, v119

    move-object/from16 v120, v6

    move-wide/from16 v118, v129

    move-object/from16 v6, v143

    move-wide/from16 v129, v225

    move/from16 v227, v87

    move-object/from16 v87, v68

    move-object/from16 v68, v140

    move-wide/from16 v140, v116

    move-object/from16 v116, v93

    move/from16 v93, v227

    move-wide/from16 v228, v101

    move-wide/from16 v101, v103

    move-wide/from16 v103, v75

    move-wide/from16 v75, v70

    move-wide/from16 v70, v88

    move-wide/from16 v88, v228

    move-wide/from16 v230, v56

    move-wide/from16 v56, v85

    move-wide/from16 v85, v230

    move-wide/from16 v232, v50

    move-wide/from16 v50, v52

    move-wide/from16 v52, v232

    .line 5936
    .end local v6    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v119    # "btTxTotalBytes":J
    .end local v136    # "whichBatteryRealtime":J
    .restart local v47    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v50, "whichBatteryScreenOffRealtime":J
    .local v52, "dischargeScreenOffCount":J
    .local v56, "powerSaveModeEnabledTime":J
    .local v68, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v69    # "sb":Ljava/lang/StringBuilder;
    .local v70, "deviceIdleModeLightTime":J
    .local v75, "deviceIdleModeFullTime":J
    .local v85, "deviceLightIdlingTime":J
    .local v87, "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    .local v88, "mobileTxTotalBytes":J
    .local v93, "numWifiRxBins":I
    .local v101, "mobileRxTotalPackets":J
    .local v103, "mobileTxTotalPackets":J
    .local v116, "gpsSignalQualityDescription":[Ljava/lang/String;
    .restart local v118    # "btRxTotalBytes":J
    .restart local v120    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .local v129, "btTxTotalBytes":J
    .local v140, "bluetoothScanTimeMs":J
    .restart local v156    # "whichBatteryRealtime":J
    :goto_1400
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v15

    .line 5937
    .local v15, "cpuFreqs":[J
    if-eqz v15, :cond_142f

    .line 5938
    move-object/from16 v14, v69

    .end local v69    # "sb":Ljava/lang/StringBuilder;
    .local v14, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5939
    const-string v2, "  CPU freqs:"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5940
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1411
    array-length v8, v15

    if-ge v2, v8, :cond_1422

    .line 5941
    const/16 v8, 0x20

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-wide v9, v15, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5940
    add-int/lit8 v2, v2, 0x1

    goto :goto_1411

    .line 5943
    .end local v2    # "i":I
    :cond_1422
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v13, p2

    invoke-virtual {v13, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5944
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1433

    .line 5937
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v69    # "sb":Ljava/lang/StringBuilder;
    :cond_142f
    move-object/from16 v13, p2

    move-object/from16 v14, v69

    .line 5947
    .end local v69    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :goto_1433
    const/4 v2, 0x0

    move v11, v2

    .local v11, "iu":I
    :goto_1435
    move/from16 v12, v135

    .end local v135    # "NU":I
    .local v12, "NU":I
    if-ge v11, v12, :cond_25cd

    .line 5948
    move-object/from16 v10, v132

    .end local v132    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v10, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 5949
    .local v9, "uid":I
    if-ltz v5, :cond_146e

    if-eq v9, v5, :cond_146e

    const/16 v2, 0x3e8

    if-eq v9, v2, :cond_146e

    .line 5950
    move-object/from16 v2, p3

    move-wide/from16 v213, v3

    move-object/from16 v196, v6

    move-object/from16 v139, v7

    move-object/from16 v117, v10

    move/from16 v69, v11

    move-object v1, v13

    move-object v4, v14

    move-object/from16 v134, v15

    move-object/from16 v10, v48

    move-wide/from16 v209, v94

    move-wide/from16 v154, v125

    move-wide/from16 v14, v127

    move-object/from16 v125, v131

    move-object/from16 v132, v159

    const/16 v197, 0x1

    move/from16 v48, v12

    move-object/from16 v159, v158

    move v12, v0

    move-object/from16 v158, v149

    goto/16 :goto_25a7

    .line 5953
    :cond_146e
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/os/BatteryStats$Uid;

    .line 5955
    .local v8, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5956
    const-string v2, "  "

    invoke-virtual {v13, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5957
    invoke-static {v13, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5958
    const-string v2, ":"

    invoke-virtual {v13, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5959
    const/16 v45, 0x0

    .line 5961
    .local v45, "uidActivity":Z
    move/from16 v69, v11

    move/from16 v135, v12

    .end local v11    # "iu":I
    .end local v12    # "NU":I
    .local v69, "iu":I
    .restart local v135    # "NU":I
    invoke-virtual {v8, v1, v0}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v11

    .line 5962
    .local v11, "mobileRxBytes":J
    move/from16 v117, v9

    move-object/from16 v132, v10

    const/4 v2, 0x1

    .end local v9    # "uid":I
    .end local v10    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v117, "uid":I
    .restart local v132    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v8, v2, v0}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v9

    .line 5963
    .local v9, "mobileTxBytes":J
    move-object/from16 v143, v6

    const/4 v2, 0x2

    invoke-virtual {v8, v2, v0}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v5

    .line 5964
    .local v5, "wifiRxBytes":J
    const/4 v2, 0x3

    invoke-virtual {v8, v2, v0}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    .line 5965
    .local v1, "wifiTxBytes":J
    move-wide/from16 v144, v1

    .end local v1    # "wifiTxBytes":J
    .local v144, "wifiTxBytes":J
    const/4 v1, 0x4

    invoke-virtual {v8, v1, v0}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    .line 5966
    .local v1, "btRxBytes":J
    move-wide/from16 v146, v1

    .end local v1    # "btRxBytes":J
    .local v146, "btRxBytes":J
    const/4 v1, 0x5

    invoke-virtual {v8, v1, v0}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    .line 5968
    .local v1, "btTxBytes":J
    move-wide/from16 v150, v1

    move-wide/from16 v152, v5

    const/4 v1, 0x0

    .end local v1    # "btTxBytes":J
    .end local v5    # "wifiRxBytes":J
    .local v150, "btTxBytes":J
    .local v152, "wifiRxBytes":J
    invoke-virtual {v8, v1, v0}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v5

    .line 5969
    .local v5, "mobileRxPackets":J
    move-object/from16 v138, v14

    move-object/from16 v134, v15

    const/4 v2, 0x1

    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "cpuFreqs":[J
    .local v134, "cpuFreqs":[J
    .local v138, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v2, v0}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v14

    .line 5970
    .local v14, "mobileTxPackets":J
    move-wide/from16 v154, v14

    const/4 v1, 0x2

    .end local v14    # "mobileTxPackets":J
    .local v154, "mobileTxPackets":J
    invoke-virtual {v8, v1, v0}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    .line 5971
    .local v13, "wifiRxPackets":J
    const/4 v15, 0x3

    move-wide/from16 v161, v13

    .end local v13    # "wifiRxPackets":J
    .local v161, "wifiRxPackets":J
    invoke-virtual {v8, v15, v0}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v14

    .line 5973
    .local v14, "wifiTxPackets":J
    move-wide/from16 v163, v14

    .end local v14    # "wifiTxPackets":J
    .local v163, "wifiTxPackets":J
    invoke-virtual {v8, v0}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v13

    .line 5974
    .local v13, "uidMobileActiveTime":J
    invoke-virtual {v8, v0}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v15

    .line 5976
    .local v15, "uidMobileActiveCount":I
    invoke-virtual {v8, v3, v4, v0}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v1

    .line 5977
    .local v1, "fullWifiLockOnTime":J
    move-wide/from16 v165, v1

    .end local v1    # "fullWifiLockOnTime":J
    .local v165, "fullWifiLockOnTime":J
    invoke-virtual {v8, v3, v4, v0}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v1

    .line 5978
    .local v1, "wifiScanTime":J
    move-wide/from16 v167, v1

    .end local v1    # "wifiScanTime":J
    .local v167, "wifiScanTime":J
    invoke-virtual {v8, v0}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v2

    .line 5979
    .local v2, "wifiScanCount":I
    invoke-virtual {v8, v0}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v1

    .line 5981
    .local v1, "wifiScanCountBg":I
    move/from16 v169, v1

    move/from16 v148, v2

    .end local v1    # "wifiScanCountBg":I
    .end local v2    # "wifiScanCount":I
    .local v148, "wifiScanCount":I
    .local v169, "wifiScanCountBg":I
    invoke-virtual {v8, v3, v4}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v1

    .line 5982
    .local v1, "wifiScanActualTime":J
    move-wide/from16 v170, v1

    .end local v1    # "wifiScanActualTime":J
    .local v170, "wifiScanActualTime":J
    invoke-virtual {v8, v3, v4}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v1

    .line 5983
    .local v1, "wifiScanActualTimeBg":J
    move-wide/from16 v172, v1

    .end local v1    # "wifiScanActualTimeBg":J
    .local v172, "wifiScanActualTimeBg":J
    invoke-virtual {v8, v3, v4, v0}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v1

    .line 5985
    .local v1, "uidWifiRunningTime":J
    move-wide/from16 v174, v3

    .end local v3    # "rawRealtime":J
    .local v174, "rawRealtime":J
    invoke-virtual {v8, v0}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v3

    .line 5986
    .local v3, "mobileWakeup":J
    move-wide/from16 v176, v1

    .end local v1    # "uidWifiRunningTime":J
    .local v176, "uidWifiRunningTime":J
    invoke-virtual {v8, v0}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v1

    .line 5988
    .local v1, "wifiWakeup":J
    cmp-long v178, v11, v136

    move-wide/from16 v179, v1

    .end local v1    # "wifiWakeup":J
    .local v179, "wifiWakeup":J
    const-string v2, " received, "

    if-gtz v178, :cond_1534

    cmp-long v1, v9, v136

    if-gtz v1, :cond_1534

    cmp-long v1, v5, v136

    if-gtz v1, :cond_1534

    cmp-long v1, v154, v136

    if-lez v1, :cond_1525

    goto :goto_1534

    :cond_1525
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v183, v48

    move-wide/from16 v181, v161

    move-object/from16 v48, v8

    move-wide/from16 v161, v11

    move-wide/from16 v11, v154

    goto :goto_156e

    .line 5990
    :cond_1534
    :goto_1534
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    Mobile network: "

    move-object/from16 v0, p2

    move-wide/from16 v181, v161

    .end local v161    # "wifiRxPackets":J
    .local v181, "wifiRxPackets":J
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5991
    move-object/from16 v1, p0

    move-object/from16 v183, v48

    move-object/from16 v48, v8

    .end local v8    # "u":Landroid/os/BatteryStats$Uid;
    .local v48, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v1, v11, v12}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5992
    invoke-virtual {v1, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5993
    const-string v8, " sent (packets "

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 5994
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v161, v11

    move-wide/from16 v11, v154

    .end local v154    # "mobileTxPackets":J
    .local v11, "mobileTxPackets":J
    .local v161, "mobileRxBytes":J
    invoke-virtual {v0, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    const-string v8, " sent)"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5996
    :goto_156e
    cmp-long v8, v13, v136

    if-gtz v8, :cond_1580

    if-lez v15, :cond_1575

    goto :goto_1580

    :cond_1575
    move-wide/from16 v154, v9

    move-wide/from16 v184, v125

    move-object/from16 v8, v138

    move-object/from16 v138, v2

    move-wide/from16 v125, v5

    goto :goto_15e4

    .line 5997
    :cond_1580
    :goto_1580
    move-object/from16 v8, v138

    move-object/from16 v138, v2

    const/4 v2, 0x0

    .end local v138    # "sb":Ljava/lang/StringBuilder;
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5998
    move-object/from16 v2, p3

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v154, v9

    .end local v9    # "mobileTxBytes":J
    .local v154, "mobileTxBytes":J
    const-string v9, "    Mobile radio active: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5999
    div-long v9, v13, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6000
    move-object/from16 v9, v143

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6001
    move-wide/from16 v9, v125

    .end local v125    # "mobileActiveTime":J
    .local v9, "mobileActiveTime":J
    invoke-virtual {v1, v13, v14, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6002
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v131

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6003
    add-long v125, v5, v11

    .line 6004
    .local v125, "packets":J
    cmp-long v131, v125, v136

    if-nez v131, :cond_15bf

    .line 6005
    const-wide/16 v125, 0x1

    move-object/from16 v131, v2

    move-wide/from16 v1, v125

    goto :goto_15c3

    .line 6004
    :cond_15bf
    move-object/from16 v131, v2

    move-wide/from16 v1, v125

    .line 6007
    .end local v125    # "packets":J
    .local v1, "packets":J
    :goto_15c3
    move-wide/from16 v125, v5

    .end local v5    # "mobileRxPackets":J
    .local v125, "mobileRxPackets":J
    const-string v5, " @ "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6008
    div-long v5, v13, v16

    long-to-double v5, v5

    move-wide/from16 v184, v9

    .end local v9    # "mobileActiveTime":J
    .local v184, "mobileActiveTime":J
    long-to-double v9, v1

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6009
    const-string v5, " mspp"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6010
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6013
    .end local v1    # "packets":J
    :goto_15e4
    cmp-long v1, v3, v136

    if-lez v1, :cond_1601

    .line 6014
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6015
    move-object/from16 v2, p3

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6016
    const-string v5, "    Mobile radio AP wakeups: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6017
    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6018
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1604

    .line 6013
    :cond_1601
    move-object/from16 v2, p3

    const/4 v1, 0x0

    .line 6021
    :goto_1604
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6022
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v6

    .line 6021
    const-string v9, "Cellular"

    move-object v10, v0

    move/from16 v133, v15

    move/from16 v15, p4

    .end local v15    # "uidMobileActiveCount":I
    .local v133, "uidMobileActiveCount":I
    move-object/from16 v0, p0

    move v15, v1

    move-wide/from16 v186, v13

    move-object/from16 v142, v131

    move-wide/from16 v188, v146

    move-wide/from16 v190, v150

    move-wide/from16 v192, v165

    move-wide/from16 v194, v167

    move/from16 v13, v169

    move-wide/from16 v196, v170

    move-wide/from16 v198, v172

    move-wide/from16 v200, v176

    move-wide/from16 v202, v179

    const/16 v131, 0x2

    move-object/from16 v14, p0

    move-wide/from16 v225, v11

    move-wide/from16 v11, v144

    move-wide/from16 v144, v225

    .end local v146    # "btRxBytes":J
    .end local v150    # "btTxBytes":J
    .end local v165    # "fullWifiLockOnTime":J
    .end local v167    # "wifiScanTime":J
    .end local v169    # "wifiScanCountBg":I
    .end local v170    # "wifiScanActualTime":J
    .end local v172    # "wifiScanActualTimeBg":J
    .end local v176    # "uidWifiRunningTime":J
    .end local v179    # "wifiWakeup":J
    .local v11, "wifiTxBytes":J
    .local v13, "wifiScanCountBg":I
    .local v144, "mobileTxPackets":J
    .local v186, "uidMobileActiveTime":J
    .local v188, "btRxBytes":J
    .local v190, "btTxBytes":J
    .local v192, "fullWifiLockOnTime":J
    .local v194, "wifiScanTime":J
    .local v196, "wifiScanActualTime":J
    .local v198, "wifiScanActualTimeBg":J
    .local v200, "uidWifiRunningTime":J
    .local v202, "wifiWakeup":J
    move-object/from16 v1, p2

    move/from16 v15, v148

    move-object/from16 v225, v138

    move-object/from16 v138, v7

    move-object/from16 v7, v225

    .end local v148    # "wifiScanCount":I
    .local v15, "wifiScanCount":I
    move-object v2, v8

    move-wide/from16 v146, v3

    move-wide/from16 v205, v174

    .end local v3    # "mobileWakeup":J
    .end local v174    # "rawRealtime":J
    .local v146, "mobileWakeup":J
    .local v205, "rawRealtime":J
    move-object v3, v5

    move-object v4, v9

    move-wide/from16 v150, v125

    move-object/from16 v125, v8

    move-wide/from16 v8, v152

    .end local v152    # "wifiRxBytes":J
    .local v8, "wifiRxBytes":J
    .local v125, "sb":Ljava/lang/StringBuilder;
    .local v150, "mobileRxPackets":J
    move-object v5, v6

    move-object/from16 v207, v143

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 6024
    cmp-long v0, v8, v136

    if-gtz v0, :cond_167a

    cmp-long v0, v11, v136

    if-gtz v0, :cond_167a

    move-wide/from16 v5, v181

    .end local v181    # "wifiRxPackets":J
    .local v5, "wifiRxPackets":J
    cmp-long v0, v5, v136

    if-gtz v0, :cond_167c

    cmp-long v0, v163, v136

    if-lez v0, :cond_1677

    goto :goto_167c

    :cond_1677
    move-wide/from16 v3, v163

    goto :goto_16aa

    .end local v5    # "wifiRxPackets":J
    .restart local v181    # "wifiRxPackets":J
    :cond_167a
    move-wide/from16 v5, v181

    .line 6025
    .end local v181    # "wifiRxPackets":J
    .restart local v5    # "wifiRxPackets":J
    :cond_167c
    :goto_167c
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Wi-Fi network: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6026
    invoke-virtual {v14, v8, v9}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6027
    invoke-virtual {v14, v11, v12}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6028
    const-string v0, " sent (packets "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 6029
    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v163

    .end local v163    # "wifiTxPackets":J
    .local v3, "wifiTxPackets":J
    invoke-virtual {v10, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " sent)"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6032
    :goto_16aa
    move-wide/from16 v1, v192

    .end local v192    # "fullWifiLockOnTime":J
    .local v1, "fullWifiLockOnTime":J
    cmp-long v0, v1, v136

    if-nez v0, :cond_170c

    move-wide/from16 v152, v11

    move-wide/from16 v11, v194

    .end local v194    # "wifiScanTime":J
    .local v11, "wifiScanTime":J
    .local v152, "wifiTxBytes":J
    cmp-long v0, v11, v136

    if-nez v0, :cond_16fd

    if-nez v15, :cond_16fd

    if-nez v13, :cond_16fd

    move-wide/from16 v163, v8

    move-wide/from16 v8, v196

    .end local v196    # "wifiScanActualTime":J
    .local v8, "wifiScanActualTime":J
    .local v163, "wifiRxBytes":J
    cmp-long v0, v8, v136

    if-nez v0, :cond_16f2

    move-wide/from16 v181, v5

    move-object/from16 v126, v7

    move-wide/from16 v6, v198

    .end local v5    # "wifiRxPackets":J
    .end local v198    # "wifiScanActualTimeBg":J
    .local v6, "wifiScanActualTimeBg":J
    .restart local v181    # "wifiRxPackets":J
    cmp-long v0, v6, v136

    if-nez v0, :cond_16ed

    move-wide/from16 v165, v3

    move-wide/from16 v4, v200

    .end local v3    # "wifiTxPackets":J
    .end local v200    # "uidWifiRunningTime":J
    .local v4, "uidWifiRunningTime":J
    .local v165, "wifiTxPackets":J
    cmp-long v0, v4, v136

    if-eqz v0, :cond_16d7

    goto :goto_171e

    :cond_16d7
    move-object/from16 v0, p3

    move-wide/from16 v192, v1

    move-wide/from16 v200, v4

    move-wide v1, v6

    move-wide/from16 v196, v8

    move-object v9, v10

    move-object/from16 v3, v125

    move-object/from16 v10, v138

    move-object/from16 v8, v142

    move-wide/from16 v5, v205

    move-object/from16 v7, v207

    goto/16 :goto_17ed

    .end local v4    # "uidWifiRunningTime":J
    .end local v165    # "wifiTxPackets":J
    .restart local v3    # "wifiTxPackets":J
    .restart local v200    # "uidWifiRunningTime":J
    :cond_16ed
    move-wide/from16 v165, v3

    move-wide/from16 v4, v200

    .end local v3    # "wifiTxPackets":J
    .end local v200    # "uidWifiRunningTime":J
    .restart local v4    # "uidWifiRunningTime":J
    .restart local v165    # "wifiTxPackets":J
    goto :goto_171e

    .end local v4    # "uidWifiRunningTime":J
    .end local v6    # "wifiScanActualTimeBg":J
    .end local v165    # "wifiTxPackets":J
    .end local v181    # "wifiRxPackets":J
    .restart local v3    # "wifiTxPackets":J
    .restart local v5    # "wifiRxPackets":J
    .restart local v198    # "wifiScanActualTimeBg":J
    .restart local v200    # "uidWifiRunningTime":J
    :cond_16f2
    move-wide/from16 v165, v3

    move-wide/from16 v181, v5

    move-object/from16 v126, v7

    move-wide/from16 v6, v198

    move-wide/from16 v4, v200

    .end local v3    # "wifiTxPackets":J
    .end local v5    # "wifiRxPackets":J
    .end local v198    # "wifiScanActualTimeBg":J
    .end local v200    # "uidWifiRunningTime":J
    .restart local v4    # "uidWifiRunningTime":J
    .restart local v6    # "wifiScanActualTimeBg":J
    .restart local v165    # "wifiTxPackets":J
    .restart local v181    # "wifiRxPackets":J
    goto :goto_171e

    .end local v4    # "uidWifiRunningTime":J
    .end local v6    # "wifiScanActualTimeBg":J
    .end local v163    # "wifiRxBytes":J
    .end local v165    # "wifiTxPackets":J
    .end local v181    # "wifiRxPackets":J
    .restart local v3    # "wifiTxPackets":J
    .restart local v5    # "wifiRxPackets":J
    .local v8, "wifiRxBytes":J
    .restart local v196    # "wifiScanActualTime":J
    .restart local v198    # "wifiScanActualTimeBg":J
    .restart local v200    # "uidWifiRunningTime":J
    :cond_16fd
    move-wide/from16 v165, v3

    move-wide/from16 v181, v5

    move-object/from16 v126, v7

    move-wide/from16 v163, v8

    move-wide/from16 v8, v196

    move-wide/from16 v6, v198

    move-wide/from16 v4, v200

    .end local v3    # "wifiTxPackets":J
    .end local v5    # "wifiRxPackets":J
    .end local v196    # "wifiScanActualTime":J
    .end local v198    # "wifiScanActualTimeBg":J
    .end local v200    # "uidWifiRunningTime":J
    .restart local v4    # "uidWifiRunningTime":J
    .restart local v6    # "wifiScanActualTimeBg":J
    .local v8, "wifiScanActualTime":J
    .restart local v163    # "wifiRxBytes":J
    .restart local v165    # "wifiTxPackets":J
    .restart local v181    # "wifiRxPackets":J
    goto :goto_171e

    .end local v4    # "uidWifiRunningTime":J
    .end local v6    # "wifiScanActualTimeBg":J
    .end local v152    # "wifiTxBytes":J
    .end local v163    # "wifiRxBytes":J
    .end local v165    # "wifiTxPackets":J
    .end local v181    # "wifiRxPackets":J
    .restart local v3    # "wifiTxPackets":J
    .restart local v5    # "wifiRxPackets":J
    .local v8, "wifiRxBytes":J
    .local v11, "wifiTxBytes":J
    .restart local v194    # "wifiScanTime":J
    .restart local v196    # "wifiScanActualTime":J
    .restart local v198    # "wifiScanActualTimeBg":J
    .restart local v200    # "uidWifiRunningTime":J
    :cond_170c
    move-wide/from16 v165, v3

    move-wide/from16 v181, v5

    move-object/from16 v126, v7

    move-wide/from16 v163, v8

    move-wide/from16 v152, v11

    move-wide/from16 v11, v194

    move-wide/from16 v8, v196

    move-wide/from16 v6, v198

    move-wide/from16 v4, v200

    .line 6035
    .end local v3    # "wifiTxPackets":J
    .end local v5    # "wifiRxPackets":J
    .end local v194    # "wifiScanTime":J
    .end local v196    # "wifiScanActualTime":J
    .end local v198    # "wifiScanActualTimeBg":J
    .end local v200    # "uidWifiRunningTime":J
    .restart local v4    # "uidWifiRunningTime":J
    .restart local v6    # "wifiScanActualTimeBg":J
    .local v8, "wifiScanActualTime":J
    .local v11, "wifiScanTime":J
    .restart local v152    # "wifiTxBytes":J
    .restart local v163    # "wifiRxBytes":J
    .restart local v165    # "wifiTxPackets":J
    .restart local v181    # "wifiRxPackets":J
    :goto_171e
    move-object/from16 v3, v125

    const/4 v0, 0x0

    .end local v125    # "sb":Ljava/lang/StringBuilder;
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6036
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "    Wifi Running: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6037
    move-wide/from16 v198, v6

    .end local v6    # "wifiScanActualTimeBg":J
    .restart local v198    # "wifiScanActualTimeBg":J
    div-long v6, v4, v16

    invoke-static {v3, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6038
    move-object/from16 v7, v207

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v196, v8

    move-wide/from16 v8, v156

    .end local v156    # "whichBatteryRealtime":J
    .local v8, "whichBatteryRealtime":J
    .restart local v196    # "wifiScanActualTime":J
    invoke-virtual {v14, v4, v5, v8, v9}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6039
    const-string v6, ")\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6040
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    Full Wifi Lock: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6041
    move-wide/from16 v200, v4

    .end local v4    # "uidWifiRunningTime":J
    .restart local v200    # "uidWifiRunningTime":J
    div-long v4, v1, v16

    invoke-static {v3, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6042
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1, v2, v8, v9}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6043
    const-string v4, ")\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6044
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    Wifi Scan (blamed): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6045
    div-long v4, v11, v16

    invoke-static {v3, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6046
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11, v12, v8, v9}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6047
    move-object/from16 v10, v138

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6048
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6049
    const-string/jumbo v4, "x\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6051
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    Wifi Scan (actual): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6052
    div-long v4, v196, v16

    invoke-static {v3, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6053
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6054
    move-wide/from16 v192, v1

    move-wide/from16 v5, v205

    const/4 v4, 0x0

    .end local v1    # "fullWifiLockOnTime":J
    .end local v205    # "rawRealtime":J
    .local v5, "rawRealtime":J
    .restart local v192    # "fullWifiLockOnTime":J
    invoke-virtual {v14, v5, v6, v4}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v1

    .line 6053
    move-wide/from16 v8, v196

    .end local v196    # "wifiScanActualTime":J
    .local v8, "wifiScanActualTime":J
    .restart local v156    # "whichBatteryRealtime":J
    invoke-virtual {v14, v8, v9, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6055
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6056
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6057
    const-string/jumbo v1, "x\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6058
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Background Wifi Scan: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6059
    div-long v1, v198, v16

    invoke-static {v3, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6060
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6061
    const/4 v1, 0x0

    .end local v8    # "wifiScanActualTime":J
    .restart local v196    # "wifiScanActualTime":J
    invoke-virtual {v14, v5, v6, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v8

    .line 6060
    move-wide/from16 v1, v198

    .end local v198    # "wifiScanActualTimeBg":J
    .local v1, "wifiScanActualTimeBg":J
    invoke-virtual {v14, v1, v2, v8, v9}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6062
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6063
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6064
    move-object/from16 v8, v142

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6065
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v9, p2

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6068
    :goto_17ed
    move-wide/from16 v194, v11

    move-wide/from16 v11, v202

    .end local v202    # "wifiWakeup":J
    .local v11, "wifiWakeup":J
    .restart local v194    # "wifiScanTime":J
    cmp-long v4, v11, v136

    if-lez v4, :cond_180b

    .line 6069
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6070
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6071
    const-string v4, "    WiFi AP wakeups: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6072
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6073
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6076
    :cond_180b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, "  "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6077
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v125

    .line 6076
    const-string v138, "WiFi"

    move/from16 v148, v15

    move-object/from16 v15, p3

    .end local v15    # "wifiScanCount":I
    .restart local v148    # "wifiScanCount":I
    move-object/from16 v0, p0

    move-wide/from16 v167, v1

    move-wide/from16 v142, v192

    .end local v1    # "wifiScanActualTimeBg":J
    .end local v192    # "fullWifiLockOnTime":J
    .local v142, "fullWifiLockOnTime":J
    .local v167, "wifiScanActualTimeBg":J
    move-object/from16 v1, p2

    move-object v2, v3

    move-object/from16 v139, v8

    move-object v8, v3

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .local v8, "sb":Ljava/lang/StringBuilder;
    move-object v3, v4

    move-wide/from16 v169, v200

    .end local v200    # "uidWifiRunningTime":J
    .local v169, "uidWifiRunningTime":J
    move-object/from16 v4, v138

    move-wide/from16 v202, v11

    move-wide/from16 v171, v181

    move-wide v11, v5

    .end local v5    # "rawRealtime":J
    .end local v181    # "wifiRxPackets":J
    .local v11, "rawRealtime":J
    .local v171, "wifiRxPackets":J
    .restart local v202    # "wifiWakeup":J
    move-object/from16 v5, v125

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 6079
    move-wide/from16 v5, v188

    .end local v188    # "btRxBytes":J
    .local v5, "btRxBytes":J
    cmp-long v0, v5, v136

    if-gtz v0, :cond_1852

    move-wide/from16 v2, v190

    .end local v190    # "btTxBytes":J
    .local v2, "btTxBytes":J
    cmp-long v0, v2, v136

    if-lez v0, :cond_1874

    goto :goto_1854

    .end local v2    # "btTxBytes":J
    .restart local v190    # "btTxBytes":J
    :cond_1852
    move-wide/from16 v2, v190

    .line 6080
    .end local v190    # "btTxBytes":J
    .restart local v2    # "btTxBytes":J
    :goto_1854
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Bluetooth network: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6081
    invoke-virtual {v14, v5, v6}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v126

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6082
    invoke-virtual {v14, v2, v3}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6083
    const-string v0, " sent"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6086
    :cond_1874
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 6087
    .local v4, "bleTimer":Landroid/os/BatteryStats$Timer;
    const-string v1, "\n"

    const-string v0, " times)"

    if-eqz v4, :cond_1a65

    .line 6089
    move/from16 v14, p4

    move-object/from16 v125, v139

    invoke-virtual {v4, v11, v12, v14}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v138

    add-long v138, v138, v18

    move-wide/from16 v190, v2

    .end local v2    # "btTxBytes":J
    .restart local v190    # "btTxBytes":J
    div-long v2, v138, v16

    .line 6091
    .local v2, "totalTimeMs":J
    cmp-long v126, v2, v136

    if-eqz v126, :cond_1a4f

    .line 6092
    move-wide/from16 v188, v5

    .end local v5    # "btRxBytes":J
    .restart local v188    # "btRxBytes":J
    invoke-virtual {v4, v14}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 6093
    .local v5, "count":I
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 6094
    .local v6, "bleTimerBg":Landroid/os/BatteryStats$Timer;
    if-eqz v6, :cond_18a1

    invoke-virtual {v6, v14}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v126

    goto :goto_18a3

    :cond_18a1
    const/16 v126, 0x0

    :goto_18a3
    move/from16 v138, v126

    .line 6096
    .local v138, "countBg":I
    move-object/from16 v126, v10

    move-wide/from16 v205, v11

    move-wide/from16 v10, v94

    move/from16 v94, v13

    .end local v11    # "rawRealtime":J
    .end local v13    # "wifiScanCountBg":I
    .local v10, "rawRealtimeMs":J
    .local v94, "wifiScanCountBg":I
    .restart local v205    # "rawRealtime":J
    invoke-virtual {v4, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v12

    .line 6097
    .local v12, "actualTimeMs":J
    if-eqz v6, :cond_18b8

    .line 6098
    invoke-virtual {v6, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v173

    goto :goto_18ba

    :cond_18b8
    move-wide/from16 v173, v136

    :goto_18ba
    move-wide/from16 v175, v173

    .line 6100
    .local v175, "actualTimeMsBg":J
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v95

    if-eqz v95, :cond_18cd

    .line 6101
    move-object/from16 v207, v7

    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v7

    goto :goto_18d0

    :cond_18cd
    move-object/from16 v207, v7

    const/4 v7, 0x0

    .line 6102
    .local v7, "resultCount":I
    :goto_18d0
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v95

    if-eqz v95, :cond_18df

    .line 6103
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v9

    goto :goto_18e0

    :cond_18df
    const/4 v9, 0x0

    .line 6105
    .local v9, "resultCountBg":I
    :goto_18e0
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    .line 6106
    .local v14, "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v14, :cond_18eb

    .line 6107
    invoke-virtual {v14, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v173

    goto :goto_18ed

    :cond_18eb
    move-wide/from16 v173, v136

    :goto_18ed
    move-wide/from16 v177, v173

    .line 6108
    .local v177, "unoptimizedScanTotalTime":J
    if-eqz v14, :cond_18f6

    .line 6109
    invoke-virtual {v14, v10, v11}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v173

    goto :goto_18f8

    :cond_18f6
    move-wide/from16 v173, v136

    :goto_18f8
    move-wide/from16 v179, v173

    .line 6111
    .local v179, "unoptimizedScanMaxTime":J
    nop

    .line 6112
    move-object/from16 v95, v14

    .end local v14    # "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    .local v95, "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    .line 6113
    .local v14, "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    if-eqz v14, :cond_1908

    .line 6114
    invoke-virtual {v14, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v173

    goto :goto_190a

    :cond_1908
    move-wide/from16 v173, v136

    :goto_190a
    move-wide/from16 v181, v173

    .line 6115
    .local v181, "unoptimizedScanTotalTimeBg":J
    if-eqz v14, :cond_1913

    .line 6116
    invoke-virtual {v14, v10, v11}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v173

    goto :goto_1915

    :cond_1913
    move-wide/from16 v173, v136

    :goto_1915
    move-wide/from16 v192, v173

    .line 6118
    .local v192, "unoptimizedScanMaxTimeBg":J
    move-wide/from16 v173, v10

    const/4 v10, 0x0

    .end local v10    # "rawRealtimeMs":J
    .local v173, "rawRealtimeMs":J
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6119
    cmp-long v10, v12, v2

    if-eqz v10, :cond_1946

    .line 6120
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6121
    const-string v10, "    Bluetooth Scan (total blamed realtime): "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6122
    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6123
    move-object/from16 v11, v149

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6124
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6125
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6126
    invoke-virtual {v4}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v10

    if-eqz v10, :cond_1942

    .line 6127
    const-string v10, " (currently running)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6129
    :cond_1942
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1948

    .line 6119
    :cond_1946
    move-object/from16 v11, v149

    .line 6132
    :goto_1948
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6133
    const-string v10, "    Bluetooth Scan (total actual realtime): "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6134
    invoke-static {v8, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6135
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6136
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6137
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6138
    invoke-virtual {v4}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v10

    if-eqz v10, :cond_1967

    .line 6139
    const-string v10, " (currently running)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6141
    :cond_1967
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6142
    move-wide/from16 v198, v2

    move-wide/from16 v2, v175

    .end local v175    # "actualTimeMsBg":J
    .local v2, "actualTimeMsBg":J
    .local v198, "totalTimeMs":J
    cmp-long v10, v2, v136

    if-gtz v10, :cond_197a

    move/from16 v10, v138

    .end local v138    # "countBg":I
    .local v10, "countBg":I
    if-lez v10, :cond_1977

    goto :goto_197c

    :cond_1977
    move-object/from16 v138, v4

    goto :goto_19a2

    .end local v10    # "countBg":I
    .restart local v138    # "countBg":I
    :cond_197a
    move/from16 v10, v138

    .line 6143
    .end local v138    # "countBg":I
    .restart local v10    # "countBg":I
    :goto_197c
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6144
    move-object/from16 v138, v4

    .end local v4    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .local v138, "bleTimer":Landroid/os/BatteryStats$Timer;
    const-string v4, "    Bluetooth Scan (background realtime): "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6145
    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6146
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6147
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6148
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6149
    if-eqz v6, :cond_199f

    invoke-virtual {v6}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v4

    if-eqz v4, :cond_199f

    .line 6150
    const-string v4, " (currently running in background)"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6152
    :cond_199f
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6155
    :goto_19a2
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6156
    const-string v4, "    Bluetooth Scan Results: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6157
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6158
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6159
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6160
    const-string v4, " in background)"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6162
    move-wide/from16 v175, v2

    move-wide/from16 v2, v177

    .end local v177    # "unoptimizedScanTotalTime":J
    .local v2, "unoptimizedScanTotalTime":J
    .restart local v175    # "actualTimeMsBg":J
    cmp-long v4, v2, v136

    if-gtz v4, :cond_19d1

    move/from16 v139, v5

    move-wide/from16 v4, v181

    .end local v5    # "count":I
    .end local v181    # "unoptimizedScanTotalTimeBg":J
    .local v4, "unoptimizedScanTotalTimeBg":J
    .local v139, "count":I
    cmp-long v149, v4, v136

    if-lez v149, :cond_19c9

    goto :goto_19d5

    :cond_19c9
    move-object/from16 v149, v0

    move-wide/from16 v177, v2

    move-wide/from16 v2, v192

    goto/16 :goto_1a41

    .end local v4    # "unoptimizedScanTotalTimeBg":J
    .end local v139    # "count":I
    .restart local v5    # "count":I
    .restart local v181    # "unoptimizedScanTotalTimeBg":J
    :cond_19d1
    move/from16 v139, v5

    move-wide/from16 v4, v181

    .line 6163
    .end local v5    # "count":I
    .end local v181    # "unoptimizedScanTotalTimeBg":J
    .restart local v4    # "unoptimizedScanTotalTimeBg":J
    .restart local v139    # "count":I
    :goto_19d5
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6164
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6165
    move-object/from16 v149, v0

    const-string v0, "    Unoptimized Bluetooth Scan (realtime): "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6166
    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6167
    const-string v0, " (max "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6168
    move-wide/from16 v177, v2

    move-wide/from16 v2, v179

    .end local v179    # "unoptimizedScanMaxTime":J
    .local v2, "unoptimizedScanMaxTime":J
    .restart local v177    # "unoptimizedScanTotalTime":J
    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6169
    move-object/from16 v0, v160

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6170
    if-eqz v95, :cond_1a09

    .line 6171
    invoke-virtual/range {v95 .. v95}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v160

    if-eqz v160, :cond_1a06

    .line 6172
    move-wide/from16 v179, v2

    .end local v2    # "unoptimizedScanMaxTime":J
    .restart local v179    # "unoptimizedScanMaxTime":J
    const-string v2, " (currently running unoptimized)"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a0b

    .line 6171
    .end local v179    # "unoptimizedScanMaxTime":J
    .restart local v2    # "unoptimizedScanMaxTime":J
    :cond_1a06
    move-wide/from16 v179, v2

    .end local v2    # "unoptimizedScanMaxTime":J
    .restart local v179    # "unoptimizedScanMaxTime":J
    goto :goto_1a0b

    .line 6170
    .end local v179    # "unoptimizedScanMaxTime":J
    .restart local v2    # "unoptimizedScanMaxTime":J
    :cond_1a09
    move-wide/from16 v179, v2

    .line 6174
    .end local v2    # "unoptimizedScanMaxTime":J
    .restart local v179    # "unoptimizedScanMaxTime":J
    :goto_1a0b
    if-eqz v14, :cond_1a3d

    cmp-long v2, v4, v136

    if-lez v2, :cond_1a3d

    .line 6175
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6176
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6177
    const-string v2, "    Unoptimized Bluetooth Scan (background realtime): "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6178
    invoke-static {v8, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6179
    const-string v2, " (max "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6180
    move-wide/from16 v2, v192

    .end local v192    # "unoptimizedScanMaxTimeBg":J
    .local v2, "unoptimizedScanMaxTimeBg":J
    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6181
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6182
    invoke-virtual {v14}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v160

    if-eqz v160, :cond_1a3a

    .line 6183
    move-object/from16 v160, v0

    const-string v0, " (currently running unoptimized in background)"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a41

    .line 6182
    :cond_1a3a
    move-object/from16 v160, v0

    goto :goto_1a41

    .line 6174
    .end local v2    # "unoptimizedScanMaxTimeBg":J
    .restart local v192    # "unoptimizedScanMaxTimeBg":J
    :cond_1a3d
    move-object/from16 v160, v0

    move-wide/from16 v2, v192

    .line 6187
    .end local v192    # "unoptimizedScanMaxTimeBg":J
    .restart local v2    # "unoptimizedScanMaxTimeBg":J
    :goto_1a41
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v181, v7

    move-object/from16 v7, p2

    .end local v7    # "resultCount":I
    .local v181, "resultCount":I
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6188
    const/16 v45, 0x1

    goto :goto_1a7c

    .line 6091
    .end local v6    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .end local v9    # "resultCountBg":I
    .end local v10    # "countBg":I
    .end local v12    # "actualTimeMs":J
    .end local v14    # "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    .end local v95    # "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    .end local v138    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v139    # "count":I
    .end local v173    # "rawRealtimeMs":J
    .end local v175    # "actualTimeMsBg":J
    .end local v177    # "unoptimizedScanTotalTime":J
    .end local v179    # "unoptimizedScanMaxTime":J
    .end local v181    # "resultCount":I
    .end local v188    # "btRxBytes":J
    .end local v198    # "totalTimeMs":J
    .end local v205    # "rawRealtime":J
    .local v2, "totalTimeMs":J
    .local v4, "bleTimer":Landroid/os/BatteryStats$Timer;
    .local v5, "btRxBytes":J
    .restart local v11    # "rawRealtime":J
    .restart local v13    # "wifiScanCountBg":I
    .local v94, "rawRealtimeMs":J
    :cond_1a4f
    move-wide/from16 v198, v2

    move-object/from16 v138, v4

    move-wide/from16 v188, v5

    move-object/from16 v207, v7

    move-object v7, v9

    move-object/from16 v126, v10

    move-wide/from16 v205, v11

    move-wide/from16 v173, v94

    move-object/from16 v11, v149

    move-object/from16 v149, v0

    move/from16 v94, v13

    .end local v2    # "totalTimeMs":J
    .end local v4    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v5    # "btRxBytes":J
    .end local v11    # "rawRealtime":J
    .end local v13    # "wifiScanCountBg":I
    .local v94, "wifiScanCountBg":I
    .restart local v138    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v173    # "rawRealtimeMs":J
    .restart local v188    # "btRxBytes":J
    .restart local v198    # "totalTimeMs":J
    .restart local v205    # "rawRealtime":J
    goto :goto_1a7c

    .line 6087
    .end local v138    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v173    # "rawRealtimeMs":J
    .end local v188    # "btRxBytes":J
    .end local v190    # "btTxBytes":J
    .end local v198    # "totalTimeMs":J
    .end local v205    # "rawRealtime":J
    .local v2, "btTxBytes":J
    .restart local v4    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v5    # "btRxBytes":J
    .restart local v11    # "rawRealtime":J
    .restart local v13    # "wifiScanCountBg":I
    .local v94, "rawRealtimeMs":J
    :cond_1a65
    move-wide/from16 v190, v2

    move-object/from16 v138, v4

    move-wide/from16 v188, v5

    move-object/from16 v207, v7

    move-object v7, v9

    move-object/from16 v126, v10

    move-wide/from16 v205, v11

    move-wide/from16 v173, v94

    move-object/from16 v125, v139

    move-object/from16 v11, v149

    move-object/from16 v149, v0

    move/from16 v94, v13

    .line 6194
    .end local v2    # "btTxBytes":J
    .end local v4    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v5    # "btRxBytes":J
    .end local v11    # "rawRealtime":J
    .end local v13    # "wifiScanCountBg":I
    .local v94, "wifiScanCountBg":I
    .restart local v138    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v173    # "rawRealtimeMs":J
    .restart local v188    # "btRxBytes":J
    .restart local v190    # "btTxBytes":J
    .restart local v205    # "rawRealtime":J
    :goto_1a7c
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v0

    const-string v14, ", "

    if-eqz v0, :cond_1acd

    .line 6195
    const/4 v0, 0x0

    .line 6196
    .local v0, "hasData":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a86
    sget v3, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v2, v3, :cond_1abd

    .line 6197
    move/from16 v13, p4

    move-object/from16 v9, v48

    .end local v48    # "u":Landroid/os/BatteryStats$Uid;
    .local v9, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v9, v2, v13}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v3

    .line 6198
    .local v3, "val":I
    if-eqz v3, :cond_1ab4

    .line 6199
    if-nez v0, :cond_1aa1

    .line 6200
    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6201
    const-string v4, "    User activity: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6202
    const/4 v0, 0x1

    goto :goto_1aa4

    .line 6204
    :cond_1aa1
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6206
    :goto_1aa4
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6207
    move-object/from16 v12, v158

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6208
    sget-object v4, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ab6

    .line 6198
    :cond_1ab4
    move-object/from16 v12, v158

    .line 6196
    .end local v3    # "val":I
    :goto_1ab6
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v48, v9

    move-object/from16 v158, v12

    goto :goto_1a86

    .end local v9    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v48    # "u":Landroid/os/BatteryStats$Uid;
    :cond_1abd
    move/from16 v13, p4

    move-object/from16 v9, v48

    move-object/from16 v12, v158

    .line 6211
    .end local v2    # "i":I
    .end local v48    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v9    # "u":Landroid/os/BatteryStats$Uid;
    if-eqz v0, :cond_1ad3

    .line 6212
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1ad3

    .line 6194
    .end local v0    # "hasData":Z
    .end local v9    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v48    # "u":Landroid/os/BatteryStats$Uid;
    :cond_1acd
    move/from16 v13, p4

    move-object/from16 v9, v48

    move-object/from16 v12, v158

    .line 6216
    .end local v48    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v9    # "u":Landroid/os/BatteryStats$Uid;
    :cond_1ad3
    :goto_1ad3
    nop

    .line 6217
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v10

    .line 6218
    .local v10, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    const-wide/16 v2, 0x0

    .local v2, "totalFullWakelock":J
    const-wide/16 v4, 0x0

    .local v4, "totalPartialWakelock":J
    const-wide/16 v175, 0x0

    .line 6219
    .local v175, "totalWindowWakelock":J
    const-wide/16 v177, 0x0

    .line 6220
    .local v177, "totalDrawWakelock":J
    const/4 v0, 0x0

    .line 6221
    .local v0, "countWakelock":I
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move-object/from16 v48, v11

    const/4 v11, 0x1

    sub-int/2addr v6, v11

    move-wide/from16 v208, v175

    move-wide/from16 v210, v177

    move/from16 v225, v6

    move v6, v0

    move/from16 v0, v225

    move-wide/from16 v226, v2

    move-wide v2, v4

    move-wide/from16 v4, v226

    .end local v175    # "totalWindowWakelock":J
    .end local v177    # "totalDrawWakelock":J
    .local v0, "iw":I
    .local v2, "totalPartialWakelock":J
    .local v4, "totalFullWakelock":J
    .local v6, "countWakelock":I
    .local v208, "totalWindowWakelock":J
    .local v210, "totalDrawWakelock":J
    :goto_1af7
    if-ltz v0, :cond_1be9

    .line 6222
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v95

    move-object/from16 v11, v95

    check-cast v11, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 6223
    .local v11, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-string v95, ": "

    .line 6224
    .local v95, "linePrefix":Ljava/lang/String;
    move-object/from16 v139, v1

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6225
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6226
    const-string v1, "    Wake lock "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6227
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6228
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v158

    const-string v175, "full"

    move-object/from16 v1, v149

    move/from16 v149, v0

    .end local v0    # "iw":I
    .local v149, "iw":I
    move-object v0, v8

    move-object/from16 v212, v139

    move-object/from16 v139, v10

    move-object v10, v1

    .end local v10    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v139, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    move-object/from16 v1, v158

    move-object/from16 v158, v14

    move-wide/from16 v176, v190

    move-wide v14, v2

    .end local v2    # "totalPartialWakelock":J
    .end local v190    # "btTxBytes":J
    .local v14, "totalPartialWakelock":J
    .local v176, "btTxBytes":J
    move-wide/from16 v2, v205

    move-object/from16 v178, v9

    move-object/from16 v179, v10

    move-wide v9, v4

    .end local v4    # "totalFullWakelock":J
    .local v9, "totalFullWakelock":J
    .local v178, "u":Landroid/os/BatteryStats$Uid;
    move-object/from16 v4, v175

    move-wide/from16 v180, v188

    .end local v188    # "btRxBytes":J
    .local v180, "btRxBytes":J
    move/from16 v5, p4

    move-object/from16 v175, v12

    move v12, v6

    .end local v6    # "countWakelock":I
    .local v12, "countWakelock":I
    move-object/from16 v6, v95

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v95

    .line 6230
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v182

    .line 6231
    .local v182, "pTimer":Landroid/os/BatteryStats$Timer;
    const-string/jumbo v4, "partial"

    move-object v0, v8

    move-object/from16 v1, v182

    move-object/from16 v6, v95

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v95

    .line 6233
    if-eqz v182, :cond_1b60

    invoke-virtual/range {v182 .. v182}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    goto :goto_1b61

    :cond_1b60
    const/4 v0, 0x0

    :goto_1b61
    move-object v1, v0

    const-string v4, "background partial"

    move-object v0, v8

    move-wide/from16 v2, v205

    move/from16 v5, p4

    move-object/from16 v6, v95

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v95

    .line 6235
    const/4 v6, 0x2

    invoke-virtual {v11, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string/jumbo v4, "window"

    move-object/from16 v6, v95

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v95

    .line 6237
    const/16 v0, 0x12

    invoke-virtual {v11, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string v4, "draw"

    move-object v0, v8

    move-object/from16 v6, v95

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6239
    .end local v95    # "linePrefix":Ljava/lang/String;
    .local v0, "linePrefix":Ljava/lang/String;
    move-object/from16 v1, v159

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6240
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6241
    const/16 v45, 0x1

    .line 6242
    add-int/lit8 v6, v12, 0x1

    .line 6244
    .end local v12    # "countWakelock":I
    .restart local v6    # "countWakelock":I
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    move-wide/from16 v4, v205

    .end local v205    # "rawRealtime":J
    .local v4, "rawRealtime":J
    invoke-static {v3, v4, v5, v13}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v2

    add-long/2addr v2, v9

    .line 6246
    .end local v9    # "totalFullWakelock":J
    .local v2, "totalFullWakelock":J
    const/4 v9, 0x0

    invoke-virtual {v11, v9}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v10

    invoke-static {v10, v4, v5, v13}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v9

    add-long/2addr v9, v14

    .line 6248
    .end local v14    # "totalPartialWakelock":J
    .local v9, "totalPartialWakelock":J
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v14

    invoke-static {v14, v4, v5, v13}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v14

    move-wide/from16 v188, v2

    move-wide/from16 v2, v208

    .end local v208    # "totalWindowWakelock":J
    .local v2, "totalWindowWakelock":J
    .local v188, "totalFullWakelock":J
    add-long v208, v2, v14

    .line 6250
    .end local v2    # "totalWindowWakelock":J
    .restart local v208    # "totalWindowWakelock":J
    const/16 v2, 0x12

    invoke-virtual {v11, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    invoke-static {v2, v4, v5, v13}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v2

    move-wide/from16 v14, v210

    .end local v210    # "totalDrawWakelock":J
    .local v14, "totalDrawWakelock":J
    add-long v210, v14, v2

    .line 6221
    .end local v0    # "linePrefix":Ljava/lang/String;
    .end local v11    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v14    # "totalDrawWakelock":J
    .end local v182    # "pTimer":Landroid/os/BatteryStats$Timer;
    .restart local v210    # "totalDrawWakelock":J
    add-int/lit8 v0, v149, -0x1

    move-object/from16 v15, p3

    move-wide v2, v9

    move-object/from16 v10, v139

    move-object/from16 v14, v158

    move-object/from16 v12, v175

    move-wide/from16 v190, v176

    move-object/from16 v9, v178

    move-object/from16 v149, v179

    move-wide/from16 v4, v188

    move-object/from16 v1, v212

    const/4 v11, 0x1

    move-wide/from16 v188, v180

    .end local v149    # "iw":I
    .local v0, "iw":I
    goto/16 :goto_1af7

    .end local v139    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v176    # "btTxBytes":J
    .end local v178    # "u":Landroid/os/BatteryStats$Uid;
    .end local v180    # "btRxBytes":J
    .local v2, "totalPartialWakelock":J
    .local v4, "totalFullWakelock":J
    .local v9, "u":Landroid/os/BatteryStats$Uid;
    .restart local v10    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v188, "btRxBytes":J
    .restart local v190    # "btTxBytes":J
    .restart local v205    # "rawRealtime":J
    :cond_1be9
    move-object/from16 v212, v1

    move-object/from16 v178, v9

    move-object/from16 v139, v10

    move-object/from16 v175, v12

    move-object/from16 v158, v14

    move-object/from16 v179, v149

    move-object/from16 v1, v159

    move-wide/from16 v180, v188

    move-wide/from16 v176, v190

    move/from16 v149, v0

    move-wide v14, v2

    move-wide v9, v4

    move v12, v6

    move-wide/from16 v2, v208

    move-wide/from16 v4, v210

    const/4 v0, 0x2

    .line 6253
    .end local v0    # "iw":I
    .end local v6    # "countWakelock":I
    .end local v10    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v188    # "btRxBytes":J
    .end local v190    # "btTxBytes":J
    .end local v208    # "totalWindowWakelock":J
    .end local v210    # "totalDrawWakelock":J
    .local v2, "totalWindowWakelock":J
    .local v4, "totalDrawWakelock":J
    .local v9, "totalFullWakelock":J
    .restart local v12    # "countWakelock":I
    .local v14, "totalPartialWakelock":J
    .restart local v139    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v176    # "btTxBytes":J
    .restart local v178    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v180    # "btRxBytes":J
    const/4 v6, 0x1

    if-le v12, v6, :cond_1d01

    .line 6256
    const-wide/16 v188, 0x0

    .line 6257
    .local v188, "actualTotalPartialWakelock":J
    const-wide/16 v190, 0x0

    .line 6258
    .local v190, "actualBgPartialWakelock":J
    invoke-virtual/range {v178 .. v178}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_1c36

    .line 6259
    invoke-virtual/range {v178 .. v178}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 6261
    .local v6, "aggTimer":Landroid/os/BatteryStats$Timer;
    nop

    .line 6262
    move-object/from16 v159, v1

    move-wide/from16 v0, v173

    .end local v173    # "rawRealtimeMs":J
    .local v0, "rawRealtimeMs":J
    invoke-virtual {v6, v0, v1}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v188

    .line 6263
    invoke-virtual {v6}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    .line 6264
    .local v11, "bgAggTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v11, :cond_1c2a

    .line 6265
    invoke-virtual {v11, v0, v1}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v173

    goto :goto_1c2c

    :cond_1c2a
    move-wide/from16 v173, v136

    :goto_1c2c
    move-wide/from16 v190, v173

    move-wide/from16 v173, v0

    move v6, v12

    move-wide/from16 v11, v188

    move-wide/from16 v0, v190

    goto :goto_1c3f

    .line 6258
    .end local v0    # "rawRealtimeMs":J
    .end local v6    # "aggTimer":Landroid/os/BatteryStats$Timer;
    .end local v11    # "bgAggTimer":Landroid/os/BatteryStats$Timer;
    .restart local v173    # "rawRealtimeMs":J
    :cond_1c36
    move-object/from16 v159, v1

    move-wide/from16 v0, v173

    .end local v173    # "rawRealtimeMs":J
    .restart local v0    # "rawRealtimeMs":J
    move v6, v12

    move-wide/from16 v11, v188

    move-wide/from16 v0, v190

    .line 6268
    .end local v12    # "countWakelock":I
    .end local v188    # "actualTotalPartialWakelock":J
    .end local v190    # "actualBgPartialWakelock":J
    .local v0, "actualBgPartialWakelock":J
    .local v6, "countWakelock":I
    .local v11, "actualTotalPartialWakelock":J
    .restart local v173    # "rawRealtimeMs":J
    :goto_1c3f
    cmp-long v95, v11, v136

    if-nez v95, :cond_1c5e

    cmp-long v95, v0, v136

    if-nez v95, :cond_1c5e

    cmp-long v95, v9, v136

    if-nez v95, :cond_1c5e

    cmp-long v95, v14, v136

    if-nez v95, :cond_1c5e

    cmp-long v95, v2, v136

    if-eqz v95, :cond_1c54

    goto :goto_1c5e

    :cond_1c54
    move/from16 v95, v6

    move-wide/from16 v188, v9

    move-object/from16 v6, v158

    move-object/from16 v10, v159

    goto/16 :goto_1d08

    .line 6271
    :cond_1c5e
    :goto_1c5e
    move/from16 v95, v6

    const/4 v6, 0x0

    .end local v6    # "countWakelock":I
    .local v95, "countWakelock":I
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6272
    move-object/from16 v6, p3

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6273
    const-string v6, "    TOTAL wake: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6274
    const/4 v6, 0x0

    .line 6275
    .local v6, "needComma":Z
    cmp-long v149, v9, v136

    if-eqz v149, :cond_1c80

    .line 6276
    const/4 v6, 0x1

    .line 6277
    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6278
    move/from16 v149, v6

    .end local v6    # "needComma":Z
    .local v149, "needComma":Z
    const-string v6, "full"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v149

    .line 6280
    .end local v149    # "needComma":Z
    .restart local v6    # "needComma":Z
    :cond_1c80
    cmp-long v149, v14, v136

    if-eqz v149, :cond_1c9f

    .line 6281
    if-eqz v6, :cond_1c8e

    .line 6282
    move/from16 v149, v6

    move-object/from16 v6, v158

    .end local v6    # "needComma":Z
    .restart local v149    # "needComma":Z
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c92

    .line 6281
    .end local v149    # "needComma":Z
    .restart local v6    # "needComma":Z
    :cond_1c8e
    move/from16 v149, v6

    move-object/from16 v6, v158

    .line 6284
    .end local v6    # "needComma":Z
    .restart local v149    # "needComma":Z
    :goto_1c92
    const/16 v149, 0x1

    .line 6285
    invoke-static {v8, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6286
    move-wide/from16 v188, v9

    .end local v9    # "totalFullWakelock":J
    .local v188, "totalFullWakelock":J
    const-string v9, "blamed partial"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ca5

    .line 6280
    .end local v149    # "needComma":Z
    .end local v188    # "totalFullWakelock":J
    .restart local v6    # "needComma":Z
    .restart local v9    # "totalFullWakelock":J
    :cond_1c9f
    move/from16 v149, v6

    move-wide/from16 v188, v9

    move-object/from16 v6, v158

    .line 6288
    .end local v6    # "needComma":Z
    .end local v9    # "totalFullWakelock":J
    .restart local v149    # "needComma":Z
    .restart local v188    # "totalFullWakelock":J
    :goto_1ca5
    cmp-long v9, v11, v136

    if-eqz v9, :cond_1cb8

    .line 6289
    if-eqz v149, :cond_1cae

    .line 6290
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6292
    :cond_1cae
    const/16 v149, 0x1

    .line 6293
    invoke-static {v8, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6294
    const-string v9, "actual partial"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6296
    :cond_1cb8
    cmp-long v9, v0, v136

    if-eqz v9, :cond_1ccb

    .line 6297
    if-eqz v149, :cond_1cc1

    .line 6298
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6300
    :cond_1cc1
    const/16 v149, 0x1

    .line 6301
    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6302
    const-string v9, "actual background partial"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6304
    :cond_1ccb
    cmp-long v9, v2, v136

    if-eqz v9, :cond_1cdf

    .line 6305
    if-eqz v149, :cond_1cd4

    .line 6306
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6308
    :cond_1cd4
    const/16 v149, 0x1

    .line 6309
    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6310
    const-string/jumbo v9, "window"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6312
    :cond_1cdf
    cmp-long v9, v4, v136

    if-eqz v9, :cond_1cf4

    .line 6313
    if-eqz v149, :cond_1cea

    .line 6314
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6316
    :cond_1cea
    const/16 v149, 0x1

    .line 6317
    invoke-static {v8, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6318
    const-string v9, "draw"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6320
    :cond_1cf4
    move-object/from16 v10, v159

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6321
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d08

    .line 6253
    .end local v0    # "actualBgPartialWakelock":J
    .end local v11    # "actualTotalPartialWakelock":J
    .end local v95    # "countWakelock":I
    .end local v149    # "needComma":Z
    .end local v188    # "totalFullWakelock":J
    .restart local v9    # "totalFullWakelock":J
    .restart local v12    # "countWakelock":I
    :cond_1d01
    move-wide/from16 v188, v9

    move/from16 v95, v12

    move-object/from16 v6, v158

    move-object v10, v1

    .line 6326
    .end local v9    # "totalFullWakelock":J
    .end local v12    # "countWakelock":I
    .restart local v95    # "countWakelock":I
    .restart local v188    # "totalFullWakelock":J
    :goto_1d08
    invoke-virtual/range {v178 .. v178}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 6327
    .local v0, "mcTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v0, :cond_1d51

    .line 6328
    move-wide/from16 v11, v205

    .end local v205    # "rawRealtime":J
    .local v11, "rawRealtime":J
    invoke-virtual {v0, v11, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v158

    .line 6329
    .local v158, "multicastWakeLockTimeMicros":J
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v1

    .line 6331
    .local v1, "multicastWakeLockCount":I
    cmp-long v9, v158, v136

    if-lez v9, :cond_1d4a

    .line 6332
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6333
    move-object/from16 v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6334
    move-object/from16 v149, v0

    .end local v0    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .local v149, "mcTimer":Landroid/os/BatteryStats$Timer;
    const-string v0, "    WiFi Multicast Wakelock"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6335
    const-string v0, " count = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6336
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6337
    const-string v0, " time = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6338
    add-long v190, v158, v18

    move/from16 v182, v1

    .end local v1    # "multicastWakeLockCount":I
    .local v182, "multicastWakeLockCount":I
    div-long v0, v190, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 6339
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d57

    .line 6331
    .end local v149    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v182    # "multicastWakeLockCount":I
    .restart local v0    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v1    # "multicastWakeLockCount":I
    :cond_1d4a
    move-object/from16 v9, p3

    move-object/from16 v149, v0

    move/from16 v182, v1

    .end local v0    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v1    # "multicastWakeLockCount":I
    .restart local v149    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v182    # "multicastWakeLockCount":I
    goto :goto_1d57

    .line 6327
    .end local v11    # "rawRealtime":J
    .end local v149    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v158    # "multicastWakeLockTimeMicros":J
    .end local v182    # "multicastWakeLockCount":I
    .restart local v0    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v205    # "rawRealtime":J
    :cond_1d51
    move-object/from16 v9, p3

    move-object/from16 v149, v0

    move-wide/from16 v11, v205

    .line 6343
    .end local v0    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v205    # "rawRealtime":J
    .restart local v11    # "rawRealtime":J
    .restart local v149    # "mcTimer":Landroid/os/BatteryStats$Timer;
    :goto_1d57
    invoke-virtual/range {v178 .. v178}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 6344
    .local v0, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v158, 0x1

    add-int/lit8 v1, v1, -0x1

    .local v1, "isy":I
    :goto_1d63
    const/16 v158, -0x1

    if-ltz v1, :cond_1e20

    .line 6345
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v159

    move-wide/from16 v190, v2

    .end local v2    # "totalWindowWakelock":J
    .local v190, "totalWindowWakelock":J
    move-object/from16 v2, v159

    check-cast v2, Landroid/os/BatteryStats$Timer;

    .line 6347
    .local v2, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v2, v11, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v192

    add-long v192, v192, v18

    move-wide/from16 v198, v4

    .end local v4    # "totalDrawWakelock":J
    .local v198, "totalDrawWakelock":J
    div-long v3, v192, v16

    .line 6348
    .local v3, "totalTime":J
    invoke-virtual {v2, v13}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 6349
    .local v5, "count":I
    move-object/from16 v159, v10

    invoke-virtual {v2}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    .line 6350
    .local v10, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v10, :cond_1d90

    .line 6351
    move-wide/from16 v192, v14

    move-wide/from16 v14, v173

    .end local v173    # "rawRealtimeMs":J
    .local v14, "rawRealtimeMs":J
    .local v192, "totalPartialWakelock":J
    invoke-virtual {v10, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v173

    goto :goto_1d96

    .end local v192    # "totalPartialWakelock":J
    .local v14, "totalPartialWakelock":J
    .restart local v173    # "rawRealtimeMs":J
    :cond_1d90
    move-wide/from16 v192, v14

    move-wide/from16 v14, v173

    .end local v173    # "rawRealtimeMs":J
    .local v14, "rawRealtimeMs":J
    .restart local v192    # "totalPartialWakelock":J
    const-wide/16 v173, -0x1

    :goto_1d96
    move-wide/from16 v200, v173

    .line 6352
    .local v200, "bgTime":J
    if-eqz v10, :cond_1d9e

    invoke-virtual {v10, v13}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v158

    :cond_1d9e
    move/from16 v173, v158

    .line 6353
    .local v173, "bgCount":I
    move-object/from16 v174, v2

    const/4 v2, 0x0

    .end local v2    # "timer":Landroid/os/BatteryStats$Timer;
    .local v174, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6354
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6355
    const-string v2, "    Sync "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6356
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6357
    move-object/from16 v2, v183

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6358
    cmp-long v158, v3, v136

    if-eqz v158, :cond_1df6

    .line 6359
    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6360
    move-object/from16 v182, v0

    .end local v0    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v182, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const-string/jumbo v0, "realtime ("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6361
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6362
    move-object/from16 v0, v179

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6363
    move-wide/from16 v205, v3

    move-wide/from16 v3, v200

    .end local v200    # "bgTime":J
    .local v3, "bgTime":J
    .local v205, "totalTime":J
    cmp-long v158, v3, v136

    if-lez v158, :cond_1df1

    .line 6364
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6365
    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6366
    move-wide/from16 v200, v3

    .end local v3    # "bgTime":J
    .restart local v200    # "bgTime":J
    const-string v3, "background ("

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6367
    move/from16 v3, v173

    .end local v173    # "bgCount":I
    .local v3, "bgCount":I
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6368
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e03

    .line 6363
    .end local v200    # "bgTime":J
    .local v3, "bgTime":J
    .restart local v173    # "bgCount":I
    :cond_1df1
    move-wide/from16 v200, v3

    move/from16 v3, v173

    .end local v173    # "bgCount":I
    .local v3, "bgCount":I
    .restart local v200    # "bgTime":J
    goto :goto_1e03

    .line 6371
    .end local v182    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v205    # "totalTime":J
    .restart local v0    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v3, "totalTime":J
    .restart local v173    # "bgCount":I
    :cond_1df6
    move-object/from16 v182, v0

    move-wide/from16 v205, v3

    move/from16 v3, v173

    move-object/from16 v0, v179

    .end local v0    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v173    # "bgCount":I
    .local v3, "bgCount":I
    .restart local v182    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v205    # "totalTime":J
    const-string v4, "(not used)"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6373
    :goto_1e03
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6374
    const/16 v45, 0x1

    .line 6344
    .end local v3    # "bgCount":I
    .end local v5    # "count":I
    .end local v10    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v174    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v200    # "bgTime":J
    .end local v205    # "totalTime":J
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v179, v0

    move-object/from16 v183, v2

    move-wide/from16 v173, v14

    move-object/from16 v10, v159

    move-object/from16 v0, v182

    move-wide/from16 v2, v190

    move-wide/from16 v14, v192

    move-wide/from16 v4, v198

    goto/16 :goto_1d63

    .end local v182    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v190    # "totalWindowWakelock":J
    .end local v192    # "totalPartialWakelock":J
    .end local v198    # "totalDrawWakelock":J
    .restart local v0    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v2, "totalWindowWakelock":J
    .restart local v4    # "totalDrawWakelock":J
    .local v14, "totalPartialWakelock":J
    .local v173, "rawRealtimeMs":J
    :cond_1e20
    move-object/from16 v182, v0

    move-wide/from16 v190, v2

    move-wide/from16 v198, v4

    move-object/from16 v159, v10

    move-wide/from16 v192, v14

    move-wide/from16 v14, v173

    move-object/from16 v0, v179

    move-object/from16 v2, v183

    .line 6377
    .end local v0    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v1    # "isy":I
    .end local v2    # "totalWindowWakelock":J
    .end local v4    # "totalDrawWakelock":J
    .end local v173    # "rawRealtimeMs":J
    .local v14, "rawRealtimeMs":J
    .restart local v182    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v190    # "totalWindowWakelock":J
    .restart local v192    # "totalPartialWakelock":J
    .restart local v198    # "totalDrawWakelock":J
    invoke-virtual/range {v178 .. v178}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 6378
    .local v1, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "ij":I
    :goto_1e3a
    if-ltz v3, :cond_1ee0

    .line 6379
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    .line 6381
    .local v4, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v4, v11, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v173

    add-long v173, v173, v18

    move-wide/from16 v205, v11

    .end local v11    # "rawRealtime":J
    .local v205, "rawRealtime":J
    div-long v10, v173, v16

    .line 6382
    .local v10, "totalTime":J
    invoke-virtual {v4, v13}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 6383
    .restart local v5    # "count":I
    invoke-virtual {v4}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v12

    .line 6384
    .local v12, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v12, :cond_1e5b

    .line 6385
    invoke-virtual {v12, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v173

    goto :goto_1e5d

    :cond_1e5b
    const-wide/16 v173, -0x1

    :goto_1e5d
    move-wide/from16 v200, v173

    .line 6386
    .restart local v200    # "bgTime":J
    if-eqz v12, :cond_1e66

    invoke-virtual {v12, v13}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v173

    goto :goto_1e68

    :cond_1e66
    move/from16 v173, v158

    :goto_1e68
    move/from16 v174, v173

    .line 6387
    .local v174, "bgCount":I
    move-object/from16 v173, v4

    const/4 v4, 0x0

    .end local v4    # "timer":Landroid/os/BatteryStats$Timer;
    .local v173, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6388
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6389
    const-string v4, "    Job "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6390
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6391
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6392
    cmp-long v4, v10, v136

    if-eqz v4, :cond_1ebe

    .line 6393
    invoke-static {v8, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6394
    const-string/jumbo v4, "realtime ("

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6395
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6396
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6397
    move/from16 v179, v5

    move-wide/from16 v4, v200

    .end local v5    # "count":I
    .end local v200    # "bgTime":J
    .local v4, "bgTime":J
    .local v179, "count":I
    cmp-long v183, v4, v136

    if-lez v183, :cond_1eb7

    .line 6398
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6399
    invoke-static {v8, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6400
    move-object/from16 v183, v1

    .end local v1    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v183, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const-string v1, "background ("

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6401
    move/from16 v1, v174

    .end local v174    # "bgCount":I
    .local v1, "bgCount":I
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6402
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v174, v0

    goto :goto_1ecd

    .line 6397
    .end local v183    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v1, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v174    # "bgCount":I
    :cond_1eb7
    move-object/from16 v183, v1

    move/from16 v1, v174

    .end local v174    # "bgCount":I
    .local v1, "bgCount":I
    .restart local v183    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-object/from16 v174, v0

    goto :goto_1ecd

    .line 6405
    .end local v4    # "bgTime":J
    .end local v179    # "count":I
    .end local v183    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v1, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v5    # "count":I
    .restart local v174    # "bgCount":I
    .restart local v200    # "bgTime":J
    :cond_1ebe
    move-object/from16 v183, v1

    move/from16 v179, v5

    move/from16 v1, v174

    move-wide/from16 v4, v200

    .end local v5    # "count":I
    .end local v174    # "bgCount":I
    .end local v200    # "bgTime":J
    .local v1, "bgCount":I
    .restart local v4    # "bgTime":J
    .restart local v179    # "count":I
    .restart local v183    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-object/from16 v174, v0

    const-string v0, "(not used)"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6407
    :goto_1ecd
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6408
    const/16 v45, 0x1

    .line 6378
    .end local v1    # "bgCount":I
    .end local v4    # "bgTime":J
    .end local v10    # "totalTime":J
    .end local v12    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v173    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v179    # "count":I
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v174

    move-object/from16 v1, v183

    move-wide/from16 v11, v205

    goto/16 :goto_1e3a

    .end local v183    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v205    # "rawRealtime":J
    .local v1, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v11    # "rawRealtime":J
    :cond_1ee0
    move-object/from16 v174, v0

    move-object/from16 v183, v1

    move-wide/from16 v205, v11

    .line 6411
    .end local v1    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v3    # "ij":I
    .end local v11    # "rawRealtime":J
    .restart local v183    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v205    # "rawRealtime":J
    invoke-virtual/range {v178 .. v178}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 6412
    .local v0, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .local v1, "ic":I
    :goto_1ef0
    if-ltz v1, :cond_1f4f

    .line 6413
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    .line 6414
    .local v4, "types":Landroid/util/SparseIntArray;
    if-eqz v4, :cond_1f44

    .line 6415
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6416
    const-string v5, "    Job Completions "

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6417
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6418
    const-string v5, ":"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6419
    const/4 v5, 0x0

    .local v5, "it":I
    :goto_1f11
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v5, v10, :cond_1f3c

    .line 6420
    move-object/from16 v11, v175

    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6421
    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    invoke-static {v10}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6422
    move-object/from16 v12, v207

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6423
    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 6424
    const-string/jumbo v10, "x)"

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6419
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f11

    :cond_1f3c
    move-object/from16 v11, v175

    move-object/from16 v12, v207

    .line 6426
    .end local v5    # "it":I
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1f48

    .line 6414
    :cond_1f44
    move-object/from16 v11, v175

    move-object/from16 v12, v207

    .line 6412
    .end local v4    # "types":Landroid/util/SparseIntArray;
    :goto_1f48
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v175, v11

    move-object/from16 v207, v12

    goto :goto_1ef0

    :cond_1f4f
    move-object/from16 v11, v175

    move-object/from16 v12, v207

    .line 6430
    .end local v1    # "ic":I
    move-object/from16 v1, v178

    .end local v178    # "u":Landroid/os/BatteryStats$Uid;
    .local v1, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v1, v8, v13}, Landroid/os/BatteryStats$Uid;->getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V

    .line 6431
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1f6a

    .line 6432
    const-string v4, "    Jobs deferred on launch "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6435
    :cond_1f6a
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v4, "Flashlight"

    move-object v5, v1

    move-object v1, v8

    move-wide/from16 v178, v196

    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v196    # "wifiScanActualTime":J
    .local v1, "sb":Ljava/lang/StringBuilder;
    .local v5, "u":Landroid/os/BatteryStats$Uid;
    .local v178, "wifiScanActualTime":J
    move-object/from16 v8, p2

    move/from16 v7, v117

    move-wide/from16 v225, v154

    move-wide/from16 v154, v184

    move-wide/from16 v184, v225

    .end local v117    # "uid":I
    .local v7, "uid":I
    .local v154, "mobileActiveTime":J
    .local v184, "mobileTxBytes":J
    move-object v9, v1

    move-object/from16 v117, v132

    move-object/from16 v132, v159

    move-object/from16 v3, v174

    move-object/from16 v225, v139

    move-object/from16 v139, v126

    move-object/from16 v126, v225

    .end local v132    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v139    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v117, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v126, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    move-object/from16 v173, v1

    move-object v1, v11

    move-object/from16 v196, v12

    move-wide/from16 v158, v144

    move-wide/from16 v144, v161

    move-wide/from16 v161, v194

    move-wide/from16 v194, v202

    move-wide/from16 v174, v205

    const/16 v197, 0x1

    move/from16 v225, v135

    move-object/from16 v135, v0

    move-object/from16 v0, v48

    move/from16 v48, v225

    .end local v0    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v202    # "wifiWakeup":J
    .end local v205    # "rawRealtime":J
    .local v48, "NU":I
    .local v135, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .local v144, "mobileRxBytes":J
    .local v158, "mobileTxPackets":J
    .local v161, "wifiScanTime":J
    .local v173, "sb":Ljava/lang/StringBuilder;
    .local v174, "rawRealtime":J
    .local v194, "wifiWakeup":J
    move-wide/from16 v11, v174

    move-object/from16 v200, v6

    move-object/from16 v6, p2

    move/from16 v13, p4

    move-wide/from16 v225, v158

    move-object/from16 v158, v0

    move-object/from16 v159, v1

    move-wide v0, v14

    move-object/from16 v15, v173

    move/from16 v173, v7

    move-object/from16 v7, v200

    move-wide/from16 v200, v192

    move-wide/from16 v192, v165

    move-wide/from16 v165, v225

    .end local v7    # "uid":I
    .end local v14    # "rawRealtimeMs":J
    .end local v158    # "mobileTxPackets":J
    .local v0, "rawRealtimeMs":J
    .local v15, "sb":Ljava/lang/StringBuilder;
    .local v165, "mobileTxPackets":J
    .local v173, "uid":I
    .local v192, "wifiTxPackets":J
    .local v200, "totalPartialWakelock":J
    move-object/from16 v14, p3

    move-object/from16 v6, p3

    move-object/from16 v203, v3

    move-object/from16 v131, v7

    move/from16 v202, v148

    const/4 v3, 0x0

    move/from16 v7, p4

    move/from16 v148, v133

    move-object/from16 v133, v15

    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .local v133, "sb":Ljava/lang/StringBuilder;
    .local v148, "uidMobileActiveCount":I
    .local v202, "wifiScanCount":I
    move-object v15, v4

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v4, v45, v4

    .line 6437
    .end local v45    # "uidActivity":Z
    .local v4, "uidActivity":Z
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Camera"

    move-object/from16 v9, v133

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v4, v8

    .line 6439
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Video"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v4, v8

    .line 6441
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Audio"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v4, v8

    .line 6444
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v15

    .line 6445
    .local v15, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 6446
    .local v14, "NSE":I
    const/4 v8, 0x0

    .local v8, "ise":I
    :goto_2007
    if-ge v8, v14, :cond_2109

    .line 6447
    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Uid$Sensor;

    .line 6448
    .local v9, "se":Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 6449
    .local v10, "sensorNumber":I
    move-object/from16 v13, v133

    .end local v133    # "sb":Ljava/lang/StringBuilder;
    .local v13, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6450
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6451
    const-string v11, "    Sensor "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6452
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v11

    .line 6453
    .local v11, "handle":I
    const/16 v12, -0x2710

    if-ne v11, v12, :cond_202e

    .line 6454
    const-string v12, "GPS"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2031

    .line 6456
    :cond_202e
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6458
    :goto_2031
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6460
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v12

    .line 6461
    .local v12, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v12, :cond_20d1

    .line 6463
    move/from16 v133, v4

    move-wide/from16 v3, v174

    .end local v4    # "uidActivity":Z
    .end local v174    # "rawRealtime":J
    .local v3, "rawRealtime":J
    .local v133, "uidActivity":Z
    invoke-virtual {v12, v3, v4, v7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v174

    add-long v174, v174, v18

    move/from16 v204, v10

    move/from16 v205, v11

    .end local v10    # "sensorNumber":I
    .end local v11    # "handle":I
    .local v204, "sensorNumber":I
    .local v205, "handle":I
    div-long v10, v174, v16

    .line 6465
    .local v10, "totalTime":J
    invoke-virtual {v12, v7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    .line 6466
    .local v6, "count":I
    move/from16 v174, v14

    .end local v14    # "NSE":I
    .local v174, "NSE":I
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    .line 6467
    .local v14, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v14, :cond_205b

    invoke-virtual {v14, v7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v175

    goto :goto_205d

    :cond_205b
    const/16 v175, 0x0

    :goto_205d
    move/from16 v206, v175

    .line 6469
    .local v206, "bgCount":I
    move-object/from16 v175, v2

    move-wide/from16 v207, v3

    .end local v3    # "rawRealtime":J
    .local v207, "rawRealtime":J
    invoke-virtual {v12, v0, v1}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v2

    .line 6470
    .local v2, "actualTime":J
    if-eqz v14, :cond_206e

    .line 6471
    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v209

    goto :goto_2070

    :cond_206e
    move-wide/from16 v209, v136

    :goto_2070
    move-wide/from16 v213, v209

    .line 6474
    .local v213, "bgActualTime":J
    cmp-long v4, v10, v136

    if-eqz v4, :cond_20bf

    .line 6475
    cmp-long v4, v2, v10

    if-eqz v4, :cond_2082

    .line 6476
    invoke-static {v13, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6477
    const-string v4, "blamed realtime, "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6480
    :cond_2082
    invoke-static {v13, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6481
    const-string/jumbo v4, "realtime ("

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6482
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6483
    move-object/from16 v4, v203

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6485
    move-wide/from16 v209, v0

    move-wide/from16 v0, v213

    .end local v213    # "bgActualTime":J
    .local v0, "bgActualTime":J
    .local v209, "rawRealtimeMs":J
    cmp-long v203, v0, v136

    if-nez v203, :cond_20a5

    move-wide/from16 v213, v2

    move/from16 v2, v206

    .end local v206    # "bgCount":I
    .local v2, "bgCount":I
    .local v213, "actualTime":J
    if-lez v2, :cond_20a2

    goto :goto_20a9

    :cond_20a2
    move-object/from16 v3, v131

    goto :goto_20d0

    .end local v213    # "actualTime":J
    .local v2, "actualTime":J
    .restart local v206    # "bgCount":I
    :cond_20a5
    move-wide/from16 v213, v2

    move/from16 v2, v206

    .line 6486
    .end local v206    # "bgCount":I
    .local v2, "bgCount":I
    .restart local v213    # "actualTime":J
    :goto_20a9
    move-object/from16 v3, v131

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6487
    invoke-static {v13, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6488
    move-wide/from16 v215, v0

    .end local v0    # "bgActualTime":J
    .local v215, "bgActualTime":J
    const-string v0, "background ("

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6489
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6490
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20d0

    .line 6493
    .end local v209    # "rawRealtimeMs":J
    .end local v215    # "bgActualTime":J
    .local v0, "rawRealtimeMs":J
    .local v2, "actualTime":J
    .restart local v206    # "bgCount":I
    .local v213, "bgActualTime":J
    :cond_20bf
    move-wide/from16 v209, v0

    move-object/from16 v4, v203

    move-wide/from16 v215, v213

    move-wide/from16 v213, v2

    move-object/from16 v3, v131

    move/from16 v2, v206

    .end local v0    # "rawRealtimeMs":J
    .end local v206    # "bgCount":I
    .local v2, "bgCount":I
    .restart local v209    # "rawRealtimeMs":J
    .local v213, "actualTime":J
    .restart local v215    # "bgActualTime":J
    const-string v0, "(not used)"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6495
    .end local v2    # "bgCount":I
    .end local v6    # "count":I
    .end local v10    # "totalTime":J
    .end local v14    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v213    # "actualTime":J
    .end local v215    # "bgActualTime":J
    :goto_20d0
    goto :goto_20e8

    .line 6496
    .end local v133    # "uidActivity":Z
    .end local v204    # "sensorNumber":I
    .end local v205    # "handle":I
    .end local v207    # "rawRealtime":J
    .end local v209    # "rawRealtimeMs":J
    .restart local v0    # "rawRealtimeMs":J
    .restart local v4    # "uidActivity":Z
    .local v10, "sensorNumber":I
    .restart local v11    # "handle":I
    .local v14, "NSE":I
    .local v174, "rawRealtime":J
    :cond_20d1
    move-wide/from16 v209, v0

    move/from16 v133, v4

    move/from16 v204, v10

    move/from16 v205, v11

    move-object/from16 v3, v131

    move-wide/from16 v207, v174

    move-object/from16 v4, v203

    move-object/from16 v175, v2

    move/from16 v174, v14

    .end local v0    # "rawRealtimeMs":J
    .end local v4    # "uidActivity":Z
    .end local v10    # "sensorNumber":I
    .end local v11    # "handle":I
    .end local v14    # "NSE":I
    .restart local v133    # "uidActivity":Z
    .local v174, "NSE":I
    .restart local v204    # "sensorNumber":I
    .restart local v205    # "handle":I
    .restart local v207    # "rawRealtime":J
    .restart local v209    # "rawRealtimeMs":J
    const-string v0, "(not used)"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6499
    :goto_20e8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6500
    const/4 v0, 0x1

    .line 6446
    .end local v9    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v12    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v133    # "uidActivity":Z
    .end local v204    # "sensorNumber":I
    .end local v205    # "handle":I
    .local v0, "uidActivity":Z
    add-int/lit8 v8, v8, 0x1

    move-object v6, v2

    move-object/from16 v131, v3

    move-object/from16 v203, v4

    move-object/from16 v133, v13

    move/from16 v14, v174

    move-object/from16 v2, v175

    move-wide/from16 v174, v207

    const/4 v3, 0x0

    move v4, v0

    move-wide/from16 v0, v209

    goto/16 :goto_2007

    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .end local v207    # "rawRealtime":J
    .end local v209    # "rawRealtimeMs":J
    .local v0, "rawRealtimeMs":J
    .restart local v4    # "uidActivity":Z
    .restart local v14    # "NSE":I
    .local v133, "sb":Ljava/lang/StringBuilder;
    .local v174, "rawRealtime":J
    :cond_2109
    move-wide/from16 v209, v0

    move-object/from16 v3, v131

    move-object/from16 v13, v133

    move-wide/from16 v207, v174

    move-object/from16 v1, p2

    move-object/from16 v175, v2

    move/from16 v133, v4

    move-object v2, v6

    move/from16 v174, v14

    .line 6503
    .end local v0    # "rawRealtimeMs":J
    .end local v4    # "uidActivity":Z
    .end local v8    # "ise":I
    .end local v14    # "NSE":I
    .restart local v13    # "sb":Ljava/lang/StringBuilder;
    .local v133, "uidActivity":Z
    .local v174, "NSE":I
    .restart local v207    # "rawRealtime":J
    .restart local v209    # "rawRealtimeMs":J
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v0, "Vibrator"

    move-object/from16 v8, p2

    move-object v9, v13

    move-wide/from16 v11, v207

    move-object v4, v13

    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .local v4, "sb":Ljava/lang/StringBuilder;
    move/from16 v13, p4

    move/from16 v6, v174

    .end local v174    # "NSE":I
    .local v6, "NSE":I
    move-object/from16 v14, p3

    move-object/from16 v131, v15

    .end local v15    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .local v131, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    move-object v15, v0

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int v0, v133, v0

    .line 6505
    .end local v133    # "uidActivity":Z
    .local v0, "uidActivity":Z
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Foreground activities"

    move-object v9, v4

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v0, v8

    .line 6507
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Foreground services"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v0, v8

    .line 6510
    const-wide/16 v8, 0x0

    .line 6511
    .local v8, "totalStateTime":J
    const/4 v10, 0x0

    .local v10, "ips":I
    :goto_2151
    const/4 v11, 0x7

    if-ge v10, v11, :cond_218f

    .line 6512
    move-wide/from16 v11, v207

    .end local v207    # "rawRealtime":J
    .local v11, "rawRealtime":J
    invoke-virtual {v5, v10, v11, v12, v7}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v13

    .line 6513
    .local v13, "time":J
    cmp-long v15, v13, v136

    if-lez v15, :cond_218a

    .line 6514
    add-long/2addr v8, v13

    .line 6515
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6516
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6517
    const-string v15, "    "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6518
    sget-object v15, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v15, v15, v10

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6519
    const-string v15, " for: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6520
    add-long v204, v13, v18

    move-wide/from16 v206, v8

    .end local v8    # "totalStateTime":J
    .local v206, "totalStateTime":J
    div-long v8, v204, v16

    invoke-static {v4, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6521
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6522
    const/4 v0, 0x1

    move-wide/from16 v8, v206

    .line 6511
    .end local v13    # "time":J
    .end local v206    # "totalStateTime":J
    .restart local v8    # "totalStateTime":J
    :cond_218a
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v207, v11

    goto :goto_2151

    .end local v11    # "rawRealtime":J
    .restart local v207    # "rawRealtime":J
    :cond_218f
    move-wide/from16 v11, v207

    .line 6525
    .end local v10    # "ips":I
    .end local v207    # "rawRealtime":J
    .restart local v11    # "rawRealtime":J
    cmp-long v10, v8, v136

    if-lez v10, :cond_21af

    .line 6526
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6527
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6528
    const-string v10, "    Total running: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6529
    add-long v13, v8, v18

    div-long v13, v13, v16

    invoke-static {v4, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6530
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6533
    :cond_21af
    invoke-virtual {v5, v7}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v13

    .line 6534
    .local v13, "userCpuTimeUs":J
    invoke-virtual {v5, v7}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v204

    .line 6535
    .local v204, "systemCpuTimeUs":J
    cmp-long v10, v13, v136

    if-gtz v10, :cond_21c3

    cmp-long v10, v204, v136

    if-lez v10, :cond_21c0

    goto :goto_21c3

    :cond_21c0
    move-wide/from16 v206, v8

    goto :goto_21e8

    .line 6536
    :cond_21c3
    :goto_21c3
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6537
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6538
    const-string v10, "    Total cpu time: u="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6539
    move-wide/from16 v206, v8

    .end local v8    # "totalStateTime":J
    .restart local v206    # "totalStateTime":J
    div-long v8, v13, v16

    invoke-static {v4, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6540
    const-string/jumbo v8, "s="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6541
    div-long v8, v204, v16

    invoke-static {v4, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6542
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6545
    :goto_21e8
    invoke-virtual {v5, v7}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v8

    .line 6546
    .local v8, "cpuFreqTimes":[J
    if-eqz v8, :cond_2217

    .line 6547
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6548
    const-string v9, "    Total cpu time per freq:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6549
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_21f8
    array-length v10, v8

    if-ge v9, v10, :cond_220d

    .line 6550
    const/16 v10, 0x20

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v213, v11

    .end local v11    # "rawRealtime":J
    .local v213, "rawRealtime":J
    aget-wide v11, v8, v9

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6549
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v11, v213

    goto :goto_21f8

    .end local v213    # "rawRealtime":J
    .restart local v11    # "rawRealtime":J
    :cond_220d
    move-wide/from16 v213, v11

    .line 6552
    .end local v9    # "i":I
    .end local v11    # "rawRealtime":J
    .restart local v213    # "rawRealtime":J
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2219

    .line 6546
    .end local v213    # "rawRealtime":J
    .restart local v11    # "rawRealtime":J
    :cond_2217
    move-wide/from16 v213, v11

    .line 6554
    .end local v11    # "rawRealtime":J
    .restart local v213    # "rawRealtime":J
    :goto_2219
    invoke-virtual {v5, v7}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v9

    .line 6555
    .local v9, "screenOffCpuFreqTimes":[J
    if-eqz v9, :cond_2248

    .line 6556
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6557
    const-string v10, "    Total screen-off cpu time per freq:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6558
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2229
    array-length v11, v9

    if-ge v10, v11, :cond_223e

    .line 6559
    const/16 v11, 0x20

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v215, v13

    .end local v13    # "userCpuTimeUs":J
    .local v215, "userCpuTimeUs":J
    aget-wide v12, v9, v10

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6558
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v13, v215

    goto :goto_2229

    .end local v215    # "userCpuTimeUs":J
    .restart local v13    # "userCpuTimeUs":J
    :cond_223e
    move-wide/from16 v215, v13

    .line 6561
    .end local v10    # "i":I
    .end local v13    # "userCpuTimeUs":J
    .restart local v215    # "userCpuTimeUs":J
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_224a

    .line 6555
    .end local v215    # "userCpuTimeUs":J
    .restart local v13    # "userCpuTimeUs":J
    :cond_2248
    move-wide/from16 v215, v13

    .line 6564
    .end local v13    # "userCpuTimeUs":J
    .restart local v215    # "userCpuTimeUs":J
    :goto_224a
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqCount()I

    move-result v10

    new-array v10, v10, [J

    .line 6565
    .local v10, "timesInFreqMs":[J
    const/4 v11, 0x0

    .local v11, "procState":I
    :goto_2251
    const/4 v12, 0x7

    if-ge v11, v12, :cond_22df

    .line 6566
    invoke-virtual {v5, v10, v11}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v12

    if-eqz v12, :cond_2296

    .line 6567
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6568
    const-string v12, "    Cpu times per freq at state "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v13, v13, v11

    .line 6569
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6570
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2272
    array-length v13, v10

    if-ge v12, v13, :cond_2289

    .line 6571
    move-object/from16 v13, v159

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v8

    move-object/from16 v133, v9

    .end local v8    # "cpuFreqTimes":[J
    .end local v9    # "screenOffCpuFreqTimes":[J
    .local v15, "cpuFreqTimes":[J
    .local v133, "screenOffCpuFreqTimes":[J
    aget-wide v8, v10, v12

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6570
    add-int/lit8 v12, v12, 0x1

    move-object v8, v15

    move-object/from16 v9, v133

    goto :goto_2272

    .end local v15    # "cpuFreqTimes":[J
    .end local v133    # "screenOffCpuFreqTimes":[J
    .restart local v8    # "cpuFreqTimes":[J
    .restart local v9    # "screenOffCpuFreqTimes":[J
    :cond_2289
    move-object v15, v8

    move-object/from16 v133, v9

    move-object/from16 v13, v159

    .line 6573
    .end local v8    # "cpuFreqTimes":[J
    .end local v9    # "screenOffCpuFreqTimes":[J
    .end local v12    # "i":I
    .restart local v15    # "cpuFreqTimes":[J
    .restart local v133    # "screenOffCpuFreqTimes":[J
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_229b

    .line 6566
    .end local v15    # "cpuFreqTimes":[J
    .end local v133    # "screenOffCpuFreqTimes":[J
    .restart local v8    # "cpuFreqTimes":[J
    .restart local v9    # "screenOffCpuFreqTimes":[J
    :cond_2296
    move-object v15, v8

    move-object/from16 v133, v9

    move-object/from16 v13, v159

    .line 6576
    .end local v8    # "cpuFreqTimes":[J
    .end local v9    # "screenOffCpuFreqTimes":[J
    .restart local v15    # "cpuFreqTimes":[J
    .restart local v133    # "screenOffCpuFreqTimes":[J
    :goto_229b
    invoke-virtual {v5, v10, v11}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v8

    if-eqz v8, :cond_22d6

    .line 6577
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6578
    const-string v8, "   Screen-off cpu times per freq at state "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v9, v9, v11

    .line 6579
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6580
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_22b9
    array-length v9, v10

    if-ge v8, v9, :cond_22cc

    .line 6581
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v159, v13

    aget-wide v12, v10, v8

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6580
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v13, v159

    goto :goto_22b9

    :cond_22cc
    move-object/from16 v159, v13

    .line 6583
    .end local v8    # "i":I
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_22d8

    .line 6576
    :cond_22d6
    move-object/from16 v159, v13

    .line 6565
    :goto_22d8
    add-int/lit8 v11, v11, 0x1

    move-object v8, v15

    move-object/from16 v9, v133

    goto/16 :goto_2251

    .end local v15    # "cpuFreqTimes":[J
    .end local v133    # "screenOffCpuFreqTimes":[J
    .local v8, "cpuFreqTimes":[J
    .restart local v9    # "screenOffCpuFreqTimes":[J
    :cond_22df
    move-object v15, v8

    move-object/from16 v133, v9

    .line 6587
    .end local v8    # "cpuFreqTimes":[J
    .end local v9    # "screenOffCpuFreqTimes":[J
    .end local v11    # "procState":I
    .restart local v15    # "cpuFreqTimes":[J
    .restart local v133    # "screenOffCpuFreqTimes":[J
    nop

    .line 6588
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v8

    .line 6589
    .local v8, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .local v9, "ipr":I
    :goto_22ed
    if-ltz v9, :cond_2474

    .line 6590
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid$Proc;

    .line 6597
    .local v11, "ps":Landroid/os/BatteryStats$Uid$Proc;
    invoke-virtual {v11, v7}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v12

    .line 6598
    .local v12, "userTime":J
    move-object/from16 v174, v15

    .end local v15    # "cpuFreqTimes":[J
    .local v174, "cpuFreqTimes":[J
    invoke-virtual {v11, v7}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v14

    .line 6599
    .local v14, "systemTime":J
    move-object/from16 v203, v5

    move/from16 v208, v6

    .end local v5    # "u":Landroid/os/BatteryStats$Uid;
    .end local v6    # "NSE":I
    .local v203, "u":Landroid/os/BatteryStats$Uid;
    .local v208, "NSE":I
    invoke-virtual {v11, v7}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v5

    .line 6600
    .local v5, "foregroundTime":J
    move/from16 v211, v0

    .end local v0    # "uidActivity":Z
    .local v211, "uidActivity":Z
    invoke-virtual {v11, v7}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v0

    .line 6601
    .local v0, "starts":I
    move-object/from16 v217, v10

    .end local v10    # "timesInFreqMs":[J
    .local v217, "timesInFreqMs":[J
    invoke-virtual {v11, v7}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v10

    .line 6602
    .local v10, "numCrashes":I
    invoke-virtual {v11, v7}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v1

    .line 6603
    .local v1, "numAnrs":I
    if-nez v7, :cond_231e

    .line 6604
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v218

    goto :goto_2320

    :cond_231e
    const/16 v218, 0x0

    :goto_2320
    move/from16 v219, v218

    .line 6606
    .local v219, "numExcessive":I
    cmp-long v218, v12, v136

    if-nez v218, :cond_2343

    cmp-long v218, v14, v136

    if-nez v218, :cond_2343

    cmp-long v218, v5, v136

    if-nez v218, :cond_2343

    if-nez v0, :cond_2343

    move/from16 v7, v219

    .end local v219    # "numExcessive":I
    .local v7, "numExcessive":I
    if-nez v7, :cond_2345

    if-nez v10, :cond_2345

    if-eqz v1, :cond_2339

    goto :goto_2345

    :cond_2339
    move-object/from16 v1, p2

    move-object/from16 v218, v3

    move/from16 v0, v211

    move-object/from16 v224, v212

    goto/16 :goto_2462

    .end local v7    # "numExcessive":I
    .restart local v219    # "numExcessive":I
    :cond_2343
    move/from16 v7, v219

    .line 6608
    .end local v219    # "numExcessive":I
    .restart local v7    # "numExcessive":I
    :cond_2345
    :goto_2345
    move-object/from16 v218, v11

    const/4 v11, 0x0

    .end local v11    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .local v218, "ps":Landroid/os/BatteryStats$Uid$Proc;
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6609
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "    Proc "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6610
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":\n"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6611
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "      CPU: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6612
    invoke-static {v4, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v11, "usr + "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6613
    invoke-static {v4, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v11, "krn ; "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6614
    invoke-static {v4, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v11, "fg"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6615
    if-nez v0, :cond_238f

    if-nez v10, :cond_238f

    if-eqz v1, :cond_238a

    goto :goto_238f

    :cond_238a
    move-wide/from16 v219, v5

    move-object/from16 v11, v212

    goto :goto_23c9

    .line 6616
    :cond_238f
    :goto_238f
    move-object/from16 v11, v212

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v219, v5

    .end local v5    # "foregroundTime":J
    .local v219, "foregroundTime":J
    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6617
    const/4 v5, 0x0

    .line 6618
    .local v5, "hasOne":Z
    if-eqz v0, :cond_23aa

    .line 6619
    const/4 v5, 0x1

    .line 6620
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " starts"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6622
    :cond_23aa
    if-eqz v10, :cond_23ba

    .line 6623
    if-eqz v5, :cond_23b1

    .line 6624
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6626
    :cond_23b1
    const/4 v5, 0x1

    .line 6627
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " crashes"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6629
    :cond_23ba
    if-eqz v1, :cond_23c9

    .line 6630
    if-eqz v5, :cond_23c1

    .line 6631
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6633
    :cond_23c1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " anrs"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6636
    .end local v5    # "hasOne":Z
    :cond_23c9
    :goto_23c9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v6, v1

    move-object/from16 v1, p2

    .end local v1    # "numAnrs":I
    .local v6, "numAnrs":I
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6637
    const/4 v5, 0x0

    .local v5, "e":I
    :goto_23d4
    if-ge v5, v7, :cond_2453

    .line 6638
    move/from16 v212, v0

    move-object/from16 v0, v218

    move-object/from16 v218, v3

    .end local v218    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .local v0, "ps":Landroid/os/BatteryStats$Uid$Proc;
    .local v212, "starts":I
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v3

    .line 6639
    .local v3, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    if-eqz v3, :cond_243a

    .line 6640
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v221, v0

    .end local v0    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .local v221, "ps":Landroid/os/BatteryStats$Uid$Proc;
    const-string v0, "      * Killed for "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6641
    iget v0, v3, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    move/from16 v222, v6

    const/4 v6, 0x2

    .end local v6    # "numAnrs":I
    .local v222, "numAnrs":I
    if-ne v0, v6, :cond_23f9

    .line 6642
    const-string v0, "cpu"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_23ff

    .line 6644
    :cond_23f9
    const-string/jumbo v0, "unknown"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6646
    :goto_23ff
    const-string v0, " use: "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6647
    move v0, v7

    .end local v7    # "numExcessive":I
    .local v0, "numExcessive":I
    iget-wide v6, v3, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6648
    const-string v6, " over "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6649
    iget-wide v6, v3, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6650
    iget-wide v6, v3, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    cmp-long v6, v6, v136

    if-eqz v6, :cond_2435

    .line 6651
    move-object/from16 v6, v158

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6652
    iget-wide v6, v3, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    const-wide/16 v223, 0x64

    mul-long v6, v6, v223

    move/from16 v223, v10

    move-object/from16 v224, v11

    .end local v10    # "numCrashes":I
    .local v223, "numCrashes":I
    iget-wide v10, v3, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    div-long/2addr v6, v10

    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 6653
    const-string v6, "%)"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2443

    .line 6650
    .end local v223    # "numCrashes":I
    .restart local v10    # "numCrashes":I
    :cond_2435
    move/from16 v223, v10

    move-object/from16 v224, v11

    .end local v10    # "numCrashes":I
    .restart local v223    # "numCrashes":I
    goto :goto_2443

    .line 6639
    .end local v221    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v222    # "numAnrs":I
    .end local v223    # "numCrashes":I
    .local v0, "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v6    # "numAnrs":I
    .restart local v7    # "numExcessive":I
    .restart local v10    # "numCrashes":I
    :cond_243a
    move-object/from16 v221, v0

    move/from16 v222, v6

    move v0, v7

    move/from16 v223, v10

    move-object/from16 v224, v11

    .line 6637
    .end local v3    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .end local v6    # "numAnrs":I
    .end local v7    # "numExcessive":I
    .end local v10    # "numCrashes":I
    .local v0, "numExcessive":I
    .restart local v221    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v222    # "numAnrs":I
    .restart local v223    # "numCrashes":I
    :goto_2443
    add-int/lit8 v5, v5, 0x1

    move v7, v0

    move/from16 v0, v212

    move-object/from16 v3, v218

    move-object/from16 v218, v221

    move/from16 v6, v222

    move/from16 v10, v223

    move-object/from16 v11, v224

    goto :goto_23d4

    .end local v212    # "starts":I
    .end local v221    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v222    # "numAnrs":I
    .end local v223    # "numCrashes":I
    .local v0, "starts":I
    .restart local v6    # "numAnrs":I
    .restart local v7    # "numExcessive":I
    .restart local v10    # "numCrashes":I
    .restart local v218    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    :cond_2453
    move/from16 v212, v0

    move/from16 v222, v6

    move v0, v7

    move/from16 v223, v10

    move-object/from16 v224, v11

    move-object/from16 v221, v218

    move-object/from16 v218, v3

    .line 6657
    .end local v5    # "e":I
    .end local v6    # "numAnrs":I
    .end local v7    # "numExcessive":I
    .end local v10    # "numCrashes":I
    .end local v218    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .local v0, "numExcessive":I
    .restart local v212    # "starts":I
    .restart local v221    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v222    # "numAnrs":I
    .restart local v223    # "numCrashes":I
    const/4 v3, 0x1

    move v0, v3

    .line 6589
    .end local v12    # "userTime":J
    .end local v14    # "systemTime":J
    .end local v211    # "uidActivity":Z
    .end local v212    # "starts":I
    .end local v219    # "foregroundTime":J
    .end local v221    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v222    # "numAnrs":I
    .end local v223    # "numCrashes":I
    .local v0, "uidActivity":Z
    :goto_2462
    add-int/lit8 v9, v9, -0x1

    move/from16 v7, p4

    move-object/from16 v15, v174

    move-object/from16 v5, v203

    move/from16 v6, v208

    move-object/from16 v10, v217

    move-object/from16 v3, v218

    move-object/from16 v212, v224

    goto/16 :goto_22ed

    .end local v174    # "cpuFreqTimes":[J
    .end local v203    # "u":Landroid/os/BatteryStats$Uid;
    .end local v208    # "NSE":I
    .end local v217    # "timesInFreqMs":[J
    .local v5, "u":Landroid/os/BatteryStats$Uid;
    .local v6, "NSE":I
    .local v10, "timesInFreqMs":[J
    .restart local v15    # "cpuFreqTimes":[J
    :cond_2474
    move/from16 v211, v0

    move-object/from16 v203, v5

    move/from16 v208, v6

    move-object/from16 v217, v10

    move-object/from16 v174, v15

    .line 6661
    .end local v0    # "uidActivity":Z
    .end local v5    # "u":Landroid/os/BatteryStats$Uid;
    .end local v6    # "NSE":I
    .end local v9    # "ipr":I
    .end local v10    # "timesInFreqMs":[J
    .end local v15    # "cpuFreqTimes":[J
    .restart local v174    # "cpuFreqTimes":[J
    .restart local v203    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v208    # "NSE":I
    .restart local v211    # "uidActivity":Z
    .restart local v217    # "timesInFreqMs":[J
    nop

    .line 6662
    invoke-virtual/range {v203 .. v203}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 6663
    .local v0, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "ipkg":I
    :goto_2489
    if-ltz v3, :cond_2593

    .line 6664
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Apk "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6665
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6666
    const/4 v5, 0x0

    .line 6667
    .local v5, "apkActivity":Z
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid$Pkg;

    .line 6668
    .local v6, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v7

    .line 6669
    .local v7, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .local v9, "iwa":I
    :goto_24b2
    if-ltz v9, :cond_24e2

    .line 6670
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "      Wakeup alarm "

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6671
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v10, v175

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6672
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Counter;

    move/from16 v12, p4

    invoke-virtual {v11, v12}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 6673
    const-string v11, " times"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6674
    const/4 v5, 0x1

    .line 6669
    add-int/lit8 v9, v9, -0x1

    goto :goto_24b2

    :cond_24e2
    move/from16 v12, p4

    move-object/from16 v10, v175

    .line 6676
    .end local v9    # "iwa":I
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v9

    .line 6677
    .local v9, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    .local v11, "isvc":I
    :goto_24f0
    if-ltz v11, :cond_2571

    .line 6678
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 6679
    .local v13, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-wide/from16 v14, v127

    .end local v127    # "batteryUptime":J
    .local v14, "batteryUptime":J
    invoke-virtual {v13, v14, v15, v12}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v127

    .line 6680
    .local v127, "startTime":J
    move-object/from16 v175, v0

    .end local v0    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .local v175, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v13, v12}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v0

    .line 6681
    .local v0, "starts":I
    move-object/from16 v212, v6

    .end local v6    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .local v212, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    invoke-virtual {v13, v12}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v6

    .line 6682
    .local v6, "launches":I
    cmp-long v218, v127, v136

    if-nez v218, :cond_2518

    if-nez v0, :cond_2518

    if-eqz v6, :cond_2513

    goto :goto_2518

    :cond_2513
    move-object/from16 v218, v7

    move-object/from16 v219, v8

    goto :goto_2564

    .line 6683
    :cond_2518
    :goto_2518
    move-object/from16 v218, v7

    const/4 v7, 0x0

    .end local v7    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .local v218, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6684
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "      Service "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6685
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6686
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "        Created for: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6687
    move-object/from16 v219, v8

    .end local v8    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .local v219, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    div-long v7, v127, v16

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6688
    const-string/jumbo v7, "uptime\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6689
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "        Starts: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6690
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6691
    const-string v7, ", launches: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6692
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6693
    const/4 v5, 0x1

    .line 6677
    .end local v0    # "starts":I
    .end local v6    # "launches":I
    .end local v13    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v127    # "startTime":J
    :goto_2564
    add-int/lit8 v11, v11, -0x1

    move-wide/from16 v127, v14

    move-object/from16 v0, v175

    move-object/from16 v6, v212

    move-object/from16 v7, v218

    move-object/from16 v8, v219

    goto :goto_24f0

    .end local v14    # "batteryUptime":J
    .end local v175    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v212    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v218    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v219    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .local v0, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .local v6, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .restart local v7    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .restart local v8    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .local v127, "batteryUptime":J
    :cond_2571
    move-object/from16 v175, v0

    move-object/from16 v212, v6

    move-object/from16 v218, v7

    move-object/from16 v219, v8

    move-wide/from16 v14, v127

    .line 6696
    .end local v0    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v6    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v7    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v8    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v11    # "isvc":I
    .end local v127    # "batteryUptime":J
    .restart local v14    # "batteryUptime":J
    .restart local v175    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v212    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .restart local v218    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .restart local v219    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    if-nez v5, :cond_2585

    .line 6697
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "      (nothing executed)"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6699
    :cond_2585
    const/16 v211, 0x1

    .line 6663
    .end local v5    # "apkActivity":Z
    .end local v9    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v212    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v218    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    add-int/lit8 v3, v3, -0x1

    move-wide/from16 v127, v14

    move-object/from16 v0, v175

    move-object/from16 v8, v219

    move-object/from16 v175, v10

    goto/16 :goto_2489

    .end local v14    # "batteryUptime":J
    .end local v175    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v219    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v0    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v8    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v127    # "batteryUptime":J
    :cond_2593
    move/from16 v12, p4

    move-object/from16 v219, v8

    move-wide/from16 v14, v127

    move-object/from16 v10, v175

    move-object/from16 v175, v0

    .line 6701
    .end local v0    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v3    # "ipkg":I
    .end local v8    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v127    # "batteryUptime":J
    .restart local v14    # "batteryUptime":J
    .restart local v175    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v219    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    if-nez v211, :cond_25a7

    .line 6702
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    (nothing executed)"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5947
    .end local v94    # "wifiScanCountBg":I
    .end local v95    # "countWakelock":I
    .end local v126    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v131    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v133    # "screenOffCpuFreqTimes":[J
    .end local v135    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v138    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v142    # "fullWifiLockOnTime":J
    .end local v144    # "mobileRxBytes":J
    .end local v146    # "mobileWakeup":J
    .end local v148    # "uidMobileActiveCount":I
    .end local v149    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v150    # "mobileRxPackets":J
    .end local v152    # "wifiTxBytes":J
    .end local v161    # "wifiScanTime":J
    .end local v163    # "wifiRxBytes":J
    .end local v165    # "mobileTxPackets":J
    .end local v167    # "wifiScanActualTimeBg":J
    .end local v169    # "uidWifiRunningTime":J
    .end local v171    # "wifiRxPackets":J
    .end local v173    # "uid":I
    .end local v174    # "cpuFreqTimes":[J
    .end local v175    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v176    # "btTxBytes":J
    .end local v178    # "wifiScanActualTime":J
    .end local v180    # "btRxBytes":J
    .end local v182    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v183    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v184    # "mobileTxBytes":J
    .end local v186    # "uidMobileActiveTime":J
    .end local v188    # "totalFullWakelock":J
    .end local v190    # "totalWindowWakelock":J
    .end local v192    # "wifiTxPackets":J
    .end local v194    # "wifiWakeup":J
    .end local v198    # "totalDrawWakelock":J
    .end local v200    # "totalPartialWakelock":J
    .end local v202    # "wifiScanCount":I
    .end local v203    # "u":Landroid/os/BatteryStats$Uid;
    .end local v204    # "systemCpuTimeUs":J
    .end local v206    # "totalStateTime":J
    .end local v208    # "NSE":I
    .end local v211    # "uidActivity":Z
    .end local v215    # "userCpuTimeUs":J
    .end local v217    # "timesInFreqMs":[J
    .end local v219    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    :cond_25a7
    :goto_25a7
    add-int/lit8 v11, v69, 0x1

    move/from16 v5, p5

    move-object v13, v1

    move v0, v12

    move-wide/from16 v127, v14

    move/from16 v135, v48

    move-object/from16 v131, v125

    move-object/from16 v15, v134

    move-object/from16 v7, v139

    move-wide/from16 v125, v154

    move-object/from16 v149, v158

    move-object/from16 v158, v159

    move-object/from16 v6, v196

    move-wide/from16 v94, v209

    const/4 v1, 0x0

    move-object v14, v4

    move-object/from16 v48, v10

    move-object/from16 v159, v132

    move-wide/from16 v3, v213

    move-object/from16 v132, v117

    .end local v69    # "iu":I
    .local v11, "iu":I
    goto/16 :goto_1435

    .line 6705
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "iu":I
    .end local v48    # "NU":I
    .end local v117    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v134    # "cpuFreqs":[J
    .end local v154    # "mobileActiveTime":J
    .end local v209    # "rawRealtimeMs":J
    .end local v213    # "rawRealtime":J
    .local v3, "rawRealtime":J
    .local v12, "NU":I
    .local v14, "sb":Ljava/lang/StringBuilder;
    .local v15, "cpuFreqs":[J
    .local v94, "rawRealtimeMs":J
    .local v125, "mobileActiveTime":J
    .restart local v127    # "batteryUptime":J
    .restart local v132    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_25cd
    return-void
.end method

.method public greylist-max-o dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p4, "flags"    # I
    .param p5, "histStart"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/FileDescriptor;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ)V"
        }
    .end annotation

    .line 7768
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 7769
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 7771
    and-int/lit8 v1, p4, 0x18

    if-eqz v1, :cond_13

    .line 7772
    invoke-direct {p0, v0, p4, p5, p6}, Landroid/os/BatteryStats;->dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V

    .line 7773
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 7774
    return-void

    .line 7777
    :cond_13
    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 7779
    .local v1, "bToken":J
    const-wide v3, 0x10500000001L

    const/16 v5, 0x23

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7780
    const-wide v3, 0x10300000002L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7781
    const-wide v3, 0x10900000003L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7782
    const-wide v3, 0x10900000004L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7784
    and-int/lit8 v3, p4, 0x4

    if-nez v3, :cond_5d

    .line 7785
    invoke-direct {p0, p1}, Landroid/os/BatteryStats;->getBatteryUsageStats(Landroid/content/Context;)Landroid/os/BatteryUsageStats;

    move-result-object v3

    .line 7786
    .local v3, "stats":Landroid/os/BatteryUsageStats;
    new-instance v4, Landroid/os/BatteryStats$ProportionalAttributionCalculator;

    invoke-direct {v4, p1, v3}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;-><init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V

    .line 7788
    .local v4, "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    invoke-direct {p0, v0, v3, p3, v4}, Landroid/os/BatteryStats;->dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;Ljava/util/List;Landroid/os/BatteryStats$ProportionalAttributionCalculator;)V

    .line 7789
    invoke-direct {p0, v0, v3}, Landroid/os/BatteryStats;->dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;)V

    .line 7792
    .end local v3    # "stats":Landroid/os/BatteryUsageStats;
    .end local v4    # "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    :cond_5d
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7793
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 7794
    return-void
.end method

.method public blacklist dumpRealScreenBrightness(Ljava/io/PrintWriter;)V
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 6709
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6710
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 6711
    .local v1, "rawRealtime":J
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v2, v5}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v6

    .line 6712
    .local v6, "screenOnTime":J
    const-string v8, "Real screen brightnesses:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6713
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_19
    const/16 v9, 0x64

    if-ge v8, v9, :cond_56

    .line 6714
    invoke-virtual {p0, v8}, Landroid/os/BatteryStats;->getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    invoke-virtual {v9, v1, v2, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v9

    .line 6717
    .local v9, "time":J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-nez v11, :cond_2c

    .line 6718
    goto :goto_53

    .line 6720
    :cond_2c
    const-string v11, "\n    "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6721
    sget-object v11, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v11, v11, v8

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6722
    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6723
    div-long v11, v9, v3

    invoke-static {v0, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6724
    const-string v11, "("

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6725
    invoke-virtual {p0, v9, v10, v6, v7}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6726
    const-string v11, ")"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6713
    .end local v9    # "time":J
    :goto_53
    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    .line 6728
    .end local v8    # "i":I
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6729
    return-void
.end method

.method public abstract greylist-max-o finishIteratingHistoryLocked()V
.end method

.method final greylist-max-o formatBytesLocked(J)Ljava/lang/String;
    .registers 10
    .param p1, "bytes"    # J

    .line 3595
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3597
    const-wide/16 v2, 0x400

    cmp-long v0, p1, v2

    if-gez v0, :cond_20

    .line 3598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3599
    :cond_20
    const-wide/32 v2, 0x100000

    cmp-long v0, p1, v2

    const/4 v2, 0x1

    if-gez v0, :cond_42

    .line 3600
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%.2fKB"

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3601
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3602
    :cond_42
    const-wide/32 v3, 0x40000000

    cmp-long v0, p1, v3

    if-gez v0, :cond_63

    .line 3603
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%.2fMB"

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3604
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3606
    :cond_63
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide/high16 v5, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%.2fGB"

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3607
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o formatRatioLocked(JJ)Ljava/lang/String;
    .registers 10
    .param p1, "num"    # J
    .param p3, "den"    # J

    .line 3585
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_9

    .line 3586
    const-string v0, "--%"

    return-object v0

    .line 3588
    :cond_9
    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 3589
    .local v0, "perc":F
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3590
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "%.1f%%"

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3591
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract blacklist getActiveRadioDurationMs(IIIJ)J
.end method

.method public abstract blacklist getActiveRxRadioDurationMs(IIJ)J
.end method

.method public abstract blacklist getActiveTxRadioDurationMs(IIIJ)J
.end method

.method public abstract greylist-max-o getBatteryRealtime(J)J
.end method

.method public abstract greylist getBatteryUptime(J)J
.end method

.method public abstract blacklist getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;
.end method

.method public abstract greylist-max-o getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract blacklist getBluetoothMeasuredBatteryConsumptionUC()J
.end method

.method public abstract greylist-max-o getBluetoothScanTime(JI)J
.end method

.method public abstract greylist-max-o getCameraOnTime(JI)J
.end method

.method public abstract greylist-max-o getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract blacklist getCpuFreqCount()I
.end method

.method public abstract greylist-max-o getCpuFreqs()[J
.end method

.method public abstract blacklist getCpuMeasuredBatteryConsumptionUC()J
.end method

.method public abstract greylist-max-o getCurrentDailyStartTime()J
.end method

.method public abstract blacklist getCustomConsumerMeasuredBatteryConsumptionUC()[J
.end method

.method public abstract blacklist getCustomEnergyConsumerNames()[Ljava/lang/String;
.end method

.method public abstract greylist-max-o getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract greylist-max-o getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract greylist-max-o getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
.end method

.method public abstract greylist-max-o getDailyPackageChanges()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getDeviceIdleModeCount(II)I
.end method

.method public abstract greylist-max-o getDeviceIdleModeTime(IJI)J
.end method

.method public abstract greylist-max-o getDeviceIdlingCount(II)I
.end method

.method public abstract greylist-max-o getDeviceIdlingTime(IJI)J
.end method

.method public abstract greylist-max-o getDischargeAmount(I)I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenDoze()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenDozeSinceCharge()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOff()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOffSinceCharge()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOn()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOnSinceCharge()I
.end method

.method public abstract greylist-max-o getDischargeCurrentLevel()I
.end method

.method public abstract greylist-max-o getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract greylist-max-o getDischargeStartLevel()I
.end method

.method public abstract blacklist getDisplayCount()I
.end method

.method public abstract blacklist getDisplayScreenBrightnessTime(IIJ)J
.end method

.method public abstract blacklist getDisplayScreenDozeTime(IJ)J
.end method

.method public abstract blacklist getDisplayScreenOnTime(IJ)J
.end method

.method public abstract greylist-max-o getEndPlatformVersion()Ljava/lang/String;
.end method

.method public abstract greylist-max-o getEstimatedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getFlashlightOnCount(I)J
.end method

.method public abstract greylist-max-o getFlashlightOnTime(JI)J
.end method

.method public abstract greylist getGlobalWifiRunningTime(JI)J
.end method

.method public abstract blacklist getGnssMeasuredBatteryConsumptionUC()J
.end method

.method public abstract greylist-max-o getGpsBatteryDrainMaMs()J
.end method

.method public abstract greylist-max-o getGpsSignalQualityTime(IJI)J
.end method

.method public abstract greylist-max-o getHighDischargeAmountSinceCharge()I
.end method

.method public abstract greylist-max-o getHistoryBaseTime()J
.end method

.method public abstract greylist-max-o getHistoryStringPoolBytes()I
.end method

.method public abstract greylist-max-o getHistoryStringPoolSize()I
.end method

.method public abstract greylist-max-o getHistoryTagPoolString(I)Ljava/lang/String;
.end method

.method public abstract greylist-max-o getHistoryTagPoolUid(I)I
.end method

.method public abstract greylist-max-o getHistoryTotalSize()I
.end method

.method public abstract greylist-max-o getHistoryUsedSize()I
.end method

.method public abstract greylist-max-o getInteractiveTime(JI)J
.end method

.method public abstract greylist-max-o getIsOnBattery()Z
.end method

.method public abstract greylist-max-o getKernelMemoryStats()Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getLearnedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getLongestDeviceIdleModeTime(I)J
.end method

.method public abstract greylist-max-o getLowDischargeAmountSinceCharge()I
.end method

.method public abstract greylist-max-o getMaxLearnedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getMinLearnedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getMobileRadioActiveAdjustedTime(I)J
.end method

.method public abstract greylist-max-o getMobileRadioActiveCount(I)I
.end method

.method public abstract greylist-max-p getMobileRadioActiveTime(JI)J
.end method

.method public abstract greylist-max-o getMobileRadioActiveUnknownCount(I)I
.end method

.method public abstract greylist-max-o getMobileRadioActiveUnknownTime(I)J
.end method

.method public abstract blacklist getMobileRadioMeasuredBatteryConsumptionUC()J
.end method

.method public abstract greylist-max-o getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract greylist-max-p getNetworkActivityBytes(II)J
.end method

.method public abstract greylist-max-o getNetworkActivityPackets(II)J
.end method

.method public abstract greylist getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract greylist-max-o getNextMaxDailyDeadline()J
.end method

.method public abstract greylist-max-o getNextMinDailyDeadline()J
.end method

.method public abstract greylist-max-o getNumConnectivityChange(I)I
.end method

.method public abstract greylist-max-o getParcelVersion()I
.end method

.method public abstract greylist-max-o getPhoneDataConnectionCount(II)I
.end method

.method public abstract greylist-max-o getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract greylist-max-o getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getPhoneOnCount(I)I
.end method

.method public abstract greylist getPhoneOnTime(JI)J
.end method

.method public abstract greylist-max-o getPhoneSignalScanningTime(JI)J
.end method

.method public abstract greylist-max-o getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getPhoneSignalStrengthCount(II)I
.end method

.method public abstract greylist getPhoneSignalStrengthTime(IJI)J
.end method

.method protected abstract greylist-max-o getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getPowerSaveModeEnabledCount(I)I
.end method

.method public abstract greylist-max-o getPowerSaveModeEnabledTime(JI)J
.end method

.method public abstract greylist-max-o getRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist getScreenBrightnessTime(IJI)J
.end method

.method public abstract greylist-max-o getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getScreenDozeCount(I)I
.end method

.method public abstract blacklist getScreenDozeMeasuredBatteryConsumptionUC()J
.end method

.method public abstract greylist-max-o getScreenDozeTime(JI)J
.end method

.method public abstract greylist-max-o getScreenOffRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getScreenOnCount(I)I
.end method

.method public abstract blacklist getScreenOnMeasuredBatteryConsumptionUC()J
.end method

.method public abstract greylist getScreenOnTime(JI)J
.end method

.method public abstract greylist-max-o getStartClockTime()J
.end method

.method public abstract greylist-max-o getStartCount()I
.end method

.method public abstract greylist-max-o getStartPlatformVersion()Ljava/lang/String;
.end method

.method public abstract blacklist getStatsStartRealtime()J
.end method

.method public abstract blacklist getSystemServiceTimeAtCpuSpeeds()[J
.end method

.method public abstract greylist-max-o getUahDischarge(I)J
.end method

.method public abstract greylist-max-o getUahDischargeDeepDoze(I)J
.end method

.method public abstract greylist-max-o getUahDischargeLightDoze(I)J
.end method

.method public abstract greylist-max-o getUahDischargeScreenDoze(I)J
.end method

.method public abstract greylist-max-o getUahDischargeScreenOff(I)J
.end method

.method public abstract greylist getUidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getWakeLockStats()Landroid/os/WakeLockStats;
.end method

.method public abstract greylist-max-o getWakeupReasonStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getWifiActiveTime(JI)J
.end method

.method public abstract greylist-max-o getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract blacklist getWifiMeasuredBatteryConsumptionUC()J
.end method

.method public abstract greylist-max-o getWifiMulticastWakelockCount(I)I
.end method

.method public abstract greylist-max-o getWifiMulticastWakelockTime(JI)J
.end method

.method public abstract greylist getWifiOnTime(JI)J
.end method

.method public abstract greylist-max-o getWifiSignalStrengthCount(II)I
.end method

.method public abstract greylist-max-o getWifiSignalStrengthTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getWifiStateCount(II)I
.end method

.method public abstract greylist-max-o getWifiStateTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getWifiSupplStateCount(II)I
.end method

.method public abstract greylist-max-o getWifiSupplStateTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o hasBluetoothActivityReporting()Z
.end method

.method public abstract greylist-max-o hasModemActivityReporting()Z
.end method

.method public abstract greylist-max-o hasWifiActivityReporting()Z
.end method

.method public abstract blacklist isProcessStateDataAvailable()Z
.end method

.method public greylist-max-o prepareForDumpLocked()V
    .registers 1

    .line 6782
    return-void
.end method

.method public abstract greylist startIteratingHistoryLocked()Z
.end method

.method public abstract greylist-max-o writeToParcelWithoutUids(Landroid/os/Parcel;I)V
.end method
