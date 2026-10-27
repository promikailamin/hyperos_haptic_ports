.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Landroid/util/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$SystemServerDumper;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accessibility.AccessibilityManagerService$Lifecycle"

.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final ADB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.adb.AdbService$Lifecycle"

.field private static final AD_SERVICES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.adservices.AdServicesManagerService$Lifecycle"

.field private static final ALARM_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.alarm.AlarmManagerService"

.field private static final APPSEARCH_MODULE_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.appsearch.AppSearchModule$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final APP_COMPAT_OVERRIDES_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.compat.overrides.AppCompatOverridesService$Lifecycle"

.field private static final APP_HIBERNATION_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.apphibernation.AppHibernationService"

.field private static final APP_PREDICTION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appprediction.AppPredictionManagerService"

.field private static final AUTO_FILL_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.autofill.AutofillManagerService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOB_STORE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.blob.BlobStoreManagerService"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final BLUETOOTH_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.bluetooth.BluetoothService"

.field private static final CAR_SERVICE_HELPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.internal.car.CarServiceHelperService"

.field private static final CLOUDSEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cloudsearch.CloudSearchManagerService"

.field private static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field private static final CONNECTIVITY_SERVICE_APEX_PATH:Ljava/lang/String; = "/apex/com.android.tethering/javalib/service-connectivity.jar"

.field private static final CONNECTIVITY_SERVICE_INITIALIZER_CLASS:Ljava/lang/String; = "com.android.server.ConnectivityServiceInitializer"

.field private static final CONTENT_CAPTURE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.contentcapture.ContentCaptureManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final CONTENT_SUGGESTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x103040c

.field private static final DEVICE_IDLE_CONTROLLER_CLASS:Ljava/lang/String; = "com.android.server.DeviceIdleController"

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final GAME_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.app.GameManagerService$Lifecycle"

.field private static final GNSS_TIME_UPDATE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timedetector.GnssTimeUpdateService$Lifecycle"

.field private static final HEALTH_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.healthservices.HealthService"

.field private static final HEAP_DUMP_PATH:Ljava/io/File;

.field private static final IOT_SERVICE_CLASS:Ljava/lang/String; = "com.android.things.server.IoTSystemService"

.field private static final IP_CONNECTIVITY_METRICS_CLASS:Ljava/lang/String; = "com.android.server.connectivity.IpConnectivityMetrics"

.field private static final ISOLATED_COMPILATION_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.compos.IsolatedCompilationService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCATION_TIME_ZONE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezonedetector.location.LocationTimeZoneManagerService$Lifecycle"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.locksettings.LockSettingsService$Lifecycle"

.field private static final LOWPAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.lowpan.LowpanService"

.field private static final MAX_HEAP_DUMPS:I = 0x2

.field private static final MEDIA_COMMUNICATION_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.media.MediaCommunicationService"

.field private static final MEDIA_RESOURCE_MONITOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.media.MediaResourceMonitorService"

.field private static final MEDIA_SESSION_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.media.MediaSessionService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MUSIC_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.musicrecognition.MusicRecognitionManagerService"

.field private static final NETWORK_STATS_SERVICE_INITIALIZER_CLASS:Ljava/lang/String; = "com.android.server.NetworkStatsServiceInitializer"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final REBOOT_READINESS_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

.field private static final RESOURCE_ECONOMY_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.tare.InternalResourceService"

.field private static final ROLE_SERVICE_CLASS:Ljava/lang/String; = "com.android.role.RoleService"

.field private static final ROLLBACK_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.rollback.RollbackManagerService"

.field private static final SAFETY_CENTER_SERVICE_CLASS:Ljava/lang/String; = "com.android.safetycenter.SafetyCenterService"

.field private static final SCHEDULING_APEX_PATH:Ljava/lang/String; = "/apex/com.android.scheduling/javalib/service-scheduling.jar"

.field private static final SDK_SANDBOX_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SEARCH_UI_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.searchui.SearchUiManagerService"

.field private static final SLICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.slice.SliceManagerService$Lifecycle"

.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static final SMARTSPACE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.smartspace.SmartspaceManagerService"

.field private static final SPEECH_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.speech.SpeechRecognitionManagerService"

.field private static final START_BLOB_STORE_SERVICE:Ljava/lang/String; = "startBlobStoreManagerService"

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field private static final STATS_BOOTSTRAP_ATOM_SERVICE_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.stats.bootstrap.StatsBootstrapAtomService$Lifecycle"

.field private static final STATS_COMPANION_APEX_PATH:Ljava/lang/String; = "/apex/com.android.os.statsd/javalib/service-statsd.jar"

.field private static final STATS_COMPANION_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.stats.StatsCompanion$Lifecycle"

.field private static final STATS_PULL_ATOM_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.stats.pull.StatsPullAtomService"

.field private static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService$Lifecycle"

.field private static final STORAGE_STATS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usage.StorageStatsService$Lifecycle"

.field private static final SYSPROP_FDTRACK_ABORT_THRESHOLD:Ljava/lang/String; = "persist.sys.debug.fdtrack_abort_threshold"

.field private static final SYSPROP_FDTRACK_ENABLE_THRESHOLD:Ljava/lang/String; = "persist.sys.debug.fdtrack_enable_threshold"

.field private static final SYSPROP_FDTRACK_INTERVAL:Ljava/lang/String; = "persist.sys.debug.fdtrack_interval"

.field private static final SYSPROP_START_COUNT:Ljava/lang/String; = "sys.system_server.start_count"

.field private static final SYSPROP_START_ELAPSED:Ljava/lang/String; = "sys.system_server.start_elapsed"

.field private static final SYSPROP_START_UPTIME:Ljava/lang/String; = "sys.system_server.start_uptime"

.field private static final SYSTEM_CAPTIONS_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.systemcaptions.SystemCaptionsManagerService"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final TETHERING_CONNECTOR_CLASS:Ljava/lang/String; = "android.net.ITetheringConnector"

.field private static final TEXT_TO_SPEECH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.texttospeech.TextToSpeechManagerService"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIME_DETECTOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timedetector.TimeDetectorService$Lifecycle"

.field private static final TIME_ZONE_DETECTOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezonedetector.TimeZoneDetectorService$Lifecycle"

.field private static final TIME_ZONE_RULES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezone.RulesManagerService$Lifecycle"

.field private static final TRANSLATION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.translation.TranslationManagerService"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final UWB_APEX_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.uwb/javalib/service-uwb.jar"

.field private static final UWB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.uwb.UwbService"

.field private static final VIRTUAL_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.virtual.VirtualDeviceManagerService"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_EFFECTS_GENERATION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpapereffectsgeneration.WallpaperEffectsGenerationManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DISPLAYOFFLOAD_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.displayoffload.DisplayOffloadService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.display.WearDisplayService"

.field private static final WEAR_GLOBAL_ACTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.globalactions.GlobalActionsService"

.field private static final WEAR_LEFTY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.lefty.WearLeftyService"

.field private static final WEAR_POWER_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.power.WearPowerService"

.field private static final WEAR_SIDEKICK_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.sidekick.SidekickService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WIFI_APEX_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.wifi/javalib/service-wifi.jar"

.field private static final WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.aware.WifiAwareService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_RTT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.rtt.RttService"

.field private static final WIFI_SCANNING_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.scanner.WifiScanningService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final sMaxBinderThreads:I = 0x1f

.field private static sPendingWtfs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/app/ApplicationErrorReport$CrashInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mIncrementalServiceHandle:J

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private final mRuntimeStartElapsedTime:J

.field private final mRuntimeStartUptime:J

