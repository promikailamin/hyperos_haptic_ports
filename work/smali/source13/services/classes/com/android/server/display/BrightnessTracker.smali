.class public Lcom/android/server/display/BrightnessTracker;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessTracker$Injector;,
        Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;,
        Lcom/android/server/display/BrightnessTracker$TrackerHandler;,
        Lcom/android/server/display/BrightnessTracker$Receiver;,
        Lcom/android/server/display/BrightnessTracker$SettingsObserver;,
        Lcom/android/server/display/BrightnessTracker$DisplayListener;,
        Lcom/android/server/display/BrightnessTracker$SensorListener;,
        Lcom/android/server/display/BrightnessTracker$LightData;
    }
.end annotation


# static fields
.field private static final AMBIENT_BRIGHTNESS_STATS_FILE:Ljava/lang/String; = "ambient_brightness_stats.xml"

.field private static final ATTR_BATTERY_LEVEL:Ljava/lang/String; = "batteryLevel"

.field private static final ATTR_COLOR_SAMPLE_DURATION:Ljava/lang/String; = "colorSampleDuration"

.field private static final ATTR_COLOR_TEMPERATURE:Ljava/lang/String; = "colorTemperature"

.field private static final ATTR_COLOR_VALUE_BUCKETS:Ljava/lang/String; = "colorValueBuckets"

.field private static final ATTR_DEFAULT_CONFIG:Ljava/lang/String; = "defaultConfig"

.field private static final ATTR_LAST_NITS:Ljava/lang/String; = "lastNits"

.field private static final ATTR_LUX:Ljava/lang/String; = "lux"

.field private static final ATTR_LUX_TIMESTAMPS:Ljava/lang/String; = "luxTimestamps"

.field private static final ATTR_NIGHT_MODE:Ljava/lang/String; = "nightMode"

.field private static final ATTR_NITS:Ljava/lang/String; = "nits"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_POWER_SAVE:Ljava/lang/String; = "powerSaveFactor"

.field private static final ATTR_REDUCE_BRIGHT_COLORS:Ljava/lang/String; = "reduceBrightColors"

.field private static final ATTR_REDUCE_BRIGHT_COLORS_OFFSET:Ljava/lang/String; = "reduceBrightColorsOffset"

.field private static final ATTR_REDUCE_BRIGHT_COLORS_STRENGTH:Ljava/lang/String; = "reduceBrightColorsStrength"

.field private static final ATTR_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final ATTR_UNIQUE_DISPLAY_ID:Ljava/lang/String; = "uniqueDisplayId"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final ATTR_USER_POINT:Ljava/lang/String; = "userPoint"

.field private static final COLOR_SAMPLE_COMPONENT_MASK:I = 0x4

.field private static final COLOR_SAMPLE_DURATION:J

.field static final DEBUG:Z = false

.field private static final EVENTS_FILE:Ljava/lang/String; = "brightness_events.xml"

.field private static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final LUX_EVENT_HORIZON:J

.field private static final MAX_EVENTS:I = 0x64

.field private static final MAX_EVENT_AGE:J

.field private static final MSG_BACKGROUND_START:I = 0x0

.field private static final MSG_BRIGHTNESS_CHANGED:I = 0x1

.field private static final MSG_BRIGHTNESS_CONFIG_CHANGED:I = 0x4

.field private static final MSG_SENSOR_CHANGED:I = 0x5

.field private static final MSG_START_SENSOR_LISTENER:I = 0x3

.field private static final MSG_STOP_SENSOR_LISTENER:I = 0x2

.field static final TAG:Ljava/lang/String; = "BrightnessTracker"

.field private static final TAG_EVENT:Ljava/lang/String; = "event"

.field private static final TAG_EVENTS:Ljava/lang/String; = "events"


# instance fields
.field private mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

.field private final mBgHandler:Landroid/os/Handler;

.field private mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mColorSamplingEnabled:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDataCollectionLock:Ljava/lang/Object;

.field private mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

.field private mEvents:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsDirty:Z

.field private final mEventsLock:Ljava/lang/Object;

.field private mFrameRate:F

.field private final mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

.field private mLastBatteryLevel:F

.field private mLastBrightness:F

.field private mLastSensorReadings:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/server/display/BrightnessTracker$LightData;",
            ">;"
        }
    .end annotation
.end field

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mNoFramesToSample:I

.field private mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

.field private mSensorRegistered:Z

.field private mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

.field private mStarted:Z

.field private final mUserManager:Landroid/os/UserManager;

.field private volatile mWriteBrightnessTrackerStateScheduled:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmBgHandler(Lcom/android/server/display/BrightnessTracker;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBrightnessConfiguration(Lcom/android/server/display/BrightnessTracker;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmColorSamplingEnabled(Lcom/android/server/display/BrightnessTracker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/server/display/BrightnessTracker;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/BrightnessTracker;)Lcom/android/server/display/BrightnessTracker$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBrightnessConfiguration(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$mbackgroundStart(Lcom/android/server/display/BrightnessTracker;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->backgroundStart(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbatteryLevelChanged(Lcom/android/server/display/BrightnessTracker;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->batteryLevelChanged(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableColorSampling(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableColorSampling(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleBrightnessChanged(Lcom/android/server/display/BrightnessTracker;FZFZZJLjava/lang/String;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/display/BrightnessTracker;->handleBrightnessChanged(FZFZZJLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSensorChanged(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/Sensor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->handleSensorChanged(Landroid/hardware/Sensor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecordAmbientBrightnessStats(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/SensorEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->recordAmbientBrightnessStats(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecordSensorEvent(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/SensorEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->recordSensorEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleWriteBrightnessTrackerState(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->scheduleWriteBrightnessTrackerState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSensorListener(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopSensorListener(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateColorSampling(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->updateColorSampling()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 103
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    .line 105
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/display/BrightnessTracker;->LUX_EVENT_HORIZON:J

    .line 136
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/BrightnessTracker;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 138
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/BrightnessTracker;->COLOR_SAMPLE_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/BrightnessTracker$Injector;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/display/BrightnessTracker$Injector;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    .line 144
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/hardware/display/BrightnessChangeEvent;

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 172
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    .line 176
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 178
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    .line 180
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 190
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    .line 192
    if-eqz p2, :cond_3c

    .line 193
    iput-object p2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    goto :goto_43

    .line 195
    :cond_3c
    new-instance v0, Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-direct {v0}, Lcom/android/server/display/BrightnessTracker$Injector;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 197
    :goto_43
    new-instance v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/BrightnessTracker$TrackerHandler;-><init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    .line 198
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    .line 199
    return-void
.end method

.method private backgroundStart(F)V
    .registers 6
    .param p1, "initialBrightness"    # F

    .line 226
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->readEvents()V

    .line 227
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->readAmbientBrightnessStats()V

    .line 229
    new-instance v0, Lcom/android/server/display/BrightnessTracker$SensorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/BrightnessTracker$SensorListener;-><init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$SensorListener-IA;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    .line 231
    new-instance v0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/display/BrightnessTracker$SettingsObserver;-><init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    .line 232
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/display/BrightnessTracker$Injector;->registerBrightnessModeObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 233
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    new-instance v2, Lcom/android/server/display/BrightnessTracker$Receiver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/display/BrightnessTracker$Receiver;-><init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$Receiver-IA;)V

    iput-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 241
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/display/BrightnessTracker$Injector;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 243
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->scheduleIdleJob(Landroid/content/Context;)V

    .line 244
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_52
    iput p1, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 246
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 247
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_5c

    .line 248
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    .line 249
    return-void

    .line 247
    :catchall_5c
    move-exception v2

    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v2
.end method

.method private batteryLevelChanged(II)V
    .registers 6
    .param p1, "level"    # I
    .param p2, "scale"    # I

    .line 940
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    :try_start_6
    iput v1, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    .line 942
    monitor-exit v0

    .line 943
    return-void

    .line 942
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private disableColorSampling()V
    .registers 4

    .line 862
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-nez v0, :cond_5

    .line 863
    return-void

    .line 865
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->enableColorSampling(ZI)Z

    .line 866
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 867
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    if-eqz v0, :cond_1b

    .line 868
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/BrightnessTracker$Injector;->unRegisterDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 869
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    .line 874
    :cond_1b
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSensorRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorSamplingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNoFramesToSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    return-void
.end method

.method private enableColorSampling()V
    .registers 6

    .line 822
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 823
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    if-eqz v0, :cond_7e

    .line 826
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->shouldCollectColorSamples()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_7e

    .line 830
    :cond_23
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFrameRate(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    .line 831
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_3a

    .line 832
    const-string v0, "BrightnessTracker"

    const-string v1, "Default display has a zero or negative framerate."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return-void

    .line 835
    :cond_3a
    sget-wide v1, Lcom/android/server/display/BrightnessTracker;->COLOR_SAMPLE_DURATION:J

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    .line 837
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->getSamplingAttributes()Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v0

    .line 845
    .local v0, "attributes":Landroid/hardware/display/DisplayedContentSamplingAttributes;
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getPixelFormat()I

    move-result v1

    const/16 v2, 0x37

    if-ne v1, v2, :cond_64

    .line 846
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getComponentMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_64

    .line 848
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->enableColorSampling(ZI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 855
    :cond_64
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    if-nez v1, :cond_7d

    .line 856
    new-instance v1, Lcom/android/server/display/BrightnessTracker$DisplayListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/BrightnessTracker$DisplayListener;-><init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$DisplayListener-IA;)V

    iput-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    .line 857
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/display/BrightnessTracker$Injector;->registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 859
    :cond_7d
    return-void

    .line 827
    .end local v0    # "attributes":Landroid/hardware/display/DisplayedContentSamplingAttributes;
    :cond_7e
    :goto_7e
    return-void
.end method

.method private handleBrightnessChanged(FZFZZJLjava/lang/String;)V
    .registers 28
    .param p1, "brightness"    # F
    .param p2, "userInitiated"    # Z
    .param p3, "powerBrightnessFactor"    # F
    .param p4, "isUserSetBrightness"    # Z
    .param p5, "isDefaultBrightnessConfig"    # Z
    .param p6, "timestamp"    # J
    .param p8, "uniqueDisplayId"    # Ljava/lang/String;

    .line 345
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 346
    :try_start_7
    iget-boolean v0, v1, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    if-nez v0, :cond_d

    .line 348
    monitor-exit v3

    return-void

    .line 351
    :cond_d
    iget v0, v1, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 352
    .local v0, "previousBrightness":F
    iput v2, v1, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 354
    if-nez p2, :cond_15

    .line 358
    monitor-exit v3

    return-void

    .line 361
    :cond_15
    new-instance v4, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    invoke-direct {v4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 362
    .local v4, "builder":Landroid/hardware/display/BrightnessChangeEvent$Builder;
    invoke-virtual {v4, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 363
    move-wide/from16 v5, p6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 364
    move/from16 v7, p3

    invoke-virtual {v4, v7}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 365
    move/from16 v8, p4

    invoke-virtual {v4, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 366
    move/from16 v9, p5

    invoke-virtual {v4, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 367
    move-object/from16 v10, p8

    invoke-virtual {v4, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUniqueDisplayId(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 369
    iget-object v11, v1, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v11}, Ljava/util/Deque;->size()I

    move-result v11

    .line 370
    .local v11, "readingCount":I
    if-nez v11, :cond_40

    .line 372
    monitor-exit v3

    return-void

    .line 375
    :cond_40
    new-array v12, v11, [F

    .line 376
    .local v12, "luxValues":[F
    new-array v13, v11, [J

    .line 378
    .local v13, "luxTimestamps":[J
    const/4 v14, 0x0

    .line 381
    .local v14, "pos":I
    iget-object v15, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v15}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v15

    .line 382
    .local v15, "currentTimeMillis":J
    iget-object v5, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v5}, Lcom/android/server/display/BrightnessTracker$Injector;->elapsedRealtimeNanos()J

    move-result-wide v5

    .line 383
    .local v5, "elapsedTimeNanos":J
    iget-object v7, v1, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_57
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_87

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/display/BrightnessTracker$LightData;

    move-object/from16 v18, v17

    .line 384
    .local v18, "reading":Lcom/android/server/display/BrightnessTracker$LightData;
    move-object/from16 v17, v7

    move-object/from16 v7, v18

    .end local v18    # "reading":Lcom/android/server/display/BrightnessTracker$LightData;
    .local v7, "reading":Lcom/android/server/display/BrightnessTracker$LightData;
    iget v8, v7, Lcom/android/server/display/BrightnessTracker$LightData;->lux:F

    aput v8, v12, v14

    .line 385
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v9, v7, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    sub-long v9, v5, v9

    .line 386
    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    sub-long v8, v15, v8

    aput-wide v8, v13, v14

    .line 387
    nop

    .end local v7    # "reading":Lcom/android/server/display/BrightnessTracker$LightData;
    add-int/lit8 v14, v14, 0x1

    .line 388
    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p8

    move-object/from16 v7, v17

    goto :goto_57

    .line 389
    :cond_87
    invoke-virtual {v4, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 390
    invoke-virtual {v4, v13}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 392
    iget v7, v1, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    invoke-virtual {v4, v7}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 393
    invoke-virtual {v4, v0}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 394
    nop

    .end local v0    # "previousBrightness":F
    .end local v5    # "elapsedTimeNanos":J
    .end local v11    # "readingCount":I
    .end local v12    # "luxValues":[F
    .end local v13    # "luxTimestamps":[J
    .end local v14    # "pos":I
    .end local v15    # "currentTimeMillis":J
    monitor-exit v3
    :try_end_97
    .catchall {:try_start_7 .. :try_end_97} :catchall_130

    .line 397
    :try_start_97
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->getFocusedStack()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    .line 398
    .local v0, "focusedTask":Landroid/app/ActivityTaskManager$RootTaskInfo;
    if-eqz v0, :cond_12d

    iget-object v3, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_12d

    .line 399
    iget v3, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->userId:I

    invoke-virtual {v4, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 400
    iget-object v3, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_b1} :catch_12e

    .line 411
    .end local v0    # "focusedTask":Landroid/app/ActivityTaskManager$RootTaskInfo;
    nop

    .line 413
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, v1, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->isNightDisplayActivated(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 414
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, v1, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->getNightDisplayColorTemperature(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 415
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, v1, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->isReduceBrightColorsActivated(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColors(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 416
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, v1, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->getReduceBrightColorsStrength(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsStrength(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 417
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, v1, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->getReduceBrightColorsOffsetFactor(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-virtual {v4, v0}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsOffset(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 420
    iget-boolean v0, v1, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-eqz v0, :cond_119

    .line 421
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget v3, v1, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    invoke-virtual {v0, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->sampleColor(I)Landroid/hardware/display/DisplayedContentSample;

    move-result-object v0

    .line 422
    .local v0, "sample":Landroid/hardware/display/DisplayedContentSample;
    if-eqz v0, :cond_119

    sget-object v3, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    move-result-object v3

    if-eqz v3, :cond_119

    .line 424
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSample;->getNumFrames()J

    move-result-wide v5

    long-to-float v3, v5

    iget v5, v1, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    div-float/2addr v3, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v5

    .line 425
    .local v3, "numMillis":F
    sget-object v5, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    .line 426
    invoke-virtual {v0, v5}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    move-result-object v5

    .line 427
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-long v6, v6

    .line 425
    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 431
    .end local v0    # "sample":Landroid/hardware/display/DisplayedContentSample;
    .end local v3    # "numMillis":F
    :cond_119
    invoke-virtual {v4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    move-result-object v3

    .line 435
    .local v3, "event":Landroid/hardware/display/BrightnessChangeEvent;
    iget-object v5, v1, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 436
    const/4 v0, 0x1

    :try_start_121
    iput-boolean v0, v1, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    .line 437
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 438
    monitor-exit v5

    .line 439
    return-void

    .line 438
    :catchall_12a
    move-exception v0

    monitor-exit v5
    :try_end_12c
    .catchall {:try_start_121 .. :try_end_12c} :catchall_12a

    throw v0

    .line 406
    .end local v3    # "event":Landroid/hardware/display/BrightnessChangeEvent;
    .local v0, "focusedTask":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :cond_12d
    return-void

    .line 408
    .end local v0    # "focusedTask":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :catch_12e
    move-exception v0

    .line 410
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 394
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "builder":Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :catchall_130
    move-exception v0

    :try_start_131
    monitor-exit v3
    :try_end_132
    .catchall {:try_start_131 .. :try_end_132} :catchall_130

    throw v0
.end method

.method private handleSensorChanged(Landroid/hardware/Sensor;)V
    .registers 4
    .param p1, "lightSensor"    # Landroid/hardware/Sensor;

    .line 442
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mLightSensor:Landroid/hardware/Sensor;

    if-eq v0, p1, :cond_19

    .line 443
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mLightSensor:Landroid/hardware/Sensor;

    .line 444
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    .line 445
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_c
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 447
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_16

    .line 450
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    goto :goto_19

    .line 447
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1

    .line 452
    :cond_19
    :goto_19
    return-void
.end method

.method private readAmbientBrightnessStats()V
    .registers 6

    .line 565
    new-instance v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker;-><init>(Landroid/os/UserManager;Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 566
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v1, "ambient_brightness_stats.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    .line 567
    .local v0, "readFrom":Landroid/util/AtomicFile;
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 568
    const/4 v1, 0x0

    .line 570
    .local v1, "input":Ljava/io/FileInputStream;
    :try_start_1b
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 571
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->readStats(Ljava/io/InputStream;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_2c
    .catchall {:try_start_1b .. :try_end_25} :catchall_2a

    .line 576
    nop

    :goto_26
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 577
    goto :goto_3d

    .line 576
    :catchall_2a
    move-exception v2

    goto :goto_39

    .line 572
    :catch_2c
    move-exception v2

    .line 573
    .local v2, "e":Ljava/io/IOException;
    :try_start_2d
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 574
    const-string v3, "BrightnessTracker"

    const-string v4, "Failed to read ambient brightness stats."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_2a

    .line 576
    nop

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_26

    :goto_39
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 577
    throw v2

    .line 579
    .end local v1    # "input":Ljava/io/FileInputStream;
    :cond_3d
    :goto_3d
    return-void
.end method

.method private readEvents()V
    .registers 7

    .line 544
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    .line 547
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 548
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v2, "brightness_events.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    .line 549
    .local v1, "readFrom":Landroid/util/AtomicFile;
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_3d

    if-eqz v2, :cond_3b

    .line 550
    const/4 v2, 0x0

    .line 552
    .local v2, "input":Ljava/io/FileInputStream;
    :try_start_1c
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 553
    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessTracker;->readEventsLocked(Ljava/io/InputStream;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_2a
    .catchall {:try_start_1c .. :try_end_24} :catchall_28

    .line 558
    :goto_24
    :try_start_24
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_3d

    .line 559
    goto :goto_3b

    .line 558
    :catchall_28
    move-exception v3

    goto :goto_36

    .line 554
    :catch_2a
    move-exception v3

    .line 555
    .local v3, "e":Ljava/io/IOException;
    :try_start_2b
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 556
    const-string v4, "BrightnessTracker"

    const-string v5, "Failed to read change mEvents."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_28

    goto :goto_24

    .line 558
    .end local v3    # "e":Ljava/io/IOException;
    :goto_36
    :try_start_36
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 559
    nop

    .end local p0    # "this":Lcom/android/server/display/BrightnessTracker;
    throw v3

    .line 561
    .end local v1    # "readFrom":Landroid/util/AtomicFile;
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/display/BrightnessTracker;
    :cond_3b
    :goto_3b
    monitor-exit v0

    .line 562
    return-void

    .line 561
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private recordAmbientBrightnessStats(Landroid/hardware/SensorEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 936
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->add(IF)V

    .line 937
    return-void
.end method

.method private recordSensorEvent(Landroid/hardware/SensorEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 906
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->elapsedRealtimeNanos()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/display/BrightnessTracker;->LUX_EVENT_HORIZON:J

    sub-long/2addr v0, v2

    .line 907
    .local v0, "horizon":J
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 911
    :try_start_c
    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v5, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 912
    invoke-interface {v5}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v5, v5, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_26

    .line 914
    monitor-exit v2

    return-void

    .line 916
    :cond_26
    const/4 v3, 0x0

    .line 917
    .local v3, "data":Lcom/android/server/display/BrightnessTracker$LightData;
    :goto_27
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_47

    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 918
    invoke-interface {v4}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v4, v4, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    cmp-long v4, v4, v0

    if-gez v4, :cond_47

    .line 920
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessTracker$LightData;

    move-object v3, v4

    goto :goto_27

    .line 924
    :cond_47
    if-eqz v3, :cond_4e

    .line 925
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 928
    :cond_4e
    new-instance v4, Lcom/android/server/display/BrightnessTracker$LightData;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/display/BrightnessTracker$LightData;-><init>(Lcom/android/server/display/BrightnessTracker$LightData-IA;)V

    move-object v3, v4

    .line 929
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v4, v3, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    .line 930
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v3, Lcom/android/server/display/BrightnessTracker$LightData;->lux:F

    .line 931
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 932
    .end local v3    # "data":Lcom/android/server/display/BrightnessTracker$LightData;
    monitor-exit v2

    .line 933
    return-void

    .line 932
    :catchall_67
    move-exception v3

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_c .. :try_end_69} :catchall_67

    throw v3
.end method

.method private scheduleWriteBrightnessTrackerState()V
    .registers 3

    .line 486
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    if-nez v0, :cond_11

    .line 487
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/BrightnessTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    .line 494
    :cond_11
    return-void
.end method

.method private startSensorListener()V
    .registers 6

    .line 456
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    if-nez v0, :cond_5

    .line 457
    return-void

    .line 460
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_3a

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 463
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    .line 464
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 465
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->start()V

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    .line 467
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mLightSensor:Landroid/hardware/Sensor;

    .line 468
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v4

    .line 467
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/display/BrightnessTracker$Injector;->registerSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V

    .line 470
    :cond_3a
    return-void
.end method

.method private stopSensorListener()V
    .registers 4

    .line 474
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    if-nez v0, :cond_5

    .line 475
    return-void

    .line 478
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    if-eqz v1, :cond_18

    .line 479
    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->stop()V

    .line 480
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    .line 483
    :cond_18
    return-void
.end method

.method private updateColorSampling()V
    .registers 3

    .line 877
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-nez v0, :cond_5

    .line 878
    return-void

    .line 880
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFrameRate(Landroid/content/Context;)F

    move-result v0

    .line 881
    .local v0, "frameRate":F
    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_19

    .line 882
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    .line 883
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    .line 885
    :cond_19
    return-void
.end method

.method private writeAmbientBrightnessStats()V
    .registers 6

    .line 528
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v1, "ambient_brightness_stats.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    .line 529
    .local v0, "writeTo":Landroid/util/AtomicFile;
    if-nez v0, :cond_b

    .line 530
    return-void

    .line 532
    :cond_b
    const/4 v1, 0x0

    .line 534
    .local v1, "output":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 535
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->writeStats(Ljava/io/OutputStream;)V

    .line 536
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_1a

    .line 540
    goto :goto_25

    .line 537
    :catch_1a
    move-exception v2

    .line 538
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 539
    const-string v3, "BrightnessTracker"

    const-string v4, "Failed to write ambient brightness stats."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    .end local v2    # "e":Ljava/io/IOException;
    :goto_25
    return-void
.end method

.method private writeEvents()V
    .registers 7

    .line 497
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    if-nez v1, :cond_9

    .line 500
    monitor-exit v0

    return-void

    .line 503
    :cond_9
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v2, "brightness_events.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    .line 504
    .local v1, "writeTo":Landroid/util/AtomicFile;
    if-nez v1, :cond_15

    .line 505
    monitor-exit v0

    return-void

    .line 507
    :cond_15
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    .line 508
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 509
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 511
    :cond_27
    iput-boolean v3, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_46

    goto :goto_44

    .line 513
    :cond_2a
    const/4 v2, 0x0

    .line 515
    .local v2, "output":Ljava/io/FileOutputStream;
    :try_start_2b
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v2, v4

    .line 516
    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessTracker;->writeEventsLocked(Ljava/io/OutputStream;)V

    .line 517
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 518
    iput-boolean v3, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_38} :catch_39
    .catchall {:try_start_2b .. :try_end_38} :catchall_46

    .line 522
    goto :goto_44

    .line 519
    :catch_39
    move-exception v3

    .line 520
    .local v3, "e":Ljava/io/IOException;
    :try_start_3a
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 521
    const-string v4, "BrightnessTracker"

    const-string v5, "Failed to write change mEvents."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    .end local v1    # "writeTo":Landroid/util/AtomicFile;
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_44
    monitor-exit v0

    .line 525
    return-void

    .line 524
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_46

    throw v1
.end method


# virtual methods
.method adjustSensorListenerWithProximity(Z)V
    .registers 4
    .param p1, "positive"    # Z

    .line 1245
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    if-eqz p1, :cond_6

    const/4 v1, 0x2

    goto :goto_7

    :cond_6
    const/4 v1, 0x3

    :goto_7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1246
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1247
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 771
    const-string v0, "BrightnessTracker state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 773
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLightSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastBatteryLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSensorReadings.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 778
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c0

    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSensorReadings time span "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 780
    invoke-interface {v2}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v2, v2, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 781
    invoke-interface {v2}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v2, v2, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 779
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    :cond_c0
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_8 .. :try_end_c1} :catchall_241

    .line 784
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 785
    :try_start_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEventsDirty="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEvents.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 788
    .local v0, "events":[Landroid/hardware/display/BrightnessChangeEvent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_101
    array-length v3, v0

    if-ge v2, v3, :cond_20c

    .line 789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/display/BrightnessTracker;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    aget-object v6, v0, v2

    iget-wide v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 790
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    iget v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    iget v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    iget v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 792
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", isUserSetBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    iget-boolean v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 793
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", powerBrightnessFactor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    iget v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 794
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", isDefaultBrightnessConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    iget-boolean v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 795
    const-string v3, " {"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 796
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1bf
    aget-object v4, v0, v2

    iget-object v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v4, v4

    if-ge v3, v4, :cond_202

    .line 797
    if-eqz v3, :cond_1cd

    .line 798
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 800
    :cond_1cd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    aget-wide v5, v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 796
    add-int/lit8 v3, v3, 0x1

    goto :goto_1bf

    .line 802
    .end local v3    # "j":I
    :cond_202
    const-string/jumbo v3, "}"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_101

    .line 804
    .end local v0    # "events":[Landroid/hardware/display/BrightnessChangeEvent;
    .end local v2    # "i":I
    :cond_20c
    monitor-exit v1
    :try_end_20d
    .catchall {:try_start_c4 .. :try_end_20d} :catchall_23e

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWriteBrightnessTrackerStateScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/BrightnessTracker;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 808
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    if-eqz v0, :cond_23d

    .line 809
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 810
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->dump(Ljava/io/PrintWriter;)V

    .line 812
    :cond_23d
    return-void

    .line 804
    :catchall_23e
    move-exception v0

    :try_start_23f
    monitor-exit v1
    :try_end_240
    .catchall {:try_start_23f .. :try_end_240} :catchall_23e

    throw v0

    .line 783
    :catchall_241
    move-exception v1

    :try_start_242
    monitor-exit v0
    :try_end_243
    .catchall {:try_start_242 .. :try_end_243} :catchall_241

    throw v1
.end method

.method public getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    if-eqz v0, :cond_11

    .line 889
    nop

    .line 890
    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->getUserStats(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 891
    .local v0, "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    if-eqz v0, :cond_11

    .line 892
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 895
    .end local v0    # "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    :cond_11
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .registers 12
    .param p1, "userId"    # I
    .param p2, "includePackage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 285
    .local v1, "events":[Landroid/hardware/display/BrightnessChangeEvent;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_6f

    .line 286
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/display/BrightnessTracker$Injector;->getProfileIds(Landroid/os/UserManager;I)[I

    move-result-object v0

    .line 287
    .local v0, "profiles":[I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 288
    .local v2, "toRedact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    array-length v4, v0

    const/4 v5, 0x1

    if-ge v3, v4, :cond_36

    .line 289
    aget v4, v0, v3

    .line 292
    .local v4, "profileId":I
    if-eqz p2, :cond_26

    if-eq v4, p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v5, 0x0

    .line 293
    .local v5, "redact":Z
    :cond_26
    :goto_26
    aget v6, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .end local v4    # "profileId":I
    .end local v5    # "redact":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 295
    .end local v3    # "i":I
    :cond_36
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    .local v3, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/BrightnessChangeEvent;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3d
    array-length v6, v1

    if-ge v4, v6, :cond_69

    .line 297
    aget-object v6, v1, v4

    iget v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 298
    .local v6, "redact":Ljava/lang/Boolean;
    if-eqz v6, :cond_66

    .line 299
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_5c

    .line 300
    aget-object v7, v1, v4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 302
    :cond_5c
    new-instance v7, Landroid/hardware/display/BrightnessChangeEvent;

    aget-object v8, v1, v4

    invoke-direct {v7, v8, v5}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(Landroid/hardware/display/BrightnessChangeEvent;Z)V

    .line 304
    .local v7, "event":Landroid/hardware/display/BrightnessChangeEvent;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v6    # "redact":Ljava/lang/Boolean;
    .end local v7    # "event":Landroid/hardware/display/BrightnessChangeEvent;
    :cond_66
    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 308
    .end local v4    # "i":I
    :cond_69
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v4

    .line 285
    .end local v0    # "profiles":[I
    .end local v1    # "events":[Landroid/hardware/display/BrightnessChangeEvent;
    .end local v2    # "toRedact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v3    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/BrightnessChangeEvent;>;"
    :catchall_6f
    move-exception v1

    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method synthetic lambda$dump$1$com-android-server-display-BrightnessTracker(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 807
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method synthetic lambda$scheduleWriteBrightnessTrackerState$0$com-android-server-display-BrightnessTracker()V
    .registers 2

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    .line 489
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->writeEvents()V

    .line 490
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->writeAmbientBrightnessStats()V

    .line 491
    return-void
.end method

.method public notifyBrightnessChanged(FZFZZLjava/lang/String;)V
    .registers 19
    .param p1, "brightness"    # F
    .param p2, "userInitiated"    # Z
    .param p3, "powerBrightnessFactor"    # F
    .param p4, "isUserSetBrightness"    # Z
    .param p5, "isDefaultBrightnessConfig"    # Z
    .param p6, "uniqueDisplayId"    # Ljava/lang/String;

    .line 325
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    .line 326
    const/4 v2, 0x0

    new-instance v11, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    iget-object v3, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 328
    invoke-virtual {v3}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v8

    move-object v3, v11

    move v4, p1

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;-><init>(FFZZJLjava/lang/String;)V

    .line 325
    const/4 v3, 0x1

    move v4, p2

    invoke-virtual {v1, v3, p2, v2, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 329
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 330
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2
    .param p1, "newUserId"    # I

    .line 273
    iput p1, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 274
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .registers 1

    .line 312
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->scheduleWriteBrightnessTrackerState()V

    .line 313
    return-void
.end method

.method readEventsLocked(Ljava/io/InputStream;)V
    .registers 27
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 665
    move-object/from16 v1, p0

    const-string v0, ","

    :try_start_4
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    .line 668
    .local v2, "parser":Landroid/util/TypedXmlPullParser;
    :goto_8
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_14

    const/4 v3, 0x2

    if-eq v4, v3, :cond_14

    goto :goto_8

    .line 671
    :cond_14
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 672
    .local v3, "tag":Ljava/lang/String;
    const-string v6, "events"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1da

    .line 677
    iget-object v6, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v6}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    sub-long/2addr v6, v8

    .line 679
    .local v6, "timeCutOff":J
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v8

    .line 680
    .local v8, "outerDepth":I
    :goto_2d
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v9

    move v4, v9

    if-eq v9, v5, :cond_1d4

    const/4 v9, 0x3

    if-ne v4, v9, :cond_3d

    .line 681
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v8, :cond_1d8

    .line 682
    :cond_3d
    if-eq v4, v9, :cond_1c5

    const/4 v9, 0x4

    if-ne v4, v9, :cond_4a

    .line 683
    move-object/from16 v22, v0

    move-object/from16 v21, v2

    move/from16 v17, v4

    goto/16 :goto_1cb

    .line 685
    :cond_4a
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 686
    const-string v9, "event"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b2

    .line 687
    new-instance v9, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    invoke-direct {v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 689
    .local v9, "builder":Landroid/hardware/display/BrightnessChangeEvent$Builder;
    const-string/jumbo v10, "nits"

    const/4 v11, 0x0

    invoke-interface {v2, v11, v10}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 690
    const-string/jumbo v10, "timestamp"

    invoke-interface {v2, v11, v10}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 691
    const-string/jumbo v10, "packageName"

    invoke-interface {v2, v11, v10}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 692
    iget-object v10, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v12, v1, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v13, "user"

    .line 693
    invoke-interface {v2, v11, v13}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 692
    invoke-virtual {v10, v12, v13}, Lcom/android/server/display/BrightnessTracker$Injector;->getUserId(Landroid/os/UserManager;I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 694
    const-string/jumbo v10, "uniqueDisplayId"

    invoke-interface {v2, v11, v10}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 695
    .local v10, "uniqueDisplayId":Ljava/lang/String;
    if-nez v10, :cond_99

    .line 696
    const-string v12, ""

    move-object v10, v12

    .line 698
    :cond_99
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUniqueDisplayId(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 699
    const-string v12, "batteryLevel"

    invoke-interface {v2, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v12

    invoke-virtual {v9, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 700
    const-string/jumbo v12, "nightMode"

    invoke-interface {v2, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v9, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 701
    const-string v12, "colorTemperature"

    .line 702
    invoke-interface {v2, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 701
    invoke-virtual {v9, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 703
    const-string/jumbo v12, "reduceBrightColors"

    .line 704
    invoke-interface {v2, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 703
    invoke-virtual {v9, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColors(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 705
    const-string/jumbo v12, "reduceBrightColorsStrength"

    .line 706
    invoke-interface {v2, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 705
    invoke-virtual {v9, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsStrength(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 707
    const-string/jumbo v12, "reduceBrightColorsOffset"

    .line 708
    invoke-interface {v2, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v12

    .line 707
    invoke-virtual {v9, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsOffset(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 709
    const-string/jumbo v12, "lastNits"

    invoke-interface {v2, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v12

    invoke-virtual {v9, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 711
    const-string/jumbo v12, "lux"

    invoke-interface {v2, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 712
    .local v12, "luxValue":Ljava/lang/String;
    const-string/jumbo v13, "luxTimestamps"

    invoke-interface {v2, v11, v13}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 714
    .local v13, "luxTimestamp":Ljava/lang/String;
    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 715
    .local v14, "luxValuesStrings":[Ljava/lang/String;
    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 716
    .local v15, "luxTimestampsStrings":[Ljava/lang/String;
    array-length v5, v14

    array-length v11, v15

    if-eq v5, v11, :cond_104

    .line 717
    move-object/from16 v22, v0

    move-object/from16 v21, v2

    move-object/from16 v18, v3

    move/from16 v17, v4

    goto/16 :goto_1ba

    .line 719
    :cond_104
    array-length v5, v14

    new-array v5, v5, [F

    .line 720
    .local v5, "luxValues":[F
    array-length v11, v14

    new-array v11, v11, [J

    .line 721
    .local v11, "luxTimestamps":[J
    const/16 v17, 0x0

    move-object/from16 v18, v3

    move/from16 v3, v17

    .local v3, "i":I
    .local v18, "tag":Ljava/lang/String;
    :goto_110
    move/from16 v17, v4

    .end local v4    # "type":I
    .local v17, "type":I
    array-length v4, v5

    if-ge v3, v4, :cond_12a

    .line 722
    aget-object v4, v14, v3

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v5, v3

    .line 723
    aget-object v4, v15, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    aput-wide v19, v11, v3

    .line 721
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v17

    goto :goto_110

    .line 725
    .end local v3    # "i":I
    :cond_12a
    invoke-virtual {v9, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 726
    invoke-virtual {v9, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 728
    const-string v3, "defaultConfig"

    .line 729
    const/4 v4, 0x0

    move-object/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "luxValues":[F
    .local v19, "luxValues":[F
    invoke-interface {v2, v5, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 728
    invoke-virtual {v9, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 730
    const-string/jumbo v3, "powerSaveFactor"

    const/high16 v4, 0x3f800000    # 1.0f

    .line 731
    invoke-interface {v2, v5, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    .line 730
    invoke-virtual {v9, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 732
    const-string/jumbo v3, "userPoint"

    .line 733
    const/4 v4, 0x0

    invoke-interface {v2, v5, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 732
    invoke-virtual {v9, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 735
    const-string v3, "colorSampleDuration"

    .line 736
    move-object v4, v10

    move-object/from16 v16, v11

    .end local v10    # "uniqueDisplayId":Ljava/lang/String;
    .end local v11    # "luxTimestamps":[J
    .local v4, "uniqueDisplayId":Ljava/lang/String;
    .local v16, "luxTimestamps":[J
    const-wide/16 v10, -0x1

    invoke-interface {v2, v5, v3, v10, v11}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v20

    move-wide/from16 v22, v20

    .line 737
    .local v22, "colorSampleDuration":J
    const-string v3, "colorValueBuckets"

    .line 738
    invoke-interface {v2, v5, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 739
    .local v3, "colorValueBucketsString":Ljava/lang/String;
    move-object/from16 v20, v4

    move-wide/from16 v4, v22

    .end local v22    # "colorSampleDuration":J
    .local v4, "colorSampleDuration":J
    .local v20, "uniqueDisplayId":Ljava/lang/String;
    cmp-long v10, v4, v10

    if-eqz v10, :cond_194

    if-eqz v3, :cond_194

    .line 740
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 741
    .local v10, "buckets":[Ljava/lang/String;
    array-length v11, v10

    new-array v11, v11, [J

    .line 742
    .local v11, "bucketValues":[J
    const/16 v21, 0x0

    move-object/from16 v22, v0

    move/from16 v0, v21

    .local v0, "i":I
    :goto_17e
    move-object/from16 v21, v2

    .end local v2    # "parser":Landroid/util/TypedXmlPullParser;
    .local v21, "parser":Landroid/util/TypedXmlPullParser;
    array-length v2, v11

    if-ge v0, v2, :cond_190

    .line 743
    aget-object v2, v10, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    aput-wide v23, v11, v0

    .line 742
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v21

    goto :goto_17e

    .line 745
    .end local v0    # "i":I
    :cond_190
    invoke-virtual {v9, v11, v4, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    goto :goto_198

    .line 739
    .end local v10    # "buckets":[Ljava/lang/String;
    .end local v11    # "bucketValues":[J
    .end local v21    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v2    # "parser":Landroid/util/TypedXmlPullParser;
    :cond_194
    move-object/from16 v22, v0

    move-object/from16 v21, v2

    .line 748
    .end local v2    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v21    # "parser":Landroid/util/TypedXmlPullParser;
    :goto_198
    invoke-virtual {v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    move-result-object v0

    .line 754
    .local v0, "event":Landroid/hardware/display/BrightnessChangeEvent;
    iget v2, v0, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    const/4 v10, -0x1

    if-eq v2, v10, :cond_1b1

    iget-wide v10, v0, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    cmp-long v2, v10, v6

    if-lez v2, :cond_1b1

    iget-object v2, v0, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v2, v2

    if-lez v2, :cond_1b1

    .line 756
    iget-object v2, v1, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 758
    .end local v0    # "event":Landroid/hardware/display/BrightnessChangeEvent;
    .end local v3    # "colorValueBucketsString":Ljava/lang/String;
    .end local v4    # "colorSampleDuration":J
    .end local v9    # "builder":Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .end local v12    # "luxValue":Ljava/lang/String;
    .end local v13    # "luxTimestamp":Ljava/lang/String;
    .end local v14    # "luxValuesStrings":[Ljava/lang/String;
    .end local v15    # "luxTimestampsStrings":[Ljava/lang/String;
    .end local v16    # "luxTimestamps":[J
    .end local v19    # "luxValues":[F
    .end local v20    # "uniqueDisplayId":Ljava/lang/String;
    :cond_1b1
    goto :goto_1ba

    .line 686
    .end local v17    # "type":I
    .end local v18    # "tag":Ljava/lang/String;
    .end local v21    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v2    # "parser":Landroid/util/TypedXmlPullParser;
    .local v3, "tag":Ljava/lang/String;
    .local v4, "type":I
    :cond_1b2
    move-object/from16 v22, v0

    move-object/from16 v21, v2

    move-object/from16 v18, v3

    move/from16 v17, v4

    .line 680
    .end local v2    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "type":I
    .restart local v17    # "type":I
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v21    # "parser":Landroid/util/TypedXmlPullParser;
    :goto_1ba
    move/from16 v4, v17

    move-object/from16 v3, v18

    move-object/from16 v2, v21

    move-object/from16 v0, v22

    const/4 v5, 0x1

    goto/16 :goto_2d

    .line 682
    .end local v17    # "type":I
    .end local v18    # "tag":Ljava/lang/String;
    .end local v21    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v2    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "type":I
    :cond_1c5
    move-object/from16 v22, v0

    move-object/from16 v21, v2

    move/from16 v17, v4

    .line 680
    .end local v2    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v4    # "type":I
    .restart local v17    # "type":I
    .restart local v21    # "parser":Landroid/util/TypedXmlPullParser;
    :goto_1cb
    move/from16 v4, v17

    move-object/from16 v2, v21

    move-object/from16 v0, v22

    const/4 v5, 0x1

    goto/16 :goto_2d

    .end local v17    # "type":I
    .end local v21    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v2    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v4    # "type":I
    :cond_1d4
    move-object/from16 v21, v2

    move/from16 v17, v4

    .line 767
    .end local v2    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "type":I
    .end local v6    # "timeCutOff":J
    .end local v8    # "outerDepth":I
    :cond_1d8
    nop

    .line 768
    return-void

    .line 673
    .restart local v2    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "type":I
    :cond_1da
    move-object/from16 v21, v2

    .end local v2    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v21    # "parser":Landroid/util/TypedXmlPullParser;
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Events not found in brightness tracker file "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/display/BrightnessTracker;
    .end local p1    # "stream":Ljava/io/InputStream;
    throw v0
    :try_end_1f5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_1f5} :catch_1f5
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_1f5} :catch_1f5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_1f5} :catch_1f5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1f5} :catch_1f5

    .line 760
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "type":I
    .end local v21    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local p0    # "this":Lcom/android/server/display/BrightnessTracker;
    .restart local p1    # "stream":Ljava/io/InputStream;
    :catch_1f5
    move-exception v0

    .line 763
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/util/RingBuffer;

    const-class v3, Landroid/hardware/display/BrightnessChangeEvent;

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v2, v1, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 764
    const-string v2, "BrightnessTracker"

    const-string v3, "Failed to parse brightness event"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 766
    new-instance v2, Ljava/io/IOException;

    const-string v3, "failed to parse file"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 4
    .param p1, "brightnessConfiguration"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 218
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 220
    return-void
.end method

.method public setLightSensor(Landroid/hardware/Sensor;)V
    .registers 5
    .param p1, "lightSensor"    # Landroid/hardware/Sensor;

    .line 336
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 338
    return-void
.end method

.method public start(F)V
    .registers 5
    .param p1, "initialBrightness"    # F

    .line 210
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 211
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 212
    return-void
.end method

.method stop()V
    .registers 5

    .line 256
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    .line 258
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    .line 259
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterBrightnessModeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 260
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 261
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->cancelIdleJob(Landroid/content/Context;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_2e
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 265
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_35

    .line 266
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    .line 267
    return-void

    .line 265
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method writeEventsLocked(Ljava/io/OutputStream;)V
    .registers 20
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 584
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v1

    .line 585
    .local v1, "out":Landroid/util/TypedXmlSerializer;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 586
    const-string/jumbo v3, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v1, v3, v2}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 588
    const-string v2, "events"

    invoke-interface {v1, v4, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 589
    iget-object v3, v0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 591
    .local v3, "toWrite":[Landroid/hardware/display/BrightnessChangeEvent;
    iget-object v5, v0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v5}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 595
    iget-object v5, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v5}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    sub-long/2addr v5, v7

    .line 596
    .local v5, "timeCutOff":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_31
    array-length v8, v3

    if-ge v7, v8, :cond_184

    .line 597
    iget-object v8, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v9, v0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    aget-object v10, v3, v7

    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {v8, v9, v10}, Lcom/android/server/display/BrightnessTracker$Injector;->getUserSerialNumber(Landroid/os/UserManager;I)I

    move-result v8

    .line 598
    .local v8, "userSerialNo":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_180

    aget-object v9, v3, v7

    iget-wide v9, v9, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    cmp-long v9, v9, v5

    if-lez v9, :cond_180

    .line 599
    iget-object v9, v0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    aget-object v10, v3, v7

    invoke-virtual {v9, v10}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 600
    const-string v9, "event"

    invoke-interface {v1, v4, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 601
    aget-object v10, v3, v7

    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    const-string/jumbo v11, "nits"

    invoke-interface {v1, v4, v11, v10}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 602
    aget-object v10, v3, v7

    iget-wide v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    const-string/jumbo v12, "timestamp"

    invoke-interface {v1, v4, v12, v10, v11}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 603
    aget-object v10, v3, v7

    iget-object v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    const-string/jumbo v11, "packageName"

    invoke-interface {v1, v4, v11, v10}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 604
    const-string/jumbo v10, "user"

    invoke-interface {v1, v4, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 605
    aget-object v10, v3, v7

    iget-object v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->uniqueDisplayId:Ljava/lang/String;

    .line 606
    .local v10, "uniqueDisplayId":Ljava/lang/String;
    if-nez v10, :cond_83

    .line 607
    const-string v10, ""

    .line 609
    :cond_83
    const-string/jumbo v11, "uniqueDisplayId"

    invoke-interface {v1, v4, v11, v10}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 610
    aget-object v11, v3, v7

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    const-string v12, "batteryLevel"

    invoke-interface {v1, v4, v12, v11}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 611
    aget-object v11, v3, v7

    iget-boolean v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    const-string/jumbo v12, "nightMode"

    invoke-interface {v1, v4, v12, v11}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 612
    aget-object v11, v3, v7

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    const-string v12, "colorTemperature"

    invoke-interface {v1, v4, v12, v11}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 614
    aget-object v11, v3, v7

    iget-boolean v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColors:Z

    const-string/jumbo v12, "reduceBrightColors"

    invoke-interface {v1, v4, v12, v11}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 616
    aget-object v11, v3, v7

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsStrength:I

    const-string/jumbo v12, "reduceBrightColorsStrength"

    invoke-interface {v1, v4, v12, v11}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 618
    aget-object v11, v3, v7

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsOffset:F

    const-string/jumbo v12, "reduceBrightColorsOffset"

    invoke-interface {v1, v4, v12, v11}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 620
    aget-object v11, v3, v7

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    const-string/jumbo v12, "lastNits"

    invoke-interface {v1, v4, v12, v11}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 622
    aget-object v11, v3, v7

    iget-boolean v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    const-string v12, "defaultConfig"

    invoke-interface {v1, v4, v12, v11}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 624
    aget-object v11, v3, v7

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    const-string/jumbo v12, "powerSaveFactor"

    invoke-interface {v1, v4, v12, v11}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 626
    aget-object v11, v3, v7

    iget-boolean v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    const-string/jumbo v12, "userPoint"

    invoke-interface {v1, v4, v12, v11}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 628
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .local v11, "luxValues":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .local v12, "luxTimestamps":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_f5
    aget-object v14, v3, v7

    iget-object v14, v14, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v14, v14

    const/16 v15, 0x2c

    if-ge v13, v14, :cond_123

    .line 631
    if-lez v13, :cond_106

    .line 632
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 635
    :cond_106
    aget-object v14, v3, v7

    iget-object v14, v14, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    aget v14, v14, v13

    invoke-static {v14}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    aget-object v14, v3, v7

    iget-object v14, v14, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    aget-wide v14, v14, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    add-int/lit8 v13, v13, 0x1

    goto :goto_f5

    .line 638
    .end local v13    # "j":I
    :cond_123
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "lux"

    invoke-interface {v1, v4, v14, v13}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 639
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "luxTimestamps"

    invoke-interface {v1, v4, v14, v13}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 640
    aget-object v13, v3, v7

    iget-object v13, v13, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    if-eqz v13, :cond_17d

    aget-object v13, v3, v7

    iget-object v13, v13, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    array-length v13, v13

    if-lez v13, :cond_17d

    .line 642
    aget-object v13, v3, v7

    iget-wide v13, v13, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    const-string v15, "colorSampleDuration"

    invoke-interface {v1, v4, v15, v13, v14}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 644
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    .local v13, "buckets":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_153
    aget-object v15, v3, v7

    iget-object v15, v15, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    array-length v15, v15

    if-ge v14, v15, :cond_174

    .line 646
    if-lez v14, :cond_162

    .line 647
    const/16 v15, 0x2c

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_164

    .line 646
    :cond_162
    const/16 v15, 0x2c

    .line 649
    :goto_164
    aget-object v15, v3, v7

    iget-object v15, v15, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    aget-wide v16, v15, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    add-int/lit8 v14, v14, 0x1

    goto :goto_153

    .line 651
    .end local v14    # "j":I
    :cond_174
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "colorValueBuckets"

    invoke-interface {v1, v4, v15, v14}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 653
    .end local v13    # "buckets":Ljava/lang/StringBuilder;
    :cond_17d
    invoke-interface {v1, v4, v9}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 596
    .end local v8    # "userSerialNo":I
    .end local v10    # "uniqueDisplayId":Ljava/lang/String;
    .end local v11    # "luxValues":Ljava/lang/StringBuilder;
    .end local v12    # "luxTimestamps":Ljava/lang/StringBuilder;
    :cond_180
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_31

    .line 656
    .end local v7    # "i":I
    :cond_184
    invoke-interface {v1, v4, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 657
    invoke-interface {v1}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 658
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 659
    return-void
.end method