.field private final mStartCount:I

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field private mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private mZygotePreload:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8zxOYx-QEMffbYJtoGp6Ub2KG-8(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/SystemServer;->handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 546
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/heapdump/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 491
    new-instance v0, Lcom/android/server/SystemServer$SystemServerDumper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/SystemServer$SystemServerDumper-IA;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 716
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 721
    const-string/jumbo v0, "sys.system_server.start_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 722
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 723
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 724
    move-wide v1, v5

    move-wide v3, v7

    invoke-static/range {v1 .. v8}, Landroid/os/Process;->setStartTimes(JJJJ)V

    .line 731
    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 732
    return-void
.end method

.method private createSystemContext()V
    .registers 4

    .line 1107
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1108
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1109
    const v2, 0x103040c

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 1111
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 1112
    .local v1, "systemUiContext":Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 1113
    return-void
.end method

.method private deviceHasConfigString(Landroid/content/Context;I)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 3286
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3287
    .local v0, "serviceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static dumpHprof()V
    .registers 10

    .line 571
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 574
    .local v0, "existingTombstones":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/io/File;>;"
    invoke-static {}, Lcom/android/server/SystemServer;->getHeapDumpDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 575
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    if-nez v1, :cond_12

    new-array v1, v2, [Ljava/io/File;

    .line 576
    :cond_12
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 578
    .local v3, "existingBacktraces":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/io/File;>;"
    array-length v4, v1

    :goto_18
    if-ge v2, v4, :cond_46

    aget-object v5, v1, v2

    .line 579
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_23

    .line 580
    goto :goto_43

    .line 583
    :cond_23
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fdtrack_u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 584
    invoke-virtual {v3, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 585
    goto :goto_43

    .line 588
    :cond_33
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fdtrack-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 589
    goto :goto_43

    .line 591
    :cond_40
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 578
    .end local v5    # "file":Ljava/io/File;
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 593
    :cond_46
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/4 v4, 0x2

    const-string v5, "System"

    const/4 v6, 0x1

    if-lt v2, v4, :cond_86

    .line 594
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_51
    if-ge v2, v6, :cond_59

    .line 596
    invoke-virtual {v0}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    .line 594
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 598
    .end local v2    # "i":I
    :cond_59
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 599
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_85

    .line 600
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to clean up hprof "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    .end local v7    # "file":Ljava/io/File;
    :cond_85
    goto :goto_5d

    .line 605
    :cond_86
    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v2

    if-lt v2, v4, :cond_c2

    .line 606
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8d
    if-ge v2, v6, :cond_95

    .line 607
    invoke-virtual {v3}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    .line 606
    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    .line 609
    .end local v2    # "i":I
    :cond_95
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_99
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 610
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_c1

    .line 611
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to clean up fdtrack "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .end local v4    # "file":Ljava/io/File;
    :cond_c1
    goto :goto_99

    .line 621
    :cond_c2
    :try_start_c2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "date":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/SystemServer;->getHeapDumpDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/fdtrack-p"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 623
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".hprof"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 625
    .local v4, "filename":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_10b} :catch_10c

    .line 628
    .end local v2    # "date":Ljava/lang/String;
    .end local v4    # "filename":Ljava/lang/String;
    goto :goto_112

    .line 626
    :catch_10c
    move-exception v2

    .line 627
    .local v2, "ex":Ljava/io/IOException;
    const-string v4, "Failed to dump fdtrack hprof"

    invoke-static {v5, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_112
    return-void
.end method

.method private static native fdtrackAbort()V
.end method

.method private static getHeapDumpDir()Ljava/io/File;
    .registers 4

    .line 551
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miuilog/stability/resleak/fdtrack"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    .local v0, "fdtrackDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_16

    .line 553
    sget-object v1, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    return-object v1

    .line 555
    :cond_16
    const/16 v1, 0x1ed

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    move-result v1

    if-eqz v1, :cond_29

    .line 556
    sget-object v1, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    return-object v1

    .line 558
    :cond_29
    return-object v0
.end method

.method private static getMaxFd()I
    .registers 5

    .line 524
    const/4 v0, 0x0

    .line 526
    .local v0, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    const-string v1, "/dev/null"

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    sget v3, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    move-object v0, v1

    .line 527
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_12} :catch_22
    .catchall {:try_start_1 .. :try_end_12} :catchall_20

    .line 531
    if-eqz v0, :cond_1f

    .line 533
    :try_start_14
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_17
    .catch Landroid/system/ErrnoException; {:try_start_14 .. :try_end_17} :catch_18

    .line 537
    goto :goto_1f

    .line 534
    :catch_18
    move-exception v1

    .line 536
    .local v1, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 527
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_1f
    :goto_1f
    return v1

    .line 531
    :catchall_20
    move-exception v1

    goto :goto_4d

    .line 528
    :catch_22
    move-exception v1

    .line 529
    .restart local v1    # "ex":Landroid/system/ErrnoException;
    :try_start_23
    const-string v2, "System"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get maximum fd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_20

    .line 531
    nop

    .end local v1    # "ex":Landroid/system/ErrnoException;
    if-eqz v0, :cond_49

    .line 533
    :try_start_3e
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_41
    .catch Landroid/system/ErrnoException; {:try_start_3e .. :try_end_41} :catch_42

    .line 537
    goto :goto_49

    .line 534
    :catch_42
    move-exception v1

    .line 536
    .restart local v1    # "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 541
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_49
    :goto_49
    const v1, 0x7fffffff

    return v1

    .line 531
    :goto_4d
    if-eqz v0, :cond_5a

    .line 533
    :try_start_4f
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_52
    .catch Landroid/system/ErrnoException; {:try_start_4f .. :try_end_52} :catch_53

    .line 537
    goto :goto_5a

    .line 534
    :catch_53
    move-exception v1

    .line 536
    .restart local v1    # "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 539
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_5a
    :goto_5a
    throw v1
.end method

.method private static handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .registers 13
    .param p0, "app"    # Landroid/os/IBinder;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "system"    # Z
    .param p3, "crashInfo"    # Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    .param p4, "immediateCallerPid"    # I

    .line 3391
    const-string/jumbo v0, "system_server"

    .line 3392
    .local v0, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 3394
    .local v7, "myPid":I
    const/16 v1, 0x3e8

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string/jumbo v3, "system_server"

    iget-object v6, p3, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->exceptionMessage:Ljava/lang/String;

    const/4 v4, -0x1

    move v2, v7

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/EventLogTags;->writeAmWtf(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 3397
    const-string/jumbo v4, "system_server"

    const/16 v1, 0x50

    const/16 v2, 0x3e8

    const/4 v6, 0x3

    move-object v3, p1

    move v5, v7

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    .line 3400
    const-class v1, Lcom/android/server/SystemServer;

    monitor-enter v1

    .line 3401
    :try_start_28
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    if-nez v2, :cond_33

    .line 3402
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sput-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 3404
    :cond_33
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3405
    monitor-exit v1

    .line 3406
    const/4 v1, 0x0

    return v1

    .line 3405
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_28 .. :try_end_42} :catchall_40

    throw v2
.end method

.method private static native initZygoteChildHeapProfiling()V
.end method

.method private isFirstBootOrUpgrade()Z
    .registers 2

    .line 1044
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private static isValidTimeZoneId(Ljava/lang/String;)Z
    .registers 2
    .param p0, "timezoneProperty"    # Ljava/lang/String;

    .line 1038
    if-eqz p0, :cond_14

    .line 1039
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1040
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->hasTimeZone(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1038
    :goto_15
    return v0
.end method

.method static synthetic lambda$spawnFdLeakCheckThread$0(III)V
    .registers 14
    .param p0, "enableThreshold"    # I
    .param p1, "abortThreshold"    # I
    .param p2, "checkInterval"    # I

    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, "enabled":Z
    const-wide/16 v1, 0x0

    .line 644
    .local v1, "nextWrite":J
    :goto_3
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    .line 645
    .local v3, "maxFd":I
    if-le v3, p0, :cond_13

    .line 647
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 648
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 649
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    .line 652
    :cond_13
    const/4 v4, 0x2

    const-string v5, "System"

    const/16 v6, 0x16c

    if-le v3, p0, :cond_2b

    if-nez v0, :cond_2b

    .line 653
    const-string v7, "fdtrack enable threshold reached, enabling"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-static {v6, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 658
    const-string v4, "fdtrack"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 659
    const/4 v0, 0x1

    goto :goto_52

    .line 660
    :cond_2b
    if-le v3, p1, :cond_3d

    .line 661
    const-string v4, "fdtrack abort threshold reached, dumping and aborting"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v4, 0x3

    invoke-static {v6, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 666
    invoke-static {}, Lcom/android/server/SystemServer;->dumpHprof()V

    .line 667
    invoke-static {}, Lcom/android/server/SystemServer;->fdtrackAbort()V

    goto :goto_52

    .line 670
    :cond_3d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 671
    .local v7, "now":J
    cmp-long v5, v7, v1

    if-lez v5, :cond_52

    .line 672
    const-wide/32 v9, 0x36ee80

    add-long/2addr v9, v7

    .line 673
    .end local v1    # "nextWrite":J
    .local v9, "nextWrite":J
    nop

    .line 674
    if-eqz v0, :cond_4d

    goto :goto_4e

    .line 675
    :cond_4d
    const/4 v4, 0x1

    .line 673
    :goto_4e
    invoke-static {v6, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    move-wide v1, v9

    .line 681
    .end local v7    # "now":J
    .end local v9    # "nextWrite":J
    .restart local v1    # "nextWrite":J
    :cond_52
    :goto_52
    mul-int/lit16 v4, p2, 0x3e8

    int-to-long v4, v4

    :try_start_55
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_58} :catch_5a

    .line 684
    nop

    .line 685
    .end local v3    # "maxFd":I
    goto :goto_3

    .line 682
    .restart local v3    # "maxFd":I
    :catch_5a
    move-exception v4

    .line 683
    .local v4, "ex":Ljava/lang/InterruptedException;
    goto :goto_3
.end method

.method static synthetic lambda$startOtherServices$1()V
    .registers 5

    .line 1559
    const-string v0, "SecondaryZygotePreload"

    const-string v1, "SystemServer"

    :try_start_4
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v2

    .line 1561
    .local v2, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1562
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 1563
    .local v0, "abis32":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_23

    sget-object v3, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 1564
    const-string v3, "Unable to preload default resources for secondary"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :cond_23
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_27

    .line 1569
    .end local v0    # "abis32":[Ljava/lang/String;
    .end local v2    # "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    goto :goto_2d

    .line 1567
    :catch_27
    move-exception v0

    .line 1568
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1570
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2d
    return-void
.end method

.method static synthetic lambda$startOtherServices$2()V
    .registers 2

    .line 1708
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 1709
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1710
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 1711
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1712
    return-void
.end method

.method static synthetic lambda$startOtherServices$4(Landroid/os/IBinder;)V
    .registers 4
    .param p0, "service"    # Landroid/os/IBinder;

    .line 3147
    const-string/jumbo v0, "tethering"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, p0, v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 3150
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 704
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    .line 705
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    sget-wide v1, Lcom/android/internal/os/ZygoteInit;->BOOT_START_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerStub;->markSystemRun(J)V

    .line 707
    invoke-static {}, Lcom/android/server/ProcHunterStub;->getInstance()Lcom/android/server/ProcHunterStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ProcHunterStub;->start()V

    .line 709
    invoke-static {}, Lcom/android/server/BootKeeperStub;->getInstance()Lcom/android/server/BootKeeperStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/BootKeeperStub;->beforeBoot()V

    .line 711
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 712
    return-void
.end method

.method private performPendingShutdown()V
    .registers 10

    .line 1053
    const-string v0, "SystemServer"

    const-string/jumbo v1, "sys.shutdown.requested"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, "shutdownAction":Ljava/lang/String;
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8a

    .line 1056
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1f

    move v3, v5

    goto :goto_20

    :cond_1f
    move v3, v2

    .line 1059
    .local v3, "reboot":Z
    :goto_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_2f

    .line 1060
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "reason":Ljava/lang/String;
    goto :goto_30

    .line 1062
    .end local v4    # "reason":Ljava/lang/String;
    :cond_2f
    const/4 v4, 0x0

    .line 1070
    .restart local v4    # "reason":Ljava/lang/String;
    :goto_30
    if-eqz v4, :cond_73

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 1071
    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v6, "packageFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 1073
    const/4 v7, 0x0

    .line 1075
    .local v7, "filename":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_4a
    invoke-static {v6, v2, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_50

    move-object v7, v2

    .line 1078
    goto :goto_56

    .line 1076
    :catch_50
    move-exception v2

    .line 1077
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "Error reading uncrypt package file"

    invoke-static {v0, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    .end local v2    # "e":Ljava/io/IOException;
    :goto_56
    if-eqz v7, :cond_73

    const-string v2, "/data"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1081
    new-instance v2, Ljava/io/File;

    const-string v8, "/cache/recovery/block.map"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_73

    .line 1082
    const-string v2, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return-void

    .line 1089
    .end local v6    # "packageFile":Ljava/io/File;
    .end local v7    # "filename":Ljava/lang/String;
    :cond_73
    new-instance v0, Lcom/android/server/SystemServer$1;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 1099
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    .line 1100
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1101
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1104
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "reboot":Z
    .end local v4    # "reason":Ljava/lang/String;
    :cond_8a
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 1048
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1050
    return-void
.end method

.method private run()V
    .registers 17

    .line 824
    move-object/from16 v1, p0

    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v2, "persist.sys.timezone"

    const-string v3, ""

    new-instance v4, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 826
    .local v4, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_f
    const-string v5, "InitBeforeStartServices"

    invoke-virtual {v4, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 829
    const-string/jumbo v5, "sys.system_server.start_count"

    iget v6, v1, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string/jumbo v5, "sys.system_server.start_elapsed"

    iget-wide v6, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string/jumbo v5, "sys.system_server.start_uptime"

    iget-wide v6, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const/16 v5, 0xbc3

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v1, Lcom/android/server/SystemServer;->mStartCount:I

    .line 834
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-wide v9, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const/4 v7, 0x2

    iget-wide v10, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v7

    .line 833
    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 839
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 840
    .local v5, "timezoneProperty":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/SystemServer;->isValidTimeZoneId(Ljava/lang/String;)Z

    move-result v6
    :try_end_63
    .catchall {:try_start_f .. :try_end_63} :catchall_242

    const-string v7, "SystemServer"

    if-nez v6, :cond_89

    .line 841
    :try_start_67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "persist.sys.timezone is not valid ("

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "); setting to GMT."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const-string v6, "GMT"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :cond_89
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b0

    .line 855
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, "languageTag":Ljava/lang/String;
    const-string/jumbo v6, "persist.sys.locale"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string/jumbo v0, "persist.sys.country"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string/jumbo v0, "persist.sys.localevar"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    .end local v2    # "languageTag":Ljava/lang/String;
    :cond_b0
    invoke-static {v9}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 866
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    .line 869
    const-string v0, "FULL"

    sput-object v0, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 872
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 875
    const-string v0, "Entered the Android system server!"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 877
    .local v6, "uptimeMillis":J
    const/16 v0, 0xbc2

    invoke-static {v0, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 878
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v3, 0xf0

    if-nez v0, :cond_d7

    .line 879
    const/16 v0, 0x13

    invoke-static {v3, v0, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 892
    :cond_d7
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v10

    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 899
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 903
    invoke-static {v9}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 907
    invoke-static {v9}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 910
    invoke-static {v9}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 913
    invoke-static {v9}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 916
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 919
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 921
    invoke-static {v8}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 922
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 923
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v10, 0x64

    const-wide/16 v12, 0xc8

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 926
    sput-boolean v9, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 929
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 932
    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    .line 935
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_126

    .line 936
    invoke-static {}, Lcom/android/server/SystemServer;->spawnFdLeakCheckThread()V

    .line 941
    :cond_126
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 944
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 947
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 950
    const-string/jumbo v0, "system_server_dumper"

    iget-object v9, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 951
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v0, v1}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 954
    new-instance v9, Lcom/android/server/SystemServiceManager;

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 955
    iget-boolean v10, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v11, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v13, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 957
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v9}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 959
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v9}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 961
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->start()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    move-object v9, v0

    .line 962
    .local v9, "tp":Lcom/android/server/SystemServerInitThreadPool;
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v0, v9}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 968
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V

    .line 972
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_16b
    .catchall {:try_start_67 .. :try_end_16b} :catchall_242

    const-string v10, "System"

    if-eqz v0, :cond_1b6

    .line 974
    :try_start_16f
    const-string/jumbo v0, "persist.sys.dalvik.jvmtiagent"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 975
    .local v11, "jvmtiAgent":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b6

    .line 976
    const/16 v0, 0x3d

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v12, v0

    .line 977
    .local v12, "equalIndex":I
    invoke-virtual {v11, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 978
    .local v13, "libraryPath":Ljava/lang/String;
    add-int/lit8 v0, v12, 0x1

    .line 979
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_193
    .catchall {:try_start_16f .. :try_end_193} :catchall_242

    move-object v14, v0

    .line 982
    .local v14, "parameterList":Ljava/lang/String;
    :try_start_194
    invoke-static {v13, v14, v2}, Landroid/os/Debug;->attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_197} :catch_198
    .catchall {:try_start_194 .. :try_end_197} :catchall_242

    .line 986
    goto :goto_1b6

    .line 983
    :catch_198
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 984
    .local v0, "e":Ljava/lang/Exception;
    :try_start_19b
    const-string v15, "*************************************************"

    invoke-static {v10, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "********** Failed to load jvmti plugin: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b6
    .catchall {:try_start_19b .. :try_end_1b6} :catchall_242

    .line 990
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "timezoneProperty":Ljava/lang/String;
    .end local v6    # "uptimeMillis":J
    .end local v9    # "tp":Lcom/android/server/SystemServerInitThreadPool;
    .end local v11    # "jvmtiAgent":Ljava/lang/String;
    .end local v12    # "equalIndex":I
    .end local v13    # "libraryPath":Ljava/lang/String;
    .end local v14    # "parameterList":Ljava/lang/String;
    :cond_1b6
    :goto_1b6
    invoke-virtual {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 991
    nop

    .line 994
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V

    .line 997
    const-string v0, "debug.debug_system"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1cd

    .line 998
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 1004
    :cond_1cd
    :try_start_1cd
    const-string v0, "StartServices"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1005
    invoke-direct {v1, v4}, Lcom/android/server/SystemServer;->startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1006
    invoke-direct {v1, v4}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1007
    invoke-direct {v1, v4}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1008
    invoke-direct {v1, v4}, Lcom/android/server/SystemServer;->startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    :try_end_1de
    .catchall {:try_start_1cd .. :try_end_1de} :catchall_230

    .line 1014
    invoke-virtual {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1015
    nop

    .line 1017
    invoke-static {v2}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 1019
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_21c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_21c

    .line 1020
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1021
    .local v2, "uptimeMillis":J
    const/16 v0, 0x14

    const/16 v5, 0xf0

    invoke-static {v5, v0, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1024
    const-wide/32 v5, 0xea60

    .line 1025
    .local v5, "maxUptimeMillis":J
    const-wide/32 v7, 0xea60

    cmp-long v0, v2, v7

    if-lez v0, :cond_21c

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "SystemServerTiming"

    invoke-static {v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    .end local v2    # "uptimeMillis":J
    .end local v5    # "maxUptimeMillis":J
    :cond_21c
    invoke-static {}, Lcom/android/server/BootKeeperStub;->getInstance()Lcom/android/server/BootKeeperStub;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/android/server/BootKeeperStub;->afterBoot(Landroid/content/Context;)V

    .line 1033
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1034
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1009
    :catchall_230
    move-exception v0

    .line 1010
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_231
    const-string v2, "******************************************"

    invoke-static {v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const-string v2, "************ Failure starting system services"

    invoke-static {v10, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1012
    nop

    .end local v4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p0    # "this":Lcom/android/server/SystemServer;
    throw v0
    :try_end_23d
    .catchall {:try_start_231 .. :try_end_23d} :catchall_23d

    .line 1014
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p0    # "this":Lcom/android/server/SystemServer;
    :catchall_23d
    move-exception v0

    invoke-virtual {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1015
    throw v0

    .line 990
    :catchall_242
    move-exception v0

    invoke-virtual {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 991
    throw v0
.end method

.method private static native setIncrementalServiceSystemReady(J)V
.end method

.method private static spawnFdLeakCheckThread()V
    .registers 5

    .line 635
    const-string/jumbo v0, "persist.sys.debug.fdtrack_enable_threshold"

    const/16 v1, 0x400

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 636
    .local v0, "enableThreshold":I
    const-string/jumbo v1, "persist.sys.debug.fdtrack_abort_threshold"

    const/16 v2, 0x800

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 637
    .local v1, "abortThreshold":I
    const-string/jumbo v2, "persist.sys.debug.fdtrack_interval"

    const/16 v3, 0x78

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 639
    .local v2, "checkInterval":I
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;-><init>(III)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 686
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 687
    return-void
.end method

.method private startAmbientContextService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3370
    const-string v0, "StartAmbientContextService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3371
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3372
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3373
    return-void
.end method

.method private startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 9
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3263
    const-string/jumbo v0, "startApexServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3266
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getApexSystemServices()Ljava/util/List;

    move-result-object v0

    .line 3267
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ApexSystemServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexSystemServiceInfo;

    .line 3268
    .local v2, "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    invoke-virtual {v2}, Lcom/android/server/pm/ApexSystemServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3269
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/pm/ApexSystemServiceInfo;->getJarPath()Ljava/lang/String;

    move-result-object v4

    .line 3270
    .local v4, "jarPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "starting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3271
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 3272
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto :goto_4e

    .line 3274
    :cond_49
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3276
    :goto_4e
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3277
    .end local v2    # "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "jarPath":Ljava/lang/String;
    goto :goto_12

    .line 3280
    :cond_52
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1}, Lcom/android/server/SystemServiceManager;->sealStartedServices()V

    .line 3282
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3283
    return-void
.end method

.method private startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3346
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3347
    const-string v0, "SystemServer"

    const-string v1, "AttentionService is not configured on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    return-void

    .line 3351
    :cond_e
    const-string v0, "StartAttentionManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3352
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3353
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3354
    return-void
.end method

.method private startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 19
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1122
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "packagemanagermain"

    const-string/jumbo v4, "moveab"

    const-string/jumbo v0, "startBootstrapServices"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1126
    const-string v0, "StartWatchdog"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1127
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    .line 1128
    .local v5, "watchdog":Lcom/android/server/Watchdog;
    invoke-virtual {v5}, Lcom/android/server/Watchdog;->start()V

    .line 1129
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v0, v5}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1130
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1132
    const-string v0, "SystemServer"

    const-string v6, "Reading configuration..."

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const-string v6, "ReadingSystemConfig"

    .line 1134
    .local v6, "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    const-string v7, "ReadingSystemConfig"

    invoke-virtual {v2, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1135
    new-instance v8, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v8, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1136
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1140
    const-string v7, "PlatformCompat"

    invoke-virtual {v2, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1141
    new-instance v7, Lcom/android/server/compat/PlatformCompat;

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/server/compat/PlatformCompat;-><init>(Landroid/content/Context;)V

    .line 1142
    .local v7, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    const-string/jumbo v8, "platform_compat"

    invoke-static {v8, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1143
    new-instance v8, Lcom/android/server/compat/PlatformCompatNative;

    invoke-direct {v8, v7}, Lcom/android/server/compat/PlatformCompatNative;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    const-string/jumbo v9, "platform_compat_native"

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1145
    const/4 v8, 0x0

    new-array v9, v8, [J

    invoke-static {v9}, Landroid/app/AppCompatCallbacks;->install([J)V

    .line 1146
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1151
    const-string v9, "StartFileIntegrityService"

    invoke-virtual {v2, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1152
    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1153
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1158
    const-string v9, "StartInstaller"

    invoke-virtual {v2, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1159
    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/pm/Installer;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/Installer;

    .line 1160
    .local v9, "installer":Lcom/android/server/pm/Installer;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1164
    const-string v10, "DeviceIdentifiersPolicyService"

    invoke-virtual {v2, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1165
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1166
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1169
    const-string v10, "UriGrantsManagerService"

    invoke-virtual {v2, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1170
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1171
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1173
    const-string v10, "StartPowerStatsService"

    invoke-virtual {v2, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1175
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1176
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1178
    const-string v10, "StartIStatsService"

    invoke-virtual {v2, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1179
    invoke-static {}, Lcom/android/server/SystemServer;->startIStatsService()V

    .line 1180
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1184
    const-string v10, "MemtrackProxyService"

    invoke-virtual {v2, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1185
    invoke-static {}, Lcom/android/server/SystemServer;->startMemtrackProxyService()V

    .line 1186
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1189
    const-string v10, "StartActivityManager"

    invoke-virtual {v2, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1191
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 1192
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v10

    .line 1195
    .local v10, "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/server/SystemServerStub;->addMiuiPeriodicCleanerService(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 1197
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v11, v10}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1199
    iget-object v12, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 1200
    iget-object v11, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11, v9}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 1201
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/SystemServer;->mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1202
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1205
    const-string v11, "StartDataLoaderManagerService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1206
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/pm/DataLoaderManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/DataLoaderManagerService;

    iput-object v11, v1, Lcom/android/server/SystemServer;->mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

    .line 1208
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1211
    const-string v11, "StartIncrementalService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1212
    invoke-static {}, Lcom/android/server/SystemServer;->startIncrementalService()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 1213
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1219
    const-string v11, "StartPowerManager"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1220
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService;

    iput-object v11, v1, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 1221
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1223
    const-string v11, "StartThermalManager"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1224
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1225
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1227
    const-string v11, "StartHintManager"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1228
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1229
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1233
    const-string v11, "InitPowerManagement"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1234
    iget-object v11, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 1235
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1238
    const-string v11, "StartRecoverySystemService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1239
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1240
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1245
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/RescueParty;->registerHealthObserver(Landroid/content/Context;)V

    .line 1246
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/PackageWatchdog;->noteBoot()V

    .line 1249
    const-string v11, "StartLightsService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1252
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/SystemServerStub;->createLightsServices()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1253
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1255
    const-string v11, "StartDisplayOffloadService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1257
    const-string v11, "config.enable_display_offload"

    invoke-static {v11, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_1a3

    .line 1258
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.google.android.clockwork.displayoffload.DisplayOffloadService"

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1260
    :cond_1a3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1262
    const-string v11, "StartSidekickService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1264
    const-string v11, "config.enable_sidekick_graphics"

    invoke-static {v11, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_1ba

    .line 1265
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.google.android.clockwork.sidekick.SidekickService"

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1267
    :cond_1ba
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1271
    const-string v11, "StartDisplayManager"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1272
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v11

    check-cast v11, Lcom/android/server/display/DisplayManagerService;

    iput-object v11, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 1273
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1276
    const-string v11, "WaitForDisplay"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1277
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v12, 0x64

    invoke-virtual {v11, v2, v12}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1278
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1281
    invoke-static {}, Landroid/sysprop/VoldProperties;->decrypt()Ljava/util/Optional;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1282
    .local v11, "cryptState":Ljava/lang/String;
    const-string/jumbo v12, "trigger_restart_min_framework"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_1fe

    .line 1283
    const-string v12, "Detected encryption in progress - only parsing core apps"

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iput-boolean v13, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_20d

    .line 1285
    :cond_1fe
    const-string v12, "1"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20d

    .line 1286
    const-string v12, "Device encrypted - only parsing core apps"

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    iput-boolean v13, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 1291
    :cond_20d
    :goto_20d
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v12, 0xf0

    if-nez v0, :cond_21c

    .line 1292
    const/16 v0, 0xe

    .line 1295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 1292
    invoke-static {v12, v0, v14, v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1298
    :cond_21c
    const-string v0, "StartDomainVerificationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1299
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v14, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1300
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v15

    invoke-direct {v0, v14, v15, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;-><init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V

    move-object v14, v0

    .line 1301
    .local v14, "domainVerificationService":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1302
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1308
    .local v12, "pmsStartTime":J
    const-string v0, "StartPackageManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1310
    :try_start_23e
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1312
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1314
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v15, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v15, :cond_254

    const/4 v15, 0x1

    goto :goto_255

    :cond_254
    move v15, v8

    :goto_255
    iget-boolean v8, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v0, v9, v14, v15, v8}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;ZZ)Landroid/util/Pair;

    move-result-object v0

    .line 1317
    .local v0, "pmsPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/IPackageManager;>;"
    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/pm/PackageManagerService;

    iput-object v8, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 1318
    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/content/pm/IPackageManager;
    :try_end_265
    .catchall {:try_start_23e .. :try_end_265} :catchall_3ba

    .line 1320
    .end local v0    # "pmsPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/IPackageManager;>;"
    .local v8, "iPackageManager":Landroid/content/pm/IPackageManager;
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1322
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/ScoutStub;->resumeScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1324
    nop

    .line 1327
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    move-object v15, v10

    move-object/from16 v16, v11

    .end local v10    # "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local v11    # "cryptState":Ljava/lang/String;
    .local v15, "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    .local v16, "cryptState":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v12, v13, v10, v11}, Lcom/android/server/SystemServerStub;->markPmsScan(JJ)V

    .line 1332
    invoke-static {v8}, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;->configureSystemServerDexReporter(Landroid/content/pm/IPackageManager;)V

    .line 1334
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 1335
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1336
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1337
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_2ad

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_2ad

    .line 1338
    const/16 v0, 0xf

    .line 1341
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1338
    const/16 v3, 0xf0

    invoke-static {v3, v0, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1346
    :cond_2ad
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_301

    .line 1347
    const-string v0, "config.disable_otadexopt"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 1349
    .local v10, "disableOtaDexopt":Z
    if-nez v10, :cond_301

    .line 1350
    const-string v0, "StartOtaDexOptService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1352
    :try_start_2bf
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1354
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1356
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v3}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_2d4
    .catchall {:try_start_2bf .. :try_end_2d4} :catchall_2d5

    goto :goto_2dc

    .line 1357
    :catchall_2d5
    move-exception v0

    .line 1358
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2d6
    const-string/jumbo v3, "starting OtaDexOptService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2dc
    .catchall {:try_start_2d6 .. :try_end_2dc} :catchall_2ee

    .line 1360
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2dc
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1362
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/ScoutStub;->resumeScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1364
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1365
    goto :goto_301

    .line 1360
    :catchall_2ee
    move-exception v0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1362
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/ScoutStub;->resumeScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1364
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1365
    throw v0

    .line 1369
    .end local v10    # "disableOtaDexopt":Z
    :cond_301
    :goto_301
    const-string v0, "StartUserManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1370
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1371
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1374
    const-string v0, "InitAttributerCache"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1375
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    .line 1376
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1379
    const-string v0, "SetSystemProcess"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1380
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 1381
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1384
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    .line 1388
    const-string v0, "InitWatchdog"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1389
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v0, v3}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 1390
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1394
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 1397
    const-string v0, "StartOverlayManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1398
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v3, Lcom/android/server/om/OverlayManagerService;

    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1399
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1402
    const-string v0, "StartResourcesManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1403
    new-instance v0, Lcom/android/server/resources/ResourcesManagerService;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/server/resources/ResourcesManagerService;-><init>(Landroid/content/Context;)V

    .line 1404
    .local v0, "resourcesService":Lcom/android/server/resources/ResourcesManagerService;
    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/resources/ResourcesManagerService;->setActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V

    .line 1405
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v3, v0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1406
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1408
    const-string v3, "StartSensorPrivacyService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1409
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v4, Lcom/android/server/sensorprivacy/SensorPrivacyService;

    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Lcom/android/server/sensorprivacy/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1410
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1412
    const-string/jumbo v3, "persist.sys.displayinset.top"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_39e

    .line 1414
    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateSystemUiContext()V

    .line 1415
    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 1420
    :cond_39e
    const-string v3, "StartSensorService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1421
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/sensors/SensorService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1422
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1425
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v9}, Lcom/android/server/SystemServerStub;->addMiuiRestoreManagerService(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    .line 1428
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1429
    return-void

    .line 1320
    .end local v0    # "resourcesService":Lcom/android/server/resources/ResourcesManagerService;
    .end local v8    # "iPackageManager":Landroid/content/pm/IPackageManager;
    .end local v15    # "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local v16    # "cryptState":Ljava/lang/String;
    .local v10, "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local v11    # "cryptState":Ljava/lang/String;
    :catchall_3ba
    move-exception v0

    move-object v15, v10

    move-object/from16 v16, v11

    .end local v10    # "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local v11    # "cryptState":Ljava/lang/String;
    .restart local v15    # "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local v16    # "cryptState":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1322
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/ScoutStub;->resumeScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1324
    throw v0
.end method

.method private startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3312
    const/4 v0, 0x0

    .line 3313
    .local v0, "explicitlyEnabled":Z
    const-string v1, "content_capture"

    const-string/jumbo v2, "service_explicitly_enabled"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3315
    .local v1, "settings":Ljava/lang/String;
    const-string v2, "SystemServer"

    if-eqz v1, :cond_28

    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 3316
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3317
    if-eqz v0, :cond_22

    .line 3318
    const-string v3, "ContentCaptureService explicitly enabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 3320
    :cond_22
    const-string v3, "ContentCaptureService explicitly disabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    return-void

    .line 3326
    :cond_28
    :goto_28
    if-nez v0, :cond_39

    .line 3327
    const v3, 0x104024d

    invoke-direct {p0, p1, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_39

    .line 3328
    const-string v3, "ContentCaptureService disabled because resource is not overlaid"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    return-void

    .line 3333
    :cond_39
    const-string v2, "StartContentCaptureService"

    invoke-virtual {p2, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3334
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.contentcapture.ContentCaptureManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3336
    const-class v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 3337
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 3338
    .local v2, "ccmi":Lcom/android/server/contentcapture/ContentCaptureManagerInternal;
    if-eqz v2, :cond_56

    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_56

    .line 3339
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->setContentCaptureManager(Lcom/android/server/contentcapture/ContentCaptureManagerInternal;)V

    .line 3342
    :cond_56
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3343
    return-void
.end method

.method private startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1435
    const-string/jumbo v0, "startCoreServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1438
    const-string v0, "StartSystemConfigService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1439
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/SystemConfigService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1440
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1442
    const-string v0, "StartBatteryService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1444
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1445
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1448
    const-string v0, "StartUsageService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1449
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1450
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1451
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1450
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 1452
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1455
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1456
    const-string v0, "StartWebViewUpdateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1457
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 1458
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1462
    :cond_5e
    const-string v0, "StartCachedDeviceStateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1463
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/CachedDeviceStateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1464
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1467
    const-string v0, "StartBinderCallsStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1469
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1472
    const-string v0, "StartLooperStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1473
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/LooperStatsService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1474
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1477
    const-string v0, "StartRollbackManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1478
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.rollback.RollbackManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1479
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1482
    const-string v0, "StartNativeTombstoneManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1483
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/NativeTombstoneManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1484
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1487
    const-string v0, "StartBugreportManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1488
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/BugreportManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1489
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1492
    const-string v0, "GpuService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/gpu/GpuService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1494
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1496
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1497
    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private static native startIStatsService()V
.end method

.method private static native startIncrementalService()J
.end method

.method private static native startMemtrackProxyService()V
.end method

.method private startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 62
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1503
    move-object/from16 v6, p0

    move-object/from16 v5, p1

    const-string/jumbo v0, "startOtherServices"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1504
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->updateOtherServicesStartIndex()V

    .line 1506
    iget-object v4, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1507
    .local v4, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 1508
    .local v1, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    const/4 v2, 0x0

    .line 1509
    .local v2, "storageManager":Landroid/os/storage/IStorageManager;
    const/4 v3, 0x0

    .line 1510
    .local v3, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v13, 0x0

    .line 1511
    .local v13, "vpnManager":Lcom/android/server/VpnManagerService;
    const/4 v14, 0x0

    .line 1512
    .local v14, "vcnManagement":Lcom/android/server/VcnManagementService;
    const/4 v15, 0x0

    .line 1513
    .local v15, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v16, 0x0

    .line 1514
    .local v16, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v17, 0x0

    .line 1515
    .local v17, "serial":Lcom/android/server/SerialService;
    const/16 v18, 0x0

    .line 1516
    .local v18, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/4 v7, 0x0

    .line 1517
    .local v7, "inputManager":Lcom/android/server/input/InputManagerService;
    const/4 v8, 0x0

    .line 1518
    .local v8, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/4 v9, 0x0

    .line 1519
    .local v9, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v19, 0x0

    .line 1520
    .local v19, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v20, 0x0

    .line 1521
    .local v20, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v21, 0x0

    .line 1522
    .local v21, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    const/16 v22, 0x0

    .line 1523
    .local v22, "wigigP2pService":Ljava/lang/Object;
    const/16 v23, 0x0

    .line 1525
    .local v23, "wigigService":Ljava/lang/Object;
    const-string v0, "config.disable_systemtextclassifier"

    const/4 v12, 0x0

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 1528
    .local v24, "disableSystemTextClassifier":Z
    const-string v0, "config.disable_networktime"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 1530
    .local v25, "disableNetworkTime":Z
    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 1532
    .local v26, "disableCameraService":Z
    const-string v0, "config.enable_lefty"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 1534
    .local v27, "enableLeftyService":Z
    const-string/jumbo v0, "ro.boot.qemu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    .line 1535
    .local v28, "isEmulator":Z
    const-string/jumbo v0, "persist.vendor.wigig.enable"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    .line 1537
    .local v29, "enableWigig":Z
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.type.watch"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v30

    .line 1540
    .local v30, "isWatch":Z
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v10, "org.chromium.arc"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v31

    .line 1543
    .local v31, "isArc":Z
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v32

    .line 1547
    .local v32, "enableVrService":Z
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_89

    const-string v0, "debug.crash_system"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_83

    goto :goto_89

    .line 1548
    :cond_83
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1552
    :cond_89
    :goto_89
    :try_start_89
    const-string v0, "SecondaryZygotePreload"

    .line 1557
    .local v0, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    new-instance v10, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;

    invoke-direct {v10}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;-><init>()V

    const-string v11, "SecondaryZygotePreload"

    invoke-static {v10, v11}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 1572
    const-string v10, "StartKeyAttestationApplicationIdProviderService"

    invoke-virtual {v5, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1573
    const-string/jumbo v10, "sec_key_att_app_id_provider"

    new-instance v11, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v11, v4}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1575
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1577
    const-string v10, "StartKeyChainSystemService"

    invoke-virtual {v5, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1578
    iget-object v10, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1579
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1581
    const-string v10, "StartBinaryTransparencyService"

    invoke-virtual {v5, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1582
    iget-object v10, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/BinaryTransparencyService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1583
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1585
    const-string v10, "StartSchedulingPolicyService"

    invoke-virtual {v5, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1586
    const-string/jumbo v10, "scheduling_policy"

    new-instance v11, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v11}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1587
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1591
    iget-object v10, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v11, "android.hardware.microphone"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10
    :try_end_e4
    .catchall {:try_start_89 .. :try_end_e4} :catchall_149a

    if-nez v10, :cond_102

    :try_start_e6
    iget-object v10, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v11, "android.software.telecom"

    .line 1592
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_102

    iget-object v10, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v11, "android.hardware.telephony"

    .line 1593
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10
    :try_end_f8
    .catchall {:try_start_e6 .. :try_end_f8} :catchall_fb

    if-eqz v10, :cond_111

    goto :goto_102

    .line 1780
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_fb
    move-exception v0

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    goto/16 :goto_149f

    .line 1594
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_102
    :goto_102
    :try_start_102
    const-string v10, "StartTelecomLoaderService"

    invoke-virtual {v5, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1595
    iget-object v10, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1596
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1599
    :cond_111
    const-string v10, "StartTelephonyRegistry"

    invoke-virtual {v5, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1600
    new-instance v10, Lcom/android/server/TelephonyRegistry;

    new-instance v11, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    invoke-direct {v11}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;-><init>()V

    invoke-direct {v10, v4, v11}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V
    :try_end_120
    .catchall {:try_start_102 .. :try_end_120} :catchall_149a

    move-object v11, v10

    .line 1602
    .end local v8    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v11, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_121
    const-string/jumbo v8, "telephony.registry"

    invoke-static {v8, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1603
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1605
    const-string v8, "StartEntropyMixer"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1606
    new-instance v8, Lcom/android/server/EntropyMixer;

    invoke-direct {v8, v4}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v8, v6, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 1607
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1609
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, v6, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1612
    const-string v8, "StartAccountManagerService"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1613
    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v8, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1614
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1616
    const-string v8, "StartContentService"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1617
    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v8, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1618
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1620
    const-string v8, "InstallSystemProviders"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1621
    iget-object v8, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getContentProviderHelper()Lcom/android/server/am/ContentProviderHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/ContentProviderHelper;->installSystemProviders()V

    .line 1623
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 1624
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1626
    const-string v8, "UpdateWatchdogTimeout"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1627
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/server/Watchdog;->registerSettingsObserver(Landroid/content/Context;)V

    .line 1628
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1633
    const-string v8, "StartDropBoxManager"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1634
    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v8, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1635
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1638
    const-string v8, "StartRoleManagerService"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1639
    const-class v8, Lcom/android/server/role/RoleServicePlatformHelper;

    new-instance v10, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;

    iget-object v12, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v10, v12}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v8, v10}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1641
    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.role.RoleService"

    invoke-virtual {v8, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1642
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1644
    const-string v8, "StartVibratorManagerService"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1645
    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;

    invoke-virtual {v8, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1646
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1648
    const-string v8, "StartDynamicSystemService"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1649
    new-instance v8, Lcom/android/server/DynamicSystemService;

    invoke-direct {v8, v4}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V
    :try_end_1c3
    .catchall {:try_start_121 .. :try_end_1c3} :catchall_1490

    move-object v1, v8

    .line 1650
    :try_start_1c4
    const-string v8, "dynamic_system"

    invoke-static {v8, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1651
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_1cc
    .catchall {:try_start_1c4 .. :try_end_1cc} :catchall_1484

    .line 1653
    if-nez v30, :cond_1ec

    .line 1654
    :try_start_1ce
    const-string v8, "StartConsumerIrService"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1655
    new-instance v8, Lcom/android/server/ConsumerIrService;

    invoke-direct {v8, v4}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    move-object v9, v8

    .line 1656
    const-string v8, "consumer_ir"

    invoke-static {v8, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1657
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_1e1
    .catchall {:try_start_1ce .. :try_end_1e1} :catchall_1e4

    move-object/from16 v34, v9

    goto :goto_1ee

    .line 1780
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_1e4
    move-exception v0

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object v8, v11

    goto/16 :goto_149f

    .line 1653
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_1ec
    move-object/from16 v34, v9

    .line 1661
    .end local v9    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v34, "consumerIr":Lcom/android/server/ConsumerIrService;
    :goto_1ee
    :try_start_1ee
    const-string v8, "StartResourceEconomy"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1662
    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.tare.InternalResourceService"

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1663
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1666
    const-string v8, "StartAlarmManagerService"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1667
    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.alarm.AlarmManagerService"

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1668
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1670
    const-string v8, "StartInputManagerService"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1671
    new-instance v8, Lcom/android/server/input/InputManagerService;

    invoke-direct {v8, v4}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_216
    .catchall {:try_start_1ee .. :try_end_216} :catchall_1476

    move-object v12, v8

    .line 1672
    .end local v7    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v12, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_217
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1674
    const-string v7, "DeviceStateManagerService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1675
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1676
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_229
    .catchall {:try_start_217 .. :try_end_229} :catchall_1464

    .line 1678
    if-nez v26, :cond_246

    .line 1679
    :try_start_22b
    const-string v7, "StartCameraServiceProxy"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1680
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1681
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_23a
    .catchall {:try_start_22b .. :try_end_23a} :catchall_23b

    goto :goto_246

    .line 1780
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_23b
    move-exception v0

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object v8, v11

    move-object v7, v12

    move-object/from16 v9, v34

    goto/16 :goto_149f

    .line 1684
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_246
    :goto_246
    :try_start_246
    const-string v7, "StartWindowManagerService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1686
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0xc8

    invoke-virtual {v7, v5, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1687
    iget-boolean v7, v6, Lcom/android/server/SystemServer;->mFirstBoot:Z

    const/4 v10, 0x1

    if-nez v7, :cond_259

    move v9, v10

    goto :goto_25a

    :cond_259
    const/4 v9, 0x0

    :goto_25a
    iget-boolean v8, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 1689
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/SystemServerStub;->createPhoneWindowManager()Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v35

    iget-object v7, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;
    :try_end_268
    .catchall {:try_start_246 .. :try_end_268} :catchall_1464

    .line 1687
    move-object/from16 v36, v7

    move-object v7, v4

    move/from16 v37, v8

    move-object v8, v12

    move-object/from16 v38, v1

    move v1, v10

    .end local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v38, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    move/from16 v10, v37

    move-object/from16 v37, v11

    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v37, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v11, v35

    move-object/from16 v39, v12

    const/4 v1, 0x0

    .end local v12    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v39, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v12, v36

    :try_start_27c
    invoke-static/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7
    :try_end_280
    .catchall {:try_start_27c .. :try_end_280} :catchall_1454

    move-object v10, v7

    .line 1690
    .end local v16    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v10, "wm":Lcom/android/server/wm/WindowManagerService;
    :try_start_281
    const-string/jumbo v7, "window"

    const/16 v8, 0x11

    invoke-static {v7, v10, v1, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1692
    const-string/jumbo v7, "input"
    :try_end_28c
    .catchall {:try_start_281 .. :try_end_28c} :catchall_143f

    move-object/from16 v9, v39

    const/4 v8, 0x1

    .end local v39    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v9, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_28f
    invoke-static {v7, v9, v1, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1694
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1696
    const-string v7, "SetWindowManagerService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1697
    iget-object v7, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v10}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1698
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1700
    const-string v7, "WindowManagerServiceOnInitReady"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 1702
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1707
    new-instance v7, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;

    invoke-direct {v7}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;-><init>()V

    const-string v8, "StartHidlServices"

    invoke-static {v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_2b7
    .catchall {:try_start_28f .. :try_end_2b7} :catchall_142a

    .line 1714
    if-nez v30, :cond_2db

    if-eqz v32, :cond_2db

    .line 1715
    :try_start_2bb
    const-string v7, "StartVrManagerService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1716
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1717
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_2ca
    .catchall {:try_start_2bb .. :try_end_2ca} :catchall_2cb

    goto :goto_2db

    .line 1780
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_2cb
    move-exception v0

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object v7, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v34

    move-object/from16 v8, v37

    move-object/from16 v1, v38

    goto/16 :goto_149f

    .line 1720
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_2db
    :goto_2db
    :try_start_2db
    invoke-static {}, Lcom/android/server/wm/MiuiMagicPointerServiceStubHead;->isMiuiMagicPointerEnable()Z

    move-result v7
    :try_end_2df
    .catchall {:try_start_2db .. :try_end_2df} :catchall_142a

    if-eqz v7, :cond_2f4

    .line 1721
    :try_start_2e1
    const-string v7, "StartMiuiMagicPointerService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1722
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v7

    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v11, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v8, v11, v10, v9}, Lcom/android/server/SystemServerStub;->addMagicPointerManagerService(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V

    .line 1723
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_2f4
    .catchall {:try_start_2e1 .. :try_end_2f4} :catchall_2cb

    .line 1727
    :cond_2f4
    :try_start_2f4
    const-string v7, "StartInputManager"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1728
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1729
    invoke-virtual {v9}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1730
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1733
    const-string v7, "DisplayManagerWindowManagerAndInputReady"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1734
    iget-object v7, v6, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v7}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1735
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1737
    iget v7, v6, Lcom/android/server/SystemServer;->mFactoryTestMode:I
    :try_end_315
    .catchall {:try_start_2f4 .. :try_end_315} :catchall_142a

    const/4 v8, 0x1

    if-ne v7, v8, :cond_320

    .line 1738
    :try_start_318
    const-string v7, "SystemServer"

    const-string v8, "No Bluetooth Service (factory test)"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31f
    .catchall {:try_start_318 .. :try_end_31f} :catchall_2cb

    goto :goto_343

    .line 1739
    :cond_320
    :try_start_320
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.bluetooth"

    .line 1740
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7
    :try_end_32a
    .catchall {:try_start_320 .. :try_end_32a} :catchall_142a

    if-nez v7, :cond_334

    .line 1741
    :try_start_32c
    const-string v7, "SystemServer"

    const-string v8, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_333
    .catchall {:try_start_32c .. :try_end_333} :catchall_2cb

    goto :goto_343

    .line 1743
    :cond_334
    :try_start_334
    const-string v7, "StartBluetoothService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1744
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.bluetooth.BluetoothService"

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1745
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1748
    :goto_343
    const-string v7, "IpConnectivityMetrics"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1749
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.connectivity.IpConnectivityMetrics"

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1750
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1752
    const-string v7, "NetworkWatchlistService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1753
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1754
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1756
    const-string v7, "PinnerService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1757
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/PinnerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1758
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1760
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/ActivityTriggerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1762
    sget-boolean v7, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_379
    .catchall {:try_start_334 .. :try_end_379} :catchall_142a

    if-eqz v7, :cond_390

    :try_start_37b
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->enabled()Z

    move-result v7

    if-eqz v7, :cond_390

    .line 1763
    const-string v7, "ProfcollectForwardingService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1764
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1765
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_390
    .catchall {:try_start_37b .. :try_end_390} :catchall_2cb

    .line 1768
    :cond_390
    :try_start_390
    const-string v7, "SignedConfigService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1769
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    .line 1770
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1772
    const-string v7, "AppIntegrityService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1773
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/integrity/AppIntegrityManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1774
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1776
    const-string v7, "StartLogcatManager"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1777
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1778
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_3bb
    .catchall {:try_start_390 .. :try_end_3bb} :catchall_142a

    .line 1784
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    nop

    .line 1788
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v12

    .line 1789
    .local v12, "safeMode":Z
    if-eqz v12, :cond_3cd

    .line 1794
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "airplane_mode_on"

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3e3

    .line 1796
    :cond_3cd
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x1110031

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3e3

    .line 1797
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "airplane_mode_on"

    invoke-static {v0, v7, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1801
    :cond_3e3
    :goto_3e3
    const/4 v7, 0x0

    .line 1802
    .local v7, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/4 v8, 0x0

    .line 1803
    .local v8, "notification":Landroid/app/INotificationManager;
    const/4 v11, 0x0

    .line 1804
    .local v11, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v16, 0x0

    .line 1805
    .local v16, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v33, 0x0

    .line 1808
    .local v33, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    iget v0, v6, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_415

    .line 1809
    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1810
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1811
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1813
    const-string v0, "StartAccessibilityManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1815
    :try_start_403
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.accessibility.AccessibilityManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_40a
    .catchall {:try_start_403 .. :try_end_40a} :catchall_40b

    .line 1818
    goto :goto_412

    .line 1816
    :catchall_40b
    move-exception v0

    .line 1817
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting Accessibility Manager"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1819
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_412
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1822
    :cond_415
    const-string v0, "MakeDisplayReady"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1824
    :try_start_41a
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_41d
    .catchall {:try_start_41a .. :try_end_41d} :catchall_41e

    .line 1827
    goto :goto_427

    .line 1825
    :catchall_41e
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1826
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "making display ready"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1828
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_427
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1830
    iget v0, v6, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_47b

    .line 1831
    const-string v0, "0"

    const-string/jumbo v1, "system_init.startmountservice"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47b

    .line 1832
    const-string v0, "StartStorageManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1838
    :try_start_443
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1839
    const-string/jumbo v0, "mount"

    .line 1840
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1839
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_455
    .catchall {:try_start_443 .. :try_end_455} :catchall_457

    move-object v2, v0

    .line 1843
    goto :goto_45e

    .line 1841
    :catchall_457
    move-exception v0

    .line 1842
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting StorageManagerService"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1844
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_45e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1846
    const-string v0, "StartStorageStatsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1848
    :try_start_466
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_46d
    .catchall {:try_start_466 .. :try_end_46d} :catchall_46e

    .line 1851
    goto :goto_475

    .line 1849
    :catchall_46e
    move-exception v0

    .line 1850
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting StorageStatsService"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1852
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_475
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v39, v2

    goto :goto_47d

    .line 1858
    :cond_47b
    move-object/from16 v39, v2

    .end local v2    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v39, "storageManager":Landroid/os/storage/IStorageManager;
    :goto_47d
    const-string v0, "StartUiModeManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1859
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1860
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1862
    const-string v0, "StartLocaleManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1864
    :try_start_491
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_498
    .catchall {:try_start_491 .. :try_end_498} :catchall_499

    .line 1867
    goto :goto_4a0

    .line 1865
    :catchall_499
    move-exception v0

    .line 1866
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting LocaleManagerService service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1868
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4a0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1871
    iget-boolean v0, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_511

    .line 1872
    const-string v0, "UpdatePackagesIfNeeded"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1874
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1876
    .local v1, "bootDexoptStartTime":J
    :try_start_4b0
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0
    :try_end_4b4
    .catchall {:try_start_4b0 .. :try_end_4b4} :catchall_4cc

    move-object/from16 v40, v3

    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v40, "networkManagement":Lcom/android/server/NetworkManagementService;
    :try_start_4b6
    const-string v3, "dexopt"

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1878
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    const-string v3, "dexopt"

    invoke-virtual {v0, v3}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1880
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_4c9
    .catchall {:try_start_4b6 .. :try_end_4c9} :catchall_4ca

    goto :goto_4d5

    .line 1881
    :catchall_4ca
    move-exception v0

    goto :goto_4cf

    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catchall_4cc
    move-exception v0

    move-object/from16 v40, v3

    .line 1882
    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_4cf
    :try_start_4cf
    const-string/jumbo v3, "update packages"

    invoke-direct {v6, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4d5
    .catchall {:try_start_4cf .. :try_end_4d5} :catchall_4fa

    .line 1884
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4d5
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v3, "dexopt"

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1886
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    const-string v3, "dexopt"

    invoke-virtual {v0, v3}, Lcom/android/server/ScoutStub;->resumeScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1888
    nop

    .line 1889
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1891
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    move-object v3, v7

    move-object/from16 v41, v8

    .end local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v8    # "notification":Landroid/app/INotificationManager;
    .local v3, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v41, "notification":Landroid/app/INotificationManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v1, v2, v7, v8}, Lcom/android/server/SystemServerStub;->markBootDexopt(JJ)V

    goto :goto_516

    .line 1884
    .end local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v41    # "notification":Landroid/app/INotificationManager;
    .restart local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v8    # "notification":Landroid/app/INotificationManager;
    :catchall_4fa
    move-exception v0

    move-object v3, v7

    move-object/from16 v41, v8

    .end local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v8    # "notification":Landroid/app/INotificationManager;
    .restart local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v41    # "notification":Landroid/app/INotificationManager;
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v8, "dexopt"

    invoke-virtual {v7, v8}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1886
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v7

    const-string v8, "dexopt"

    invoke-virtual {v7, v8}, Lcom/android/server/ScoutStub;->resumeScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1888
    throw v0

    .line 1871
    .end local v1    # "bootDexoptStartTime":J
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v41    # "notification":Landroid/app/INotificationManager;
    .local v3, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v8    # "notification":Landroid/app/INotificationManager;
    :cond_511
    move-object/from16 v40, v3

    move-object v3, v7

    move-object/from16 v41, v8

    .line 1905
    .end local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v8    # "notification":Landroid/app/INotificationManager;
    .local v3, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v41    # "notification":Landroid/app/INotificationManager;
    :goto_516
    iget v0, v6, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_53c

    .line 1906
    const/4 v0, 0x0

    move-object/from16 v43, v0

    move-object/from16 v42, v11

    move-object/from16 v45, v13

    move-object/from16 v46, v14

    move-object/from16 v47, v15

    move-object/from16 v48, v16

    move-object/from16 v49, v17

    move-object/from16 v50, v18

    move-object/from16 v51, v20

    move-object/from16 v52, v21

    move-object/from16 v2, v23

    move-object/from16 v53, v33

    move-object/from16 v44, v40

    move-object/from16 v33, v3

    move-object/from16 v3, v22

    .local v0, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    goto/16 :goto_fd5

    .line 1908
    .end local v0    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    :cond_53c
    const-string v0, "StartLockSettingsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1910
    :try_start_541
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1911
    const-string/jumbo v0, "lock_settings"

    .line 1912
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1911
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_553
    .catchall {:try_start_541 .. :try_end_553} :catchall_556

    .line 1915
    .end local v16    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v0, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    move-object/from16 v16, v0

    goto :goto_55d

    .line 1913
    .end local v0    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v16    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catchall_556
    move-exception v0

    .line 1914
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting LockSettingsService service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1916
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_55d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1918
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move v1, v0

    .line 1919
    .local v1, "hasPdb":Z
    if-eqz v1, :cond_581

    .line 1920
    const-string v0, "StartPersistentDataBlock"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1921
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1922
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1925
    :cond_581
    const-string v0, "StartTestHarnessMode"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1926
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1927
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1929
    if-nez v1, :cond_598

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_5a7

    .line 1931
    :cond_598
    const-string v0, "StartOemLockService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1932
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1933
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1936
    :cond_5a7
    const-string v0, "StartDeviceIdleController"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1937
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.DeviceIdleController"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1938
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1942
    const-string v0, "StartDevicePolicyManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1943
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    .line 1944
    .local v2, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1946
    if-nez v30, :cond_5eb

    .line 1947
    const-string v0, "StartStatusBarManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1949
    :try_start_5d0
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v4}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5d5
    .catchall {:try_start_5d0 .. :try_end_5d5} :catchall_5df

    move-object v7, v0

    .line 1950
    .end local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_5d6
    const-string/jumbo v0, "statusbar"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5dc
    .catchall {:try_start_5d6 .. :try_end_5dc} :catchall_5dd

    .line 1953
    goto :goto_5e7

    .line 1951
    :catchall_5dd
    move-exception v0

    goto :goto_5e1

    .end local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catchall_5df
    move-exception v0

    move-object v7, v3

    .line 1952
    .end local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_5e1
    const-string/jumbo v3, "starting StatusBarManagerService"

    invoke-direct {v6, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1954
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_5e7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_5ec

    .line 1946
    .end local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_5eb
    move-object v7, v3

    .line 1957
    .end local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_5ec
    const v0, 0x1040252

    invoke-direct {v6, v4, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_605

    .line 1959
    const-string v0, "StartMusicRecognitionManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1960
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.musicrecognition.MusicRecognitionManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1961
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_60c

    .line 1963
    :cond_605
    const-string v0, "SystemServer"

    const-string v3, "MusicRecognitionManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    :goto_60c
    invoke-direct {v6, v4, v5}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1968
    invoke-direct {v6, v4, v5}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1969
    invoke-direct {v6, v4, v5}, Lcom/android/server/SystemServer;->startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1970
    invoke-direct {v6, v4, v5}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1971
    invoke-direct {v6, v4, v5}, Lcom/android/server/SystemServer;->startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1972
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemServer;->startAmbientContextService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1975
    const-string v0, "StartSpeechRecognitionManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1976
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.speech.SpeechRecognitionManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1977
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1980
    const v0, 0x1040246

    invoke-direct {v6, v4, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_646

    .line 1981
    const-string v0, "StartAppPredictionService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1982
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.appprediction.AppPredictionManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1983
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_64d

    .line 1985
    :cond_646
    const-string v0, "SystemServer"

    const-string v3, "AppPredictionService not defined by OEM"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :goto_64d
    const v0, 0x104024e

    invoke-direct {v6, v4, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_666

    .line 1990
    const-string v0, "StartContentSuggestionsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1991
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1992
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_66d

    .line 1994
    :cond_666
    const-string v0, "SystemServer"

    const-string v3, "ContentSuggestionsService not defined by OEM"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    :goto_66d
    const-string v0, "StartSearchUiService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2000
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.searchui.SearchUiManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2001
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2005
    const-string v0, "StartSmartspaceService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2006
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.smartspace.SmartspaceManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2007
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2011
    const-string v0, "StartCloudSearchService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2012
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.cloudsearch.CloudSearchManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2013
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2015
    const-string v0, "InitConnectivityModuleConnector"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2017
    :try_start_69f
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityModuleConnector;->init(Landroid/content/Context;)V
    :try_end_6a6
    .catchall {:try_start_69f .. :try_end_6a6} :catchall_6a7

    .line 2020
    goto :goto_6ae

    .line 2018
    :catchall_6a7
    move-exception v0

    .line 2019
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "initializing ConnectivityModuleConnector"

    invoke-direct {v6, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2021
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6ae
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2023
    const-string v0, "InitNetworkStackClient"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2025
    :try_start_6b6
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->init()V
    :try_end_6bd
    .catchall {:try_start_6b6 .. :try_end_6bd} :catchall_6be

    .line 2028
    goto :goto_6c5

    .line 2026
    :catchall_6be
    move-exception v0

    .line 2027
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "initializing NetworkStackClient"

    invoke-direct {v6, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2029
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6c5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2031
    const-string v0, "StartNetworkManagementService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2033
    :try_start_6cd
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v0
    :try_end_6d1
    .catchall {:try_start_6cd .. :try_end_6d1} :catchall_6db

    move-object v3, v0

    .line 2034
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v3, "networkManagement":Lcom/android/server/NetworkManagementService;
    :try_start_6d2
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6d8
    .catchall {:try_start_6d2 .. :try_end_6d8} :catchall_6d9

    .line 2037
    goto :goto_6e4

    .line 2035
    :catchall_6d9
    move-exception v0

    goto :goto_6de

    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catchall_6db
    move-exception v0

    move-object/from16 v3, v40

    .line 2036
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_6de
    const-string/jumbo v8, "starting NetworkManagement Service"

    invoke-direct {v6, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2038
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6e4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2040
    const-string v0, "StartFontManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2041
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v8, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    invoke-direct {v8, v4, v12}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 2042
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2044
    const-string v0, "StartTextServicesManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2045
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2046
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2048
    if-nez v24, :cond_719

    .line 2049
    const-string v0, "StartTextClassificationManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2050
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    .line 2051
    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2052
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2055
    :cond_719
    const-string v0, "StartNetworkScoreService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2056
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2057
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2059
    const-string v0, "StartNetworkStatsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2062
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.NetworkStatsServiceInitializer"

    move/from16 v42, v1

    .end local v1    # "hasPdb":Z
    .local v42, "hasPdb":Z
    const-string v1, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v8, v1}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2064
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2066
    const-string v0, "StartNetworkPolicyManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2068
    :try_start_740
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v4, v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V

    move-object v15, v0

    .line 2070
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_74e
    .catchall {:try_start_740 .. :try_end_74e} :catchall_74f

    .line 2073
    goto :goto_756

    .line 2071
    :catchall_74f
    move-exception v0

    .line 2072
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting NetworkPolicy Service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2074
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_756
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2077
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 2078
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/SystemServerStub;->getMiuilibpath()Ljava/lang/String;

    move-result-object v8

    .line 2077
    invoke-virtual {v0, v1, v8}, Lcom/android/server/SystemServiceManager;->addDexToClassLoader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_796

    .line 2082
    const-string v0, "StartWifi"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2083
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.wifi.WifiService"

    const-string v8, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2085
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2086
    const-string v0, "StartWifiScanning"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2087
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.wifi.scanner.WifiScanningService"

    const-string v8, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2089
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2092
    :cond_796
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b3

    .line 2094
    const-string v0, "StartRttService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2095
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.wifi.rtt.RttService"

    const-string v8, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2097
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2100
    :cond_7b3
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.aware"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d0

    .line 2102
    const-string v0, "StartWifiAware"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2103
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.wifi.aware.WifiAwareService"

    const-string v8, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2105
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2108
    :cond_7d0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7ed

    .line 2110
    const-string v0, "StartWifiP2P"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2111
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.wifi.p2p.WifiP2pService"

    const-string v8, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2113
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2116
    :cond_7ed
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.lowpan"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_808

    .line 2118
    const-string v0, "StartLowpan"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2119
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2120
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2123
    :cond_808
    const-string v0, "StartPacProxyService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2125
    :try_start_80d
    new-instance v0, Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {v0, v4}, Lcom/android/server/connectivity/PacProxyService;-><init>(Landroid/content/Context;)V
    :try_end_812
    .catchall {:try_start_80d .. :try_end_812} :catchall_820

    move-object v1, v0

    .line 2126
    .end local v21    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v1, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    :try_start_813
    const-string/jumbo v0, "pac_proxy"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_819
    .catchall {:try_start_813 .. :try_end_819} :catchall_81c

    .line 2129
    move-object/from16 v21, v1

    goto :goto_827

    .line 2127
    :catchall_81c
    move-exception v0

    move-object/from16 v21, v1

    goto :goto_821

    .end local v1    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .restart local v21    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    :catchall_820
    move-exception v0

    .line 2128
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_821
    const-string/jumbo v1, "starting PacProxyService"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2130
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_827
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2133
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    .line 2134
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/SystemServerStub;->getConnectivitylibpath()Ljava/lang/String;

    move-result-object v8

    .line 2133
    invoke-virtual {v0, v1, v8}, Lcom/android/server/SystemServiceManager;->addDexToClassLoader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    const-string v0, "StartConnectivityService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2139
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.ConnectivityServiceInitializer"

    const-string v8, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2141
    invoke-virtual {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager()V

    .line 2142
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2144
    const-string v0, "StartVpnManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2146
    :try_start_852
    invoke-static {v4}, Lcom/android/server/VpnManagerService;->create(Landroid/content/Context;)Lcom/android/server/VpnManagerService;

    move-result-object v0

    move-object v13, v0

    .line 2147
    const-string/jumbo v0, "vpn_management"

    invoke-static {v0, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_85d
    .catchall {:try_start_852 .. :try_end_85d} :catchall_85e

    .line 2150
    goto :goto_865

    .line 2148
    :catchall_85e
    move-exception v0

    .line 2149
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting VPN Manager Service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2151
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_865
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2153
    const-string v0, "StartVcnManagementService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2155
    :try_start_86d
    invoke-static {v4}, Lcom/android/server/VcnManagementService;->create(Landroid/content/Context;)Lcom/android/server/VcnManagementService;

    move-result-object v0

    move-object v14, v0

    .line 2156
    const-string/jumbo v0, "vcn_management"

    invoke-static {v0, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_878
    .catchall {:try_start_86d .. :try_end_878} :catchall_879

    .line 2159
    goto :goto_880

    .line 2157
    :catchall_879
    move-exception v0

    .line 2158
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting VCN Management Service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2160
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_880
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2162
    if-eqz v29, :cond_916

    .line 2164
    :try_start_885
    const-string v0, "SystemServer"

    const-string v1, "Wigig Service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    const-string v0, "/system/system_ext/framework/wigig-service.jar:/system/system_ext/framework/vendor.qti.hardware.wigig.supptunnel-V1.0-java.jar:/system/system_ext/framework/vendor.qti.hardware.wigig.netperftuner-V1.0-java.jar:/system/system_ext/framework/vendor.qti.hardware.capabilityconfigstore-V1.0-java.jar"

    .line 2170
    .local v0, "wigigClassPath":Ljava/lang/String;
    new-instance v1, Ldalvik/system/PathClassLoader;

    .line 2171
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2172
    .local v1, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string v8, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    invoke-virtual {v1, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_8a1
    .catchall {:try_start_885 .. :try_end_8a1} :catchall_90a

    .line 2174
    .local v8, "wigigP2pClass":Ljava/lang/Class;
    move-object/from16 v40, v0

    move-object/from16 v43, v2

    const/4 v2, 0x1

    .end local v0    # "wigigClassPath":Ljava/lang/String;
    .end local v2    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .local v40, "wigigClassPath":Ljava/lang/String;
    .local v43, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    :try_start_8a6
    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/16 v36, 0x0

    aput-object v2, v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_8b2
    .catchall {:try_start_8a6 .. :try_end_8b2} :catchall_906

    .line 2175
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    move-object/from16 v44, v3

    const/4 v2, 0x1

    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v44, "networkManagement":Lcom/android/server/NetworkManagementService;
    :try_start_8b5
    new-array v3, v2, [Ljava/lang/Object;

    aput-object v4, v3, v36

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    .line 2176
    const-string v2, "SystemServer"

    const-string v3, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    const-string/jumbo v2, "wigigp2p"

    move-object/from16 v3, v22

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2179
    const-string v2, "com.qualcomm.qti.server.wigig.WigigService"

    invoke-virtual {v1, v2}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2181
    .local v2, "wigigClass":Ljava/lang/Class;
    move-object/from16 v45, v0

    const/4 v3, 0x1

    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .local v45, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    new-array v0, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/16 v36, 0x0

    aput-object v3, v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 2182
    .end local v45    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .restart local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    move-object/from16 v45, v1

    const/4 v3, 0x1

    .end local v1    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .local v45, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v4, v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    .line 2183
    const-string v1, "SystemServer"

    const-string v3, "Successfully loaded WigigService class"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    const-string/jumbo v1, "wigig"

    move-object/from16 v3, v23

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v1, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_903
    .catchall {:try_start_8b5 .. :try_end_903} :catchall_904

    .line 2187
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v2    # "wigigClass":Ljava/lang/Class;
    .end local v8    # "wigigP2pClass":Ljava/lang/Class;
    .end local v40    # "wigigClassPath":Ljava/lang/String;
    .end local v45    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    goto :goto_91a

    .line 2185
    :catchall_904
    move-exception v0

    goto :goto_90f

    .end local v44    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catchall_906
    move-exception v0

    move-object/from16 v44, v3

    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v44    # "networkManagement":Lcom/android/server/NetworkManagementService;
    goto :goto_90f

    .end local v43    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v44    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v2, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catchall_90a
    move-exception v0

    move-object/from16 v43, v2

    move-object/from16 v44, v3

    .line 2186
    .end local v2    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v43    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .restart local v44    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_90f
    const-string/jumbo v1, "starting WigigService"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_91a

    .line 2162
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v43    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v44    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v2    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :cond_916
    move-object/from16 v43, v2

    move-object/from16 v44, v3

    .line 2190
    .end local v2    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v43    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .restart local v44    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_91a
    const-string v0, "StartSystemUpdateManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2192
    :try_start_91f
    const-string/jumbo v0, "system_update"

    new-instance v1, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v1, v4}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_92a
    .catchall {:try_start_91f .. :try_end_92a} :catchall_92b

    .line 2196
    goto :goto_932

    .line 2194
    :catchall_92b
    move-exception v0

    .line 2195
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting SystemUpdateManagerService"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2197
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_932
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2199
    const-string v0, "StartUpdateLockService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2201
    :try_start_93a
    const-string/jumbo v0, "updatelock"

    new-instance v1, Lcom/android/server/UpdateLockService;

    invoke-direct {v1, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_945
    .catchall {:try_start_93a .. :try_end_945} :catchall_946

    .line 2205
    goto :goto_94d

    .line 2203
    :catchall_946
    move-exception v0

    .line 2204
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting UpdateLockService"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2206
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_94d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2208
    const-string v0, "StartNotificationManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2209
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2210
    invoke-static {v4}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    .line 2211
    invoke-static {v4}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 2212
    const-string/jumbo v0, "notification"

    .line 2213
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2212
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v8

    .line 2214
    .end local v41    # "notification":Landroid/app/INotificationManager;
    .local v8, "notification":Landroid/app/INotificationManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2216
    const-string v0, "StartDeviceMonitor"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2217
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2218
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2220
    const-string v0, "StartLocationManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2221
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/location/LocationManagerService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2222
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2224
    const-string v0, "StartCountryDetectorService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2226
    :try_start_993
    new-instance v0, Lcom/android/server/CountryDetectorService;

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V

    move-object v11, v0

    .line 2227
    const-string v0, "country_detector"

    invoke-static {v0, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_99e
    .catchall {:try_start_993 .. :try_end_99e} :catchall_99f

    .line 2230
    goto :goto_9a6

    .line 2228
    :catchall_99f
    move-exception v0

    .line 2229
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting Country Detector"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2231
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9a6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2233
    const-string v0, "StartTimeDetectorService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2235
    :try_start_9ae
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.timedetector.TimeDetectorService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_9b5
    .catchall {:try_start_9ae .. :try_end_9b5} :catchall_9b6

    .line 2238
    goto :goto_9bd

    .line 2236
    :catchall_9b6
    move-exception v0

    .line 2237
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting TimeDetectorService service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2239
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9bd
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2241
    const-string v0, "StartTimeZoneDetectorService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2243
    :try_start_9c5
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.timezonedetector.TimeZoneDetectorService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_9cc
    .catchall {:try_start_9c5 .. :try_end_9cc} :catchall_9cd

    .line 2246
    goto :goto_9d4

    .line 2244
    :catchall_9cd
    move-exception v0

    .line 2245
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting TimeZoneDetectorService service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2247
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9d4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2249
    const-string v0, "StartLocationTimeZoneManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2251
    :try_start_9dc
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.timezonedetector.location.LocationTimeZoneManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_9e3
    .catchall {:try_start_9dc .. :try_end_9e3} :catchall_9e4

    .line 2254
    goto :goto_9eb

    .line 2252
    :catchall_9e4
    move-exception v0

    .line 2253
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting LocationTimeZoneManagerService service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2255
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9eb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2257
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_a12

    .line 2258
    const-string v0, "StartGnssTimeUpdateService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2260
    :try_start_a00
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.timedetector.GnssTimeUpdateService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_a07
    .catchall {:try_start_a00 .. :try_end_a07} :catchall_a08

    .line 2263
    goto :goto_a0f

    .line 2261
    :catchall_a08
    move-exception v0

    .line 2262
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting GnssTimeUpdateService service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2264
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a0f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2267
    :cond_a12
    if-nez v30, :cond_a2b

    .line 2268
    const-string v0, "StartSearchManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2270
    :try_start_a19
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_a20
    .catchall {:try_start_a19 .. :try_end_a20} :catchall_a21

    .line 2273
    goto :goto_a28

    .line 2271
    :catchall_a21
    move-exception v0

    .line 2272
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting Search Service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2274
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a28
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2277
    :cond_a2b
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_a48

    .line 2278
    const-string v0, "StartWallpaperManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2279
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2280
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_a4f

    .line 2282
    :cond_a48
    const-string v0, "SystemServer"

    const-string v1, "Wallpaper service disabled by config"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    :goto_a4f
    const-string v0, "StartWallpaperEffectsGenerationService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2289
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.wallpapereffectsgeneration.WallpaperEffectsGenerationManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2291
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2293
    const-string v0, "StartAudioService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2294
    if-nez v31, :cond_a6d

    .line 2295
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto :goto_aa9

    .line 2297
    :cond_a6d
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104026b

    .line 2298
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2300
    .local v1, "className":Ljava/lang/String;
    :try_start_a78
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$Lifecycle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_a90
    .catchall {:try_start_a78 .. :try_end_a90} :catchall_a91

    .line 2303
    goto :goto_aa9

    .line 2301
    :catchall_a91
    move-exception v0

    .line 2302
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2305
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "className":Ljava/lang/String;
    :goto_aa9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2307
    const-string v0, "StartSoundTriggerMiddlewareService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2308
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2309
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2311
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.broadcastradio"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad4

    .line 2312
    const-string v0, "StartBroadcastRadioService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2313
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2314
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2317
    :cond_ad4
    const-string v0, "StartDockObserver"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2318
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2319
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2321
    if-eqz v30, :cond_af4

    .line 2322
    const-string v0, "StartThermalObserver"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2323
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2324
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2327
    :cond_af4
    if-nez v30, :cond_b0e

    .line 2328
    const-string v0, "StartWiredAccessoryManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2331
    :try_start_afb
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v4, v9}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v9, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_b03
    .catchall {:try_start_afb .. :try_end_b03} :catchall_b04

    .line 2335
    goto :goto_b0b

    .line 2333
    :catchall_b04
    move-exception v0

    .line 2334
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting WiredAccessoryManager"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2336
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b0b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2339
    :cond_b0e
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.midi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b27

    .line 2341
    const-string v0, "StartMidiManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2342
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2343
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2347
    :cond_b27
    const-string v0, "StartAdbService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2349
    :try_start_b2c
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.adb.AdbService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_b33
    .catchall {:try_start_b2c .. :try_end_b33} :catchall_b34

    .line 2352
    goto :goto_b3c

    .line 2350
    :catchall_b34
    move-exception v0

    .line 2351
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v1, "SystemServer"

    const-string v2, "Failure starting AdbService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b3c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2355
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.usb.host"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b55

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.usb.accessory"

    .line 2356
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b55

    if-eqz v28, :cond_b64

    .line 2360
    :cond_b55
    const-string v0, "StartUsbService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2361
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2362
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2365
    :cond_b64
    if-nez v30, :cond_b8b

    .line 2366
    const-string v0, "StartSerialService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2369
    :try_start_b6b
    new-instance v0, Lcom/android/server/SerialService;

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_b70
    .catchall {:try_start_b6b .. :try_end_b70} :catchall_b7c

    move-object v1, v0

    .line 2370
    .end local v17    # "serial":Lcom/android/server/SerialService;
    .local v1, "serial":Lcom/android/server/SerialService;
    :try_start_b71
    const-string/jumbo v0, "serial"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b77
    .catchall {:try_start_b71 .. :try_end_b77} :catchall_b78

    .line 2373
    goto :goto_b86

    .line 2371
    :catchall_b78
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_b7d

    .end local v1    # "serial":Lcom/android/server/SerialService;
    .restart local v17    # "serial":Lcom/android/server/SerialService;
    :catchall_b7c
    move-exception v0

    .line 2372
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_b7d
    const-string v1, "SystemServer"

    const-string v2, "Failure starting SerialService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v1, v17

    .line 2374
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v17    # "serial":Lcom/android/server/SerialService;
    .restart local v1    # "serial":Lcom/android/server/SerialService;
    :goto_b86
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v17, v1

    .line 2377
    .end local v1    # "serial":Lcom/android/server/SerialService;
    .restart local v17    # "serial":Lcom/android/server/SerialService;
    :cond_b8b
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2379
    :try_start_b90
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v4}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_b95
    .catchall {:try_start_b90 .. :try_end_b95} :catchall_ba3

    move-object v1, v0

    .line 2380
    .end local v20    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v1, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_b96
    const-string/jumbo v0, "hardware_properties"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b9c
    .catchall {:try_start_b96 .. :try_end_b9c} :catchall_b9f

    .line 2384
    move-object/from16 v20, v1

    goto :goto_bab

    .line 2382
    :catchall_b9f
    move-exception v0

    move-object/from16 v20, v1

    goto :goto_ba4

    .end local v1    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v20    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :catchall_ba3
    move-exception v0

    .line 2383
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_ba4
    const-string v1, "SystemServer"

    const-string v2, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2385
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_bab
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2387
    if-nez v30, :cond_bbf

    .line 2388
    const-string v0, "StartTwilightService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2389
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2390
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2393
    :cond_bbf
    const-string v0, "StartColorDisplay"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2394
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2395
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2398
    const-string v0, "StartJobScheduler"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2399
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.job.JobSchedulerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2400
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2402
    const-string v0, "StartSoundTrigger"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2403
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2404
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2406
    const-string v0, "StartTrustManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2407
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2408
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2411
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    iget-boolean v1, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v0, v4, v1}, Lcom/android/server/SystemServerStub;->addExtraServices(Landroid/content/Context;Z)V

    .line 2413
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.backup"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c1d

    .line 2414
    const-string v0, "StartBackupManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2415
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2416
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2419
    :cond_c1d
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.app_widgets"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c34

    .line 2420
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111012a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_c43

    .line 2421
    :cond_c34
    const-string v0, "StartAppWidgetService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2422
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2423
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2430
    :cond_c43
    const-string v0, "StartVoiceRecognitionManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2431
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2432
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2434
    const-string v0, "StartAppHibernationService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2435
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.apphibernation.AppHibernationService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2436
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2438
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_c7a

    .line 2439
    const-string v0, "StartGestureLauncher"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2440
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2441
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2443
    :cond_c7a
    const-string v0, "StartSensorNotification"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2444
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2445
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2447
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.context_hub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ca2

    .line 2448
    const-string v0, "StartContextHubSystemService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2449
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2450
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2453
    :cond_ca2
    const-string v0, "StartDiskStatsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2455
    :try_start_ca7
    const-string v0, "diskstats"

    new-instance v1, Lcom/android/server/DiskStatsService;

    invoke-direct {v1, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_cb1
    .catchall {:try_start_ca7 .. :try_end_cb1} :catchall_cb2

    .line 2458
    goto :goto_cb9

    .line 2456
    :catchall_cb2
    move-exception v0

    .line 2457
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting DiskStats Service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2459
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_cb9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2461
    const-string v0, "RuntimeService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2463
    :try_start_cc1
    const-string/jumbo v0, "runtime"

    new-instance v1, Lcom/android/server/RuntimeService;

    invoke-direct {v1, v4}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ccc
    .catchall {:try_start_cc1 .. :try_end_ccc} :catchall_ccd

    .line 2466
    goto :goto_cd4

    .line 2464
    :catchall_ccd
    move-exception v0

    .line 2465
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting RuntimeService"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2467
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_cd4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2473
    iget-boolean v0, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_cea

    .line 2474
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_cea

    const/4 v0, 0x1

    goto :goto_ceb

    :cond_cea
    const/4 v0, 0x0

    :goto_ceb
    move v1, v0

    .line 2476
    .local v1, "startRulesManagerService":Z
    if-eqz v1, :cond_cfd

    .line 2477
    const-string v0, "StartTimeZoneRulesManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2478
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2479
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2482
    :cond_cfd
    if-nez v30, :cond_d25

    if-nez v25, :cond_d25

    .line 2483
    const-string v0, "StartNetworkTimeUpdateService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2485
    :try_start_d06
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_d0b
    .catchall {:try_start_d06 .. :try_end_d0b} :catchall_d17

    move-object v2, v0

    .line 2486
    .end local v18    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v2, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_d0c
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d12
    .catchall {:try_start_d0c .. :try_end_d12} :catchall_d13

    .line 2489
    goto :goto_d20

    .line 2487
    :catchall_d13
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_d18

    .end local v2    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v18    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catchall_d17
    move-exception v0

    .line 2488
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_d18
    const-string/jumbo v2, "starting NetworkTimeUpdate service"

    invoke-direct {v6, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v2, v18

    .line 2490
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v18    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v2    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_d20
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v18, v2

    .line 2493
    .end local v2    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v18    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_d25
    const-string v0, "CertBlacklister"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2495
    :try_start_d2a
    new-instance v0, Lcom/android/server/CertBlacklister;

    invoke-direct {v0, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_d2f
    .catchall {:try_start_d2a .. :try_end_d2f} :catchall_d30

    .line 2498
    goto :goto_d37

    .line 2496
    :catchall_d30
    move-exception v0

    .line 2497
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting CertBlacklister"

    invoke-direct {v6, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2499
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_d37
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2503
    const-string v0, "StartEmergencyAffordanceService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2504
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2505
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2508
    const-string/jumbo v0, "startBlobStoreManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2509
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.blob.BlobStoreManagerService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2510
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2513
    const-string v0, "StartDreamManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2514
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2515
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2517
    const-string v0, "AddGraphicsStatsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2518
    const-string/jumbo v0, "graphicsstats"

    new-instance v2, Landroid/graphics/GraphicsStatsService;

    invoke-direct {v2, v4}, Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2520
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2522
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_d91

    .line 2523
    const-string v0, "AddCoverageService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2524
    const-string v0, "coverage"

    new-instance v2, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v2}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2525
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2528
    :cond_d91
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.print"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_daa

    .line 2529
    const-string v0, "StartPrintManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2530
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.print.PrintManagerService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2531
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2534
    :cond_daa
    const-string v0, "StartAttestationVerificationService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2535
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2536
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2538
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.companion_device_setup"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_de1

    .line 2539
    const-string v0, "StartCompanionDeviceManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2540
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2541
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2544
    const-string v0, "StartVirtualDeviceManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2545
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.companion.virtual.VirtualDeviceManagerService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2546
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2549
    :cond_de1
    const-string v0, "StartRestrictionManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2550
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2551
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2553
    const-string v0, "StartMediaSessionService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2554
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.media.MediaSessionService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2555
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2557
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e18

    .line 2558
    const-string v0, "StartHdmiControlService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2559
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2560
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2563
    :cond_e18
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.live_tv"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e2c

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.leanback"

    .line 2564
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e3b

    .line 2565
    :cond_e2c
    const-string v0, "StartTvInteractiveAppManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2566
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2567
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2570
    :cond_e3b
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.live_tv"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e4f

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.leanback"

    .line 2571
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e5e

    .line 2572
    :cond_e4f
    const-string v0, "StartTvInputManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2573
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2574
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2577
    :cond_e5e
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.tv.tuner"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e77

    .line 2578
    const-string v0, "StartTunerResourceManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2579
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2580
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2583
    :cond_e77
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.picture_in_picture"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e90

    .line 2584
    const-string v0, "StartMediaResourceMonitor"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2585
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.media.MediaResourceMonitorService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2586
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2589
    :cond_e90
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.leanback"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ea9

    .line 2590
    const-string v0, "StartTvRemoteService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2591
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2592
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2595
    :cond_ea9
    const-string v0, "StartMediaRouterService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2597
    :try_start_eae
    new-instance v0, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v0, v4}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_eb3
    .catchall {:try_start_eae .. :try_end_eb3} :catchall_ec1

    move-object v2, v0

    .line 2598
    .end local v33    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v2, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_eb4
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_eba
    .catchall {:try_start_eb4 .. :try_end_eba} :catchall_ebd

    .line 2601
    move-object/from16 v33, v2

    goto :goto_ec8

    .line 2599
    :catchall_ebd
    move-exception v0

    move-object/from16 v33, v2

    goto :goto_ec2

    .end local v2    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v33    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catchall_ec1
    move-exception v0

    .line 2600
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_ec2
    const-string/jumbo v2, "starting MediaRouterService"

    invoke-direct {v6, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2602
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ec8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2604
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.biometrics.face"

    .line 2605
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 2606
    .local v2, "hasFeatureFace":Z
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.biometrics.iris"

    .line 2607
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 2608
    .local v3, "hasFeatureIris":Z
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    move/from16 v40, v1

    .end local v1    # "startRulesManagerService":Z
    .local v40, "startRulesManagerService":Z
    const-string v1, "android.hardware.fingerprint"

    .line 2609
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 2611
    .local v1, "hasFeatureFingerprint":Z
    if-eqz v2, :cond_efc

    .line 2612
    const-string v0, "StartFaceSensor"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2613
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v41, v2

    .end local v2    # "hasFeatureFace":Z
    .local v41, "hasFeatureFace":Z
    const-class v2, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 2614
    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 2615
    .local v0, "faceService":Lcom/android/server/biometrics/sensors/face/FaceService;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_efe

    .line 2611
    .end local v0    # "faceService":Lcom/android/server/biometrics/sensors/face/FaceService;
    .end local v41    # "hasFeatureFace":Z
    .restart local v2    # "hasFeatureFace":Z
    :cond_efc
    move/from16 v41, v2

    .line 2618
    .end local v2    # "hasFeatureFace":Z
    .restart local v41    # "hasFeatureFace":Z
    :goto_efe
    if-eqz v3, :cond_f0f

    .line 2619
    const-string v0, "StartIrisSensor"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2620
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2621
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2624
    :cond_f0f
    if-eqz v1, :cond_f23

    .line 2625
    const-string v0, "StartFingerprintSensor"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2626
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 2627
    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 2628
    .local v0, "fingerprintService":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2632
    .end local v0    # "fingerprintService":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
    :cond_f23
    const-string v0, "StartBiometricService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2633
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2634
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2636
    const-string v0, "StartAuthService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2637
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2638
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2640
    if-nez v30, :cond_f58

    .line 2643
    const-string v0, "StartDynamicCodeLoggingService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2645
    :try_start_f48
    invoke-static {v4}, Lcom/android/server/pm/DynamicCodeLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_f4b
    .catchall {:try_start_f48 .. :try_end_f4b} :catchall_f4c

    .line 2648
    goto :goto_f55

    .line 2646
    :catchall_f4c
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2647
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting DynamicCodeLoggingService"

    invoke-direct {v6, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2649
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_f55
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2652
    :cond_f58
    if-nez v30, :cond_f6e

    .line 2653
    const-string v0, "StartPruneInstantAppsJobService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2655
    :try_start_f5f
    invoke-static {v4}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_f62
    .catchall {:try_start_f5f .. :try_end_f62} :catchall_f63

    .line 2658
    goto :goto_f6b

    .line 2656
    :catchall_f63
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2657
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "StartPruneInstantAppsJobService"

    invoke-direct {v6, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2659
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_f6b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2663
    :cond_f6e
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2664
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2665
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2667
    const-string v0, "StartLauncherAppsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2668
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2669
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2671
    const-string v0, "StartCrossProfileAppsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2672
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2673
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2675
    const-string v0, "StartPeopleService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2676
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/people/PeopleService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2677
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2679
    const-string v0, "StartMediaMetricsManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2680
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2681
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v41, v8

    move-object/from16 v42, v11

    move-object/from16 v45, v13

    move-object/from16 v46, v14

    move-object/from16 v47, v15

    move-object/from16 v48, v16

    move-object/from16 v49, v17

    move-object/from16 v50, v18

    move-object/from16 v51, v20

    move-object/from16 v52, v21

    move-object/from16 v3, v22

    move-object/from16 v2, v23

    move-object/from16 v53, v33

    move-object/from16 v33, v7

    .line 2684
    .end local v1    # "hasFeatureFingerprint":Z
    .end local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v8    # "notification":Landroid/app/INotificationManager;
    .end local v11    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v13    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v14    # "vcnManagement":Lcom/android/server/VcnManagementService;
    .end local v15    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v16    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v17    # "serial":Lcom/android/server/SerialService;
    .end local v18    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v20    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .end local v21    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .end local v22    # "wigigP2pService":Ljava/lang/Object;
    .end local v23    # "wigigService":Ljava/lang/Object;
    .end local v40    # "startRulesManagerService":Z
    .local v2, "wigigService":Ljava/lang/Object;
    .local v3, "wigigP2pService":Ljava/lang/Object;
    .local v33, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v41, "notification":Landroid/app/INotificationManager;
    .local v42, "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v45, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v46, "vcnManagement":Lcom/android/server/VcnManagementService;
    .local v47, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v48, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v49, "serial":Lcom/android/server/SerialService;
    .local v50, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v51, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v52, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v53, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_fd5
    const-string v0, "StartMediaProjectionManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2685
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2686
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2688
    if-eqz v30, :cond_1051

    .line 2690
    const-string v0, "StartWearPowerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2691
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.clockwork.power.WearPowerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2692
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2694
    const-string v0, "StartHealthService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2695
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.google.android.clockwork.healthservices.HealthService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2696
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2698
    const-string v0, "StartWearConnectivityService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2699
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2700
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2702
    const-string v0, "StartWearDisplayService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2703
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2704
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2706
    const-string v0, "StartWearTimeService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2707
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2708
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2710
    if-eqz v27, :cond_1042

    .line 2711
    const-string v0, "StartWearLeftyService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2712
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2713
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2716
    :cond_1042
    const-string v0, "StartWearGlobalActionsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2717
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.clockwork.globalactions.GlobalActionsService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2718
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2721
    :cond_1051
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.slices_disabled"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_106a

    .line 2722
    const-string v0, "StartSliceManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2723
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.slice.SliceManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2724
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2727
    :cond_106a
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1085

    .line 2728
    const-string v0, "StartIoTSystemService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2729
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.things.server.IoTSystemService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2730
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2734
    :cond_1085
    const-string v0, "StartStatsCompanion"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2735
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.stats.StatsCompanion$Lifecycle"

    const-string v7, "/apex/com.android.os.statsd/javalib/service-statsd.jar"

    invoke-virtual {v0, v1, v7}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2737
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2740
    const-string v0, "StartRebootReadinessManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2741
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

    const-string v7, "/apex/com.android.scheduling/javalib/service-scheduling.jar"

    invoke-virtual {v0, v1, v7}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2743
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2746
    const-string v0, "StartStatsPullAtomService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2747
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.stats.pull.StatsPullAtomService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2748
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2751
    const-string v0, "StatsBootstrapAtomService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2752
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.stats.bootstrap.StatsBootstrapAtomService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2753
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2756
    const-string v0, "StartIncidentCompanionService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2757
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2758
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2761
    const-string v0, "StarSdkSandboxManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2762
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2763
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2766
    const-string v0, "StartAdServicesManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2767
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.adservices.AdServicesManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2768
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2770
    if-eqz v12, :cond_10f9

    .line 2771
    iget-object v0, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 2774
    :cond_10f9
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_111a

    .line 2776
    const-string v0, "StartMmsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2777
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/MmsServiceBroker;

    .line 2778
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v54, v19

    goto :goto_111c

    .line 2774
    :cond_111a
    move-object/from16 v54, v19

    .line 2781
    .end local v19    # "mmsService":Lcom/android/server/MmsServiceBroker;
    .local v54, "mmsService":Lcom/android/server/MmsServiceBroker;
    :goto_111c
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.autofill"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1135

    .line 2782
    const-string v0, "StartAutoFillService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2783
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2784
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2788
    :cond_1135
    const v0, 0x1040263

    invoke-direct {v6, v4, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_114e

    .line 2789
    const-string v0, "StartTranslationManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2790
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.translation.TranslationManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2791
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_1155

    .line 2793
    :cond_114e
    const-string v0, "SystemServer"

    const-string v1, "TranslationService not defined by OEM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    :goto_1155
    const-string v0, "StartClipboardService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2798
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2799
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2801
    const-string v0, "AppServiceManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2802
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2803
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2806
    const-string/jumbo v0, "startTracingServiceProxy"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2807
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/tracing/TracingServiceProxy;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2808
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2812
    const-string v0, "MakeLockSettingsServiceReady"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2813
    if-eqz v48, :cond_1197

    .line 2815
    :try_start_118a
    invoke-interface/range {v48 .. v48}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_118d
    .catchall {:try_start_118a .. :try_end_118d} :catchall_118e

    .line 2818
    goto :goto_1197

    .line 2816
    :catchall_118e
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 2817
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "making Lock Settings Service ready"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2820
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1197
    :goto_1197
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2823
    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2824
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v1, 0x1e0

    invoke-virtual {v0, v5, v1}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2825
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2827
    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2828
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v5, v1}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2829
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2833
    if-eqz v29, :cond_120c

    .line 2835
    :try_start_11ba
    const-string v0, "SystemServer"

    const-string v7, "calling onBootPhase for Wigig Services"

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2837
    .local v0, "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v7, "onBootPhase"

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v8, v11, v13

    invoke-virtual {v0, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 2838
    .local v7, "m":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v13, 0x0

    aput-object v8, v11, v13

    invoke-virtual {v7, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2841
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 2842
    .local v8, "wigigClass":Ljava/lang/Class;
    const-string/jumbo v11, "onBootPhase"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v13, v14, v15

    invoke-virtual {v8, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v7, v11

    .line 2843
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v1, 0x0

    aput-object v13, v11, v1

    invoke-virtual {v7, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1204
    .catchall {:try_start_11ba .. :try_end_1204} :catchall_1206

    .line 2847
    nop

    .end local v0    # "wigigP2pClass":Ljava/lang/Class;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v8    # "wigigClass":Ljava/lang/Class;
    goto :goto_120c

    .line 2845
    :catchall_1206
    move-exception v0

    .line 2846
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Wigig services ready"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2850
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_120c
    :goto_120c
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2852
    :try_start_1211
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_1214
    .catchall {:try_start_1211 .. :try_end_1214} :catchall_1215

    .line 2855
    goto :goto_121e

    .line 2853
    :catchall_1215
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 2854
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "making Window Manager Service ready"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2856
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_121e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2859
    invoke-static {}, Lcom/android/server/wm/MiuiMagicPointerServiceStubHead;->isMiuiMagicPointerEnable()Z

    move-result v0

    if-eqz v0, :cond_123e

    .line 2860
    const-string v0, "MakeMiuiMagicPointerServiceReady"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2862
    :try_start_122c
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemServerStub;->magicPointerManagerServiceSystemReady()V
    :try_end_1233
    .catchall {:try_start_122c .. :try_end_1233} :catchall_1234

    .line 2865
    goto :goto_123b

    .line 2863
    :catchall_1234
    move-exception v0

    .line 2864
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "making Miui Magic Pointer Service ready"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2866
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_123b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2871
    :cond_123e
    const-class v1, Lcom/android/server/SystemService;

    monitor-enter v1

    .line 2872
    :try_start_1241
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_1243
    .catchall {:try_start_1241 .. :try_end_1243} :catchall_1419

    if-eqz v0, :cond_125d

    .line 2873
    :try_start_1245
    iget-object v7, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->schedulePendingSystemServerWtfs(Ljava/util/LinkedList;)V

    .line 2874
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_124d
    .catchall {:try_start_1245 .. :try_end_124d} :catchall_124e

    goto :goto_125d

    .line 2876
    :catchall_124e
    move-exception v0

    move-object/from16 v57, v2

    move-object/from16 v58, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v36, v9

    move-object/from16 v55, v10

    move/from16 v35, v12

    goto/16 :goto_1426

    :cond_125d
    :goto_125d
    :try_start_125d
    monitor-exit v1
    :try_end_125e
    .catchall {:try_start_125d .. :try_end_125e} :catchall_1419

    .line 2878
    if-eqz v12, :cond_1265

    .line 2879
    iget-object v0, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 2885
    :cond_1265
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v15

    .line 2886
    .local v15, "config":Landroid/content/res/Configuration;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v1, v0

    .line 2887
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2888
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2891
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v17

    .line 2892
    .local v17, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_128b

    .line 2893
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 2897
    :cond_128b
    const-string v0, "StartPermissionPolicyService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2898
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2899
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2901
    const-string v0, "MakePackageManagerServiceReady"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2902
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 2903
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2905
    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2908
    :try_start_12ac
    iget-object v0, v6, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    iget-boolean v7, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v0, v12, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_12b3
    .catchall {:try_start_12ac .. :try_end_12b3} :catchall_12b4

    .line 2911
    goto :goto_12bb

    .line 2909
    :catchall_12b4
    move-exception v0

    .line 2910
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Display Manager Service ready"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2912
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_12bb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2914
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 2917
    const-string v0, "StartDeviceSpecificServices"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2918
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x1070044

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 2920
    .local v14, "classes":[Ljava/lang/String;
    array-length v7, v14

    const/4 v8, 0x0

    :goto_12d7
    if-ge v8, v7, :cond_131b

    aget-object v11, v14, v8

    .line 2921
    .local v11, "className":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "StartDeviceSpecificServices "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2923
    :try_start_12f1
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_12f6
    .catchall {:try_start_12f1 .. :try_end_12f6} :catchall_12f9

    .line 2926
    move-object/from16 v18, v1

    goto :goto_1313

    .line 2924
    :catchall_12f9
    move-exception v0

    .line 2925
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v1

    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .local v18, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v1, "starting "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2927
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1313
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2920
    .end local v11    # "className":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v18

    goto :goto_12d7

    .line 2929
    .end local v18    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v1    # "metrics":Landroid/util/DisplayMetrics;
    :cond_131b
    move-object/from16 v18, v1

    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v18    # "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2931
    const-string v0, "GameManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2932
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.app.GameManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2933
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2935
    const-string v0, "ArtManagerLocal"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2936
    const-class v0, Lcom/android/server/art/ArtManagerLocal;

    new-instance v1, Lcom/android/server/art/ArtManagerLocal;

    invoke-direct {v1}, Lcom/android/server/art/ArtManagerLocal;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2937
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2945
    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2946
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v1, 0x208

    invoke-virtual {v0, v5, v1}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2947
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2949
    const-string v0, "StartSafetyCenterService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2950
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.safetycenter.SafetyCenterService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2951
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2953
    const-string v0, "AppSearchModule"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2954
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.appsearch.AppSearchModule$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2955
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2957
    const-string/jumbo v0, "ro.config.isolated_compilation_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1387

    .line 2958
    const-string v0, "IsolatedCompilationService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2959
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.compos.IsolatedCompilationService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2960
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2963
    :cond_1387
    const-string v0, "StartMediaCommunicationService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2964
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.media.MediaCommunicationService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2965
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2967
    const-string v0, "AppCompatOverridesService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2968
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.compat.overrides.AppCompatOverridesService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2969
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2972
    move-object/from16 v7, v44

    .line 2973
    .local v7, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v8, v47

    .line 2974
    .local v8, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v11, v42

    .line 2975
    .local v11, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move/from16 v35, v12

    .end local v12    # "safeMode":Z
    .local v35, "safeMode":Z
    move-object/from16 v12, v50

    .line 2976
    .local v12, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object v13, v9

    .line 2977
    .local v13, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v19, v14

    .end local v14    # "classes":[Ljava/lang/String;
    .local v19, "classes":[Ljava/lang/String;
    move-object/from16 v14, v37

    .line 2978
    .local v14, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v15

    .end local v15    # "config":Landroid/content/res/Configuration;
    .local v20, "config":Landroid/content/res/Configuration;
    move-object/from16 v15, v53

    .line 2979
    .local v15, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v16, v54

    .line 2980
    .local v16, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v36, v9

    .end local v9    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v36, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v9, v45

    .line 2981
    .local v9, "vpnManagerF":Lcom/android/server/VpnManagerService;
    move-object/from16 v55, v10

    .end local v10    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v55, "wm":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v10, v46

    .line 2982
    .local v10, "vcnManagementF":Lcom/android/server/VcnManagementService;
    move-object/from16 v1, v55

    .line 2983
    .local v1, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    const-string v0, "connectivity"

    .line 2984
    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/net/ConnectivityManager;

    .line 2991
    .local v21, "connectivityF":Landroid/net/ConnectivityManager;
    iget-object v0, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;

    move-object/from16 v56, v1

    .end local v1    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .local v56, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    move-object v1, v0

    move-object/from16 v57, v2

    .end local v2    # "wigigService":Ljava/lang/Object;
    .local v57, "wigigService":Ljava/lang/Object;
    move-object/from16 v2, p0

    move-object/from16 v58, v3

    .end local v3    # "wigigP2pService":Ljava/lang/Object;
    .local v58, "wigigP2pService":Ljava/lang/Object;
    move-object/from16 v3, p1

    move-object/from16 v59, v4

    .end local v4    # "context":Landroid/content/Context;
    .local v59, "context":Landroid/content/Context;
    move-object/from16 v4, v43

    move/from16 v5, v35

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v16}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/net/ConnectivityManager;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    move-object/from16 v1, v22

    invoke-virtual {v1, v0, v3}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3241
    const-string v0, "StartSystemUI"

    invoke-virtual {v3, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3243
    move-object/from16 v1, v56

    move-object/from16 v4, v59

    .end local v56    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .end local v59    # "context":Landroid/content/Context;
    .restart local v1    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .restart local v4    # "context":Landroid/content/Context;
    :try_start_13f8
    invoke-static {v4, v1}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_13fb
    .catchall {:try_start_13f8 .. :try_end_13fb} :catchall_13fe

    .line 3246
    move-object/from16 v5, p0

    goto :goto_1409

    .line 3244
    :catchall_13fe
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 3245
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting System UI"

    move-object/from16 v5, p0

    invoke-direct {v5, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3247
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1409
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3250
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    iget-object v2, v5, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServerStub;->addCameraCoveredManagerService(Landroid/content/Context;)V

    .line 3252
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3253
    return-void

    .line 2876
    .end local v1    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .end local v7    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v8    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v13    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v14    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v15    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v16    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v17    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v18    # "metrics":Landroid/util/DisplayMetrics;
    .end local v19    # "classes":[Ljava/lang/String;
    .end local v20    # "config":Landroid/content/res/Configuration;
    .end local v21    # "connectivityF":Landroid/net/ConnectivityManager;
    .end local v35    # "safeMode":Z
    .end local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v55    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v57    # "wigigService":Ljava/lang/Object;
    .end local v58    # "wigigP2pService":Ljava/lang/Object;
    .restart local v2    # "wigigService":Ljava/lang/Object;
    .restart local v3    # "wigigP2pService":Ljava/lang/Object;
    .local v9, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v10, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v12, "safeMode":Z
    :catchall_1419
    move-exception v0

    move-object/from16 v57, v2

    move-object/from16 v58, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v36, v9

    move-object/from16 v55, v10

    move/from16 v35, v12

    .end local v2    # "wigigService":Ljava/lang/Object;
    .end local v3    # "wigigP2pService":Ljava/lang/Object;
    .end local v9    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v10    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v12    # "safeMode":Z
    .restart local v35    # "safeMode":Z
    .restart local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v55    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v57    # "wigigService":Ljava/lang/Object;
    .restart local v58    # "wigigP2pService":Ljava/lang/Object;
    :goto_1426
    :try_start_1426
    monitor-exit v1
    :try_end_1427
    .catchall {:try_start_1426 .. :try_end_1427} :catchall_1428

    throw v0

    :catchall_1428
    move-exception v0

    goto :goto_1426

    .line 1780
    .end local v33    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v35    # "safeMode":Z
    .end local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v39    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v41    # "notification":Landroid/app/INotificationManager;
    .end local v42    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v43    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v44    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v45    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v46    # "vcnManagement":Lcom/android/server/VcnManagementService;
    .end local v47    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v48    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v49    # "serial":Lcom/android/server/SerialService;
    .end local v50    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v51    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .end local v52    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .end local v53    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v54    # "mmsService":Lcom/android/server/MmsServiceBroker;
    .end local v55    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v57    # "wigigService":Ljava/lang/Object;
    .end local v58    # "wigigP2pService":Ljava/lang/Object;
    .local v2, "storageManager":Landroid/os/storage/IStorageManager;
    .local v3, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v9    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v10    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v13, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v14, "vcnManagement":Lcom/android/server/VcnManagementService;
    .local v15, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v17, "serial":Lcom/android/server/SerialService;
    .local v18, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v19, "mmsService":Lcom/android/server/MmsServiceBroker;
    .local v20, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v21, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .restart local v22    # "wigigP2pService":Ljava/lang/Object;
    .restart local v23    # "wigigService":Ljava/lang/Object;
    :catchall_142a
    move-exception v0

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v36, v9

    move-object/from16 v55, v10

    move-object/from16 v9, v34

    move-object/from16 v7, v36

    move-object/from16 v8, v37

    move-object/from16 v1, v38

    move-object/from16 v16, v55

    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v9    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v10    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v40, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v55    # "wm":Lcom/android/server/wm/WindowManagerService;
    goto/16 :goto_149f

    .end local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v55    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v10    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v39, "inputManager":Lcom/android/server/input/InputManagerService;
    :catchall_143f
    move-exception v0

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v55, v10

    move-object/from16 v36, v39

    move-object/from16 v9, v34

    move-object/from16 v7, v36

    move-object/from16 v8, v37

    move-object/from16 v1, v38

    move-object/from16 v16, v55

    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v10    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v39    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v55    # "wm":Lcom/android/server/wm/WindowManagerService;
    goto/16 :goto_149f

    .end local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v55    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v16, "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v39    # "inputManager":Lcom/android/server/input/InputManagerService;
    :catchall_1454
    move-exception v0

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v36, v39

    move-object/from16 v9, v34

    move-object/from16 v7, v36

    move-object/from16 v8, v37

    move-object/from16 v1, v38

    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v39    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    goto :goto_149f

    .end local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v37    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v38    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v1, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v11, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v12, "inputManager":Lcom/android/server/input/InputManagerService;
    :catchall_1464
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v37, v11

    move-object/from16 v36, v12

    move-object/from16 v9, v34

    move-object/from16 v7, v36

    move-object/from16 v8, v37

    .end local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v12    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v37    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v38    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    goto :goto_149f

    .end local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v37    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v38    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v7, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catchall_1476
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v37, v11

    move-object/from16 v9, v34

    move-object/from16 v8, v37

    .end local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v38    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    goto :goto_149f

    .end local v34    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v37    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v38    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v9, "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catchall_1484
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v37, v11

    move-object/from16 v8, v37

    .end local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v38    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    goto :goto_149f

    .end local v37    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v38    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catchall_1490
    move-exception v0

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v37, v11

    move-object/from16 v8, v37

    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    goto :goto_149f

    .end local v37    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v8, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catchall_149a
    move-exception v0

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    .line 1781
    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_149f
    const-string v6, "System"

    const-string v10, "******************************************"

    invoke-static {v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    const-string v6, "System"

    const-string v10, "************ Failure starting core service"

    invoke-static {v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    throw v0
.end method

.method private startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3358
    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3359
    const-string v0, "SystemServer"

    const-string v1, "RotationResolverService is not configured on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    return-void

    .line 3363
    :cond_e
    const-string v0, "StartRotationResolverService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3364
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3365
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3367
    return-void
.end method

.method private startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3292
    const v0, 0x1040261

    invoke-direct {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 3293
    const-string v0, "SystemServer"

    const-string v1, "SystemCaptionsManagerService disabled because resource is not overlaid"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    return-void

    .line 3297
    :cond_11
    const-string v0, "StartSystemCaptionsManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3298
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.systemcaptions.SystemCaptionsManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3299
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3300
    return-void
.end method

.method private static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 3376
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3377
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3378
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3379
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3381
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 3382
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 3383
    return-void
.end method

.method private startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3304
    const-string v0, "StartTextToSpeechManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3305
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.texttospeech.TextToSpeechManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3306
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3307
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 741
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Runtime restart: %b\n"

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 742
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Start count: %d\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 743
    const-string v0, "Runtime start-up time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 744
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 745
    const-string v0, "Runtime start-elapsed time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 746
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 747
    return-void
.end method

.method public getDumpableName()Ljava/lang/String;
    .registers 2

    .line 736
    const-class v0, Lcom/android/server/SystemServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$startOtherServices$3$com-android-server-SystemServer()V
    .registers 4

    .line 3018
    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 3020
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3021
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 3022
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 3023
    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 3024
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3025
    return-void
.end method

.method synthetic lambda$startOtherServices$5$com-android-server-SystemServer(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/net/ConnectivityManager;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 30
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "dpms"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .param p3, "safeMode"    # Z
    .param p4, "connectivityF"    # Landroid/net/ConnectivityManager;
    .param p5, "networkManagementF"    # Lcom/android/server/NetworkManagementService;
    .param p6, "networkPolicyF"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p7, "vpnManagerF"    # Lcom/android/server/VpnManagerService;
    .param p8, "vcnManagementF"    # Lcom/android/server/VcnManagementService;
    .param p9, "countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p10, "networkTimeUpdaterF"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p11, "inputManagerF"    # Lcom/android/server/input/InputManagerService;
    .param p12, "telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p13, "mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p14, "mmsServiceF"    # Lcom/android/server/MmsServiceBroker;

    .line 2992
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    const-string v0, "SystemServer"

    const-string v5, "Making services ready"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2994
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x226

    invoke-virtual {v0, v2, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2995
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2996
    const-string v0, "StartObservingNativeCrashes"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2998
    :try_start_22
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_28

    .line 3001
    goto :goto_2f

    .line 2999
    :catchall_28
    move-exception v0

    .line 3000
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "observing native crashes"

    invoke-direct {p0, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3002
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3004
    const-string v0, "RegisterAppOpsPolicy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3006
    :try_start_37
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v5, Lcom/android/server/policy/AppOpsPolicy;

    iget-object v6, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/policy/AppOpsPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService;->setAppOpsPolicy(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_44

    .line 3009
    goto :goto_4b

    .line 3007
    :catchall_44
    move-exception v0

    .line 3008
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "registering app ops policy"

    invoke-direct {p0, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3010
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3014
    const-string v5, "WebViewFactoryPreparation"

    .line 3015
    .local v5, "WEBVIEW_PREPARATION":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3016
    .local v0, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-boolean v6, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    const-string v7, "WebViewFactoryPreparation"

    if-nez v6, :cond_66

    iget-object v6, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    if-eqz v6, :cond_66

    .line 3017
    new-instance v6, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v6, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v6, v0

    goto :goto_67

    .line 3028
    :cond_66
    move-object v6, v0

    .end local v0    # "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .local v6, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_67
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3029
    const-string v8, "android.hardware.type.automotive"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    .line 3030
    .local v8, "isAutomotive":Z
    if-eqz v8, :cond_9d

    .line 3031
    const-string v0, "StartCarServiceHelperService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3032
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3033
    const-string v9, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v0

    .line 3034
    .local v0, "cshs":Lcom/android/server/SystemService;
    instance-of v9, v0, Landroid/util/Dumpable;

    if-eqz v9, :cond_8a

    .line 3035
    iget-object v9, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    move-object v10, v0

    check-cast v10, Landroid/util/Dumpable;

    invoke-static {v9, v10}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 3037
    :cond_8a
    instance-of v9, v0, Landroid/app/admin/DevicePolicySafetyChecker;

    if-eqz v9, :cond_97

    .line 3038
    move-object v9, v0

    check-cast v9, Landroid/app/admin/DevicePolicySafetyChecker;

    move-object/from16 v10, p2

    invoke-virtual {v10, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->setDevicePolicySafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)V

    goto :goto_99

    .line 3037
    :cond_97
    move-object/from16 v10, p2

    .line 3040
    :goto_99
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_9f

    .line 3030
    .end local v0    # "cshs":Lcom/android/server/SystemService;
    :cond_9d
    move-object/from16 v10, p2

    .line 3048
    :goto_9f
    if-eqz p3, :cond_b6

    .line 3049
    const-string v0, "EnableAirplaneModeInSafeMode"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3051
    const/4 v0, 0x1

    :try_start_a7
    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_ab

    .line 3054
    goto :goto_b3

    .line 3052
    :catchall_ab
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 3053
    .local v0, "e":Ljava/lang/Throwable;
    const-string v9, "enabling Airplane Mode during Safe Mode bootup"

    invoke-direct {p0, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3055
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3057
    :cond_b6
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3059
    if-eqz p5, :cond_cb

    .line 3060
    :try_start_bd
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_c1

    goto :goto_cb

    .line 3062
    :catchall_c1
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 3063
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Network Managment Service ready"

    invoke-direct {p0, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_cc

    .line 3064
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_cb
    :goto_cb
    nop

    .line 3065
    :goto_cc
    const/4 v0, 0x0

    .line 3066
    .local v0, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    if-eqz v4, :cond_d6

    .line 3067
    nop

    .line 3068
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    move-object v9, v0

    goto :goto_d7

    .line 3066
    :cond_d6
    move-object v9, v0

    .line 3070
    .end local v0    # "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    .local v9, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    :goto_d7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3071
    const-string v0, "MakeConnectivityServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3073
    if-eqz v3, :cond_ef

    .line 3074
    :try_start_e1
    invoke-virtual/range {p4 .. p4}, Landroid/net/ConnectivityManager;->systemReady()V
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_e5

    goto :goto_ef

    .line 3076
    :catchall_e5
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 3077
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "making Connectivity Service ready"

    invoke-direct {p0, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f0

    .line 3078
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_ef
    :goto_ef
    nop

    .line 3079
    :goto_f0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3080
    const-string v0, "MakeVpnManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3082
    if-eqz p7, :cond_108

    .line 3083
    :try_start_fa
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/VpnManagerService;->systemReady()V
    :try_end_fd
    .catchall {:try_start_fa .. :try_end_fd} :catchall_fe

    goto :goto_108

    .line 3085
    :catchall_fe
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 3086
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "making VpnManagerService ready"

    invoke-direct {p0, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_109

    .line 3087
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_108
    :goto_108
    nop

    .line 3088
    :goto_109
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3089
    const-string v0, "MakeVcnManagementServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3091
    if-eqz p8, :cond_121

    .line 3092
    :try_start_113
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/VcnManagementService;->systemReady()V
    :try_end_116
    .catchall {:try_start_113 .. :try_end_116} :catchall_117

    goto :goto_121

    .line 3094
    :catchall_117
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 3095
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "making VcnManagementService ready"

    invoke-direct {p0, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_122

    .line 3096
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_121
    :goto_121
    nop

    .line 3097
    :goto_122
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3098
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3100
    if-eqz v4, :cond_13a

    .line 3101
    :try_start_12c
    invoke-virtual {v4, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_130

    goto :goto_13a

    .line 3103
    :catchall_130
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 3104
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "making Network Policy Service ready"

    invoke-direct {p0, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13b

    .line 3105
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_13a
    :goto_13a
    nop

    .line 3106
    :goto_13b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3109
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 3113
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3115
    if-eqz v6, :cond_14d

    .line 3116
    invoke-static {v6, v7}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 3118
    :cond_14d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x258

    invoke-virtual {v0, v2, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3119
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3121
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-eqz v0, :cond_173

    if-nez v8, :cond_173

    .line 3123
    const-string v0, "BootUserInitializer"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3124
    new-instance v0, Lcom/android/server/BootUserInitializer;

    iget-object v7, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v1, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v7, v11}, Lcom/android/server/BootUserInitializer;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v2}, Lcom/android/server/BootUserInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3125
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3128
    :cond_173
    const-string v0, "StartNetworkStack"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3135
    :try_start_178
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->start()V
    :try_end_17f
    .catchall {:try_start_178 .. :try_end_17f} :catchall_180

    .line 3138
    goto :goto_187

    .line 3136
    :catchall_180
    move-exception v0

    .line 3137
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Network Stack"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3139
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_187
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3141
    const-string v0, "StartTethering"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3144
    :try_start_18f
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    const-string v7, "android.net.ITetheringConnector"

    const-string v11, "android.permission.MAINLINE_NETWORK_STACK"

    new-instance v12, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    invoke-direct {v12}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v7, v11, v12}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    :try_end_19f
    .catchall {:try_start_18f .. :try_end_19f} :catchall_1a0

    .line 3153
    goto :goto_1a7

    .line 3151
    :catchall_1a0
    move-exception v0

    .line 3152
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Tethering"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3154
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1a7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3156
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3158
    if-eqz p9, :cond_1be

    .line 3159
    :try_start_1b1
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_1b4
    .catchall {:try_start_1b1 .. :try_end_1b4} :catchall_1b5

    goto :goto_1be

    .line 3161
    :catchall_1b5
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3162
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying CountryDetectorService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1bf

    .line 3163
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1be
    :goto_1be
    nop

    .line 3164
    :goto_1bf
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3165
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3167
    if-eqz p10, :cond_1d6

    .line 3168
    :try_start_1c9
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_1cc
    .catchall {:try_start_1c9 .. :try_end_1cc} :catchall_1cd

    goto :goto_1d6

    .line 3170
    :catchall_1cd
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3171
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying NetworkTimeService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d7

    .line 3172
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1d6
    :goto_1d6
    nop

    .line 3173
    :goto_1d7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3174
    const-string v0, "MakeInputManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3177
    if-eqz p11, :cond_1ee

    .line 3178
    :try_start_1e1
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_1e4
    .catchall {:try_start_1e1 .. :try_end_1e4} :catchall_1e5

    goto :goto_1ee

    .line 3180
    :catchall_1e5
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3181
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying InputManagerService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1ef

    .line 3182
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1ee
    :goto_1ee
    nop

    .line 3183
    :goto_1ef
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3184
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3186
    if-eqz p12, :cond_206

    .line 3187
    :try_start_1f9
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_1fc
    .catchall {:try_start_1f9 .. :try_end_1fc} :catchall_1fd

    goto :goto_206

    .line 3189
    :catchall_1fd
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3190
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying TelephonyRegistry running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_207

    .line 3191
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_206
    :goto_206
    nop

    .line 3192
    :goto_207
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3193
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3195
    if-eqz p13, :cond_21e

    .line 3196
    :try_start_211
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_214
    .catchall {:try_start_211 .. :try_end_214} :catchall_215

    goto :goto_21e

    .line 3198
    :catchall_215
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3199
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying MediaRouterService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21f

    .line 3200
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_21e
    :goto_21e
    nop

    .line 3201
    :goto_21f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3202
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_244

    .line 3203
    const-string v0, "MakeMmsServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3205
    if-eqz p14, :cond_240

    :try_start_233
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_236
    .catchall {:try_start_233 .. :try_end_236} :catchall_237

    goto :goto_240

    .line 3206
    :catchall_237
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3207
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying MmsService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_241

    .line 3208
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_240
    :goto_240
    nop

    .line 3209
    :goto_241
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3212
    :cond_244
    const-string v0, "IncidentDaemonReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3216
    :try_start_249
    const-string/jumbo v0, "incident"

    .line 3217
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3216
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    .line 3218
    .local v0, "incident":Landroid/os/IIncidentManager;
    if-eqz v0, :cond_259

    .line 3219
    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_259
    .catchall {:try_start_249 .. :try_end_259} :catchall_25a

    .line 3223
    .end local v0    # "incident":Landroid/os/IIncidentManager;
    :cond_259
    goto :goto_260

    .line 3221
    :catchall_25a
    move-exception v0

    .line 3222
    .local v0, "e":Ljava/lang/Throwable;
    const-string v7, "Notifying incident daemon running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3224
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_260
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3226
    iget-wide v11, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-eqz v0, :cond_278

    .line 3227
    const-string v0, "MakeIncrementalServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3228
    iget-wide v11, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {v11, v12}, Lcom/android/server/SystemServer;->setIncrementalServiceSystemReady(J)V

    .line 3229
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3232
    :cond_278
    const-string v0, "OdsignStatsLogger"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3234
    :try_start_27d
    invoke-static {}, Lcom/android/server/pm/dex/OdsignStatsLogger;->triggerStatsWrite()V
    :try_end_280
    .catchall {:try_start_27d .. :try_end_280} :catchall_281

    .line 3237
    goto :goto_289

    .line 3235
    :catchall_281
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3236
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Triggering OdsignStatsLogger"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3238
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_289
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3239
    return-void
.end method
