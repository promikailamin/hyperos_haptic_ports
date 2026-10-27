.class public final Landroid/app/SystemServiceRegistry;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistry$StaticServiceFetcher;,
        Landroid/app/SystemServiceRegistry$CachedServiceFetcher;,
        Landroid/app/SystemServiceRegistry$ServiceFetcher;,
        Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;,
        Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;,
        Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;,
        Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;
    }
.end annotation


# static fields
.field private static final blacklist SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist SYSTEM_SERVICE_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SystemServiceRegistry"

.field public static blacklist sEnableServiceNotFoundWtf:Z

.field private static volatile blacklist sInitializing:Z

.field private static blacklist sServiceCacheSize:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsServiceCacheSize()I
    .registers 1

    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsServiceCacheSize(I)V
    .registers 1

    sput p0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 264
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 268
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    .line 270
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    .line 272
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    .line 283
    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$1;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$1;-><init>()V

    const-string v4, "accessibility"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 290
    const-class v2, Landroid/view/accessibility/CaptioningManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$2;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$2;-><init>()V

    const-string v4, "captioning"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 297
    const-class v2, Landroid/accounts/AccountManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$3;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$3;-><init>()V

    const-string v4, "account"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 306
    const-class v2, Landroid/app/ActivityManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$4;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$4;-><init>()V

    const-string v4, "activity"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 313
    const-class v2, Landroid/app/ActivityTaskManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$5;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$5;-><init>()V

    const-string v4, "activity_task"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 320
    const-class v2, Landroid/app/UriGrantsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$6;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$6;-><init>()V

    const-string/jumbo v4, "uri_grants"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 328
    const-class v2, Landroid/app/AlarmManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$7;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$7;-><init>()V

    const-string v4, "alarm"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 337
    const-class v2, Landroid/media/AudioManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$8;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$8;-><init>()V

    const-string v4, "audio"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 344
    const-class v2, Landroid/media/MediaRouter;

    new-instance v3, Landroid/app/SystemServiceRegistry$9;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$9;-><init>()V

    const-string/jumbo v4, "media_router"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 351
    const-class v2, Landroid/hardware/hdmi/HdmiControlManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$10;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$10;-><init>()V

    const-string v4, "hdmi_control"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 359
    const-class v2, Landroid/view/textclassifier/TextClassificationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$11;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$11;-><init>()V

    const-string/jumbo v4, "textclassification"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 366
    const-class v2, Landroid/graphics/fonts/FontManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$12;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$12;-><init>()V

    const-string v4, "font"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 374
    const-class v2, Landroid/content/ClipboardManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$13;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$13;-><init>()V

    const-string v4, "clipboard"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 385
    const-class v2, Landroid/text/ClipboardManager;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-class v1, Landroid/net/PacProxyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$14;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$14;-><init>()V

    const-string/jumbo v3, "pac_proxy"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 396
    const-class v1, Landroid/os/IBinder;

    new-instance v2, Landroid/app/SystemServiceRegistry$15;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$15;-><init>()V

    const-string/jumbo v3, "netd"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 403
    const-class v1, Landroid/net/TetheringManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$16;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$16;-><init>()V

    const-string/jumbo v3, "tethering"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 411
    const-class v1, Landroid/net/VpnManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$17;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$17;-><init>()V

    const-string/jumbo v3, "vpn_management"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 420
    const-class v1, Landroid/net/vcn/VcnManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$18;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$18;-><init>()V

    const-string/jumbo v3, "vcn_management"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 429
    const-class v1, Landroid/location/CountryDetector;

    new-instance v2, Landroid/app/SystemServiceRegistry$19;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$19;-><init>()V

    const-string v3, "country_detector"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 437
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$20;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$20;-><init>()V

    const-string v3, "device_policy"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 445
    const-class v1, Landroid/app/DownloadManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$21;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$21;-><init>()V

    const-string v3, "download"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 452
    const-class v1, Landroid/os/BatteryManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$22;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$22;-><init>()V

    const-string v3, "batterymanager"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 463
    const-class v1, Landroid/nfc/NfcManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$23;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$23;-><init>()V

    const-string/jumbo v3, "nfc"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 470
    const-class v1, Landroid/os/DropBoxManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$24;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$24;-><init>()V

    const-string v3, "dropbox"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 479
    const-class v1, Landroid/transparency/BinaryTransparencyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$25;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$25;-><init>()V

    const-string/jumbo v3, "transparency"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 490
    const-class v1, Landroid/hardware/input/InputManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$26;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$26;-><init>()V

    const-string v3, "input"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 497
    const-class v1, Landroid/hardware/display/DisplayManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$27;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$27;-><init>()V

    const-string v3, "display"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 504
    const-class v1, Landroid/hardware/display/ColorDisplayManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$28;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$28;-><init>()V

    const-string v3, "color_display"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 516
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$29;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$29;-><init>()V

    const-string v3, "input_method"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 523
    const-class v1, Landroid/view/textservice/TextServicesManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$30;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$30;-><init>()V

    const-string/jumbo v3, "textservices"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 531
    const-class v1, Landroid/app/KeyguardManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$31;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$31;-><init>()V

    const-string v3, "keyguard"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 538
    const-class v1, Landroid/view/LayoutInflater;

    new-instance v2, Landroid/app/SystemServiceRegistry$32;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$32;-><init>()V

    const-string v3, "layout_inflater"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 545
    const-class v1, Landroid/location/LocationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$33;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$33;-><init>()V

    const-string v3, "location"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 553
    const-class v1, Landroid/net/NetworkPolicyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$34;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$34;-><init>()V

    const-string/jumbo v3, "netpolicy"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 561
    const-class v1, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$35;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$35;-><init>()V

    const-string/jumbo v3, "notification"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 577
    const-class v1, Landroid/app/people/PeopleManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$36;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$36;-><init>()V

    const-string/jumbo v3, "people"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 584
    const-class v1, Landroid/os/PowerManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$37;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$37;-><init>()V

    const-string/jumbo v3, "power"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 596
    const-class v1, Landroid/os/PerformanceHintManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$38;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$38;-><init>()V

    const-string/jumbo v3, "performance_hint"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 604
    const-class v1, Landroid/os/RecoverySystem;

    new-instance v2, Landroid/app/SystemServiceRegistry$39;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$39;-><init>()V

    const-string/jumbo v3, "recovery"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 613
    const-class v1, Landroid/app/SearchManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$40;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$40;-><init>()V

    const-string/jumbo v3, "search"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 621
    const-class v1, Landroid/hardware/SensorManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$41;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$41;-><init>()V

    const-string/jumbo v3, "sensor"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 629
    const-class v1, Landroid/hardware/SensorPrivacyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$42;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$42;-><init>()V

    const-string/jumbo v3, "sensor_privacy"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 636
    const-class v1, Landroid/app/StatusBarManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$43;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$43;-><init>()V

    const-string/jumbo v3, "statusbar"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 643
    const-class v1, Landroid/os/storage/StorageManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$44;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$44;-><init>()V

    const-string/jumbo v3, "storage"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 650
    const-class v1, Landroid/app/usage/StorageStatsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$45;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$45;-><init>()V

    const-string/jumbo v3, "storagestats"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 659
    const-class v1, Landroid/os/SystemUpdateManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$46;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$46;-><init>()V

    const-string/jumbo v3, "system_update"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 670
    const-class v1, Landroid/os/SystemConfigManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$47;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$47;-><init>()V

    const-string/jumbo v3, "system_config"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 677
    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$48;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$48;-><init>()V

    const-string/jumbo v3, "telephony_registry"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 684
    const-class v1, Landroid/telecom/TelecomManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$49;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$49;-><init>()V

    const-string/jumbo v3, "telecom"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 691
    const-class v1, Landroid/telephony/MmsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$50;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$50;-><init>()V

    const-string/jumbo v3, "mms"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 698
    const-class v1, Landroid/app/UiModeManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$51;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$51;-><init>()V

    const-string/jumbo v3, "uimode"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 705
    const-class v1, Landroid/hardware/usb/UsbManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$52;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$52;-><init>()V

    const-string/jumbo v3, "usb"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 713
    const-class v1, Landroid/debug/AdbManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$53;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$53;-><init>()V

    const-string v3, "adb"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 722
    const-class v1, Landroid/hardware/SerialManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$54;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$54;-><init>()V

    const-string/jumbo v3, "serial"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 730
    const-class v1, Landroid/os/VibratorManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$55;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$55;-><init>()V

    const-string/jumbo v3, "vibrator_manager"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 737
    const-class v1, Landroid/os/Vibrator;

    new-instance v2, Landroid/app/SystemServiceRegistry$56;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$56;-><init>()V

    const-string/jumbo v3, "vibrator"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 744
    const-class v1, Landroid/app/WallpaperManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$57;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$57;-><init>()V

    const-string/jumbo v3, "wallpaper"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 771
    const-class v1, Landroid/net/lowpan/LowpanManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$58;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$58;-><init>()V

    const-string v3, "lowpan"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 780
    const-class v1, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    new-instance v2, Landroid/app/SystemServiceRegistry$59;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$59;-><init>()V

    const-string/jumbo v3, "wifinl80211"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 788
    const-class v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$60;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$60;-><init>()V

    const-string/jumbo v3, "window"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 795
    const-class v1, Landroid/os/UserManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$61;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$61;-><init>()V

    const-string/jumbo v3, "user"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 804
    const-class v1, Landroid/app/AppOpsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$62;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$62;-><init>()V

    const-string v3, "appops"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 813
    const-class v1, Landroid/hardware/camera2/CameraManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$63;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$63;-><init>()V

    const-string v3, "camera"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 820
    const-class v1, Landroid/content/pm/LauncherApps;

    new-instance v2, Landroid/app/SystemServiceRegistry$64;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$64;-><init>()V

    const-string v3, "launcherapps"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 827
    const-class v1, Landroid/content/RestrictionsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$65;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$65;-><init>()V

    const-string/jumbo v3, "restrictions"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 836
    const-class v1, Landroid/print/PrintManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$66;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$66;-><init>()V

    const-string/jumbo v3, "print"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 851
    const-class v1, Landroid/companion/CompanionDeviceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$67;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$67;-><init>()V

    const-string v3, "companiondevice"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 866
    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$68;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$68;-><init>()V

    const-string/jumbo v3, "virtualdevice"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 876
    const-class v1, Landroid/hardware/ConsumerIrManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$69;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$69;-><init>()V

    const-string v3, "consumer_ir"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 883
    const-class v1, Landroid/app/trust/TrustManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$70;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$70;-><init>()V

    const-string/jumbo v3, "trust"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 891
    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$71;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$71;-><init>()V

    const-string v3, "fingerprint"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 905
    const-class v1, Landroid/hardware/face/FaceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$72;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$72;-><init>()V

    const-string v3, "face"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 921
    const-class v1, Landroid/hardware/iris/IrisManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$73;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$73;-><init>()V

    const-string v3, "iris"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 933
    const-class v1, Landroid/hardware/biometrics/BiometricManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$74;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$74;-><init>()V

    const-string v3, "biometric"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 946
    const-class v1, Landroid/media/tv/interactive/TvInteractiveAppManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$75;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$75;-><init>()V

    const-string/jumbo v3, "tv_interactive_app"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 958
    const-class v1, Landroid/media/tv/TvInputManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$76;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$76;-><init>()V

    const-string/jumbo v3, "tv_input"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 967
    const-class v1, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$77;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$77;-><init>()V

    const-string/jumbo v3, "tv_tuner_resource_mgr"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 978
    const-class v1, Landroid/net/NetworkScoreManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$78;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$78;-><init>()V

    const-string/jumbo v3, "network_score"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 985
    const-class v1, Landroid/app/usage/UsageStatsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$79;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$79;-><init>()V

    const-string/jumbo v3, "usagestats"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 994
    const-class v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$80;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$80;-><init>()V

    const-string/jumbo v3, "persistent_data_block"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1010
    const-class v1, Landroid/service/oemlock/OemLockManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$81;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$81;-><init>()V

    const-string/jumbo v3, "oem_lock"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1024
    const-class v1, Landroid/media/projection/MediaProjectionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$82;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$82;-><init>()V

    const-string/jumbo v3, "media_projection"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1031
    const-class v1, Landroid/appwidget/AppWidgetManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$83;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$83;-><init>()V

    const-string v3, "appwidget"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1039
    const-class v1, Landroid/media/midi/MidiManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$84;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$84;-><init>()V

    const-string/jumbo v3, "midi"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1047
    const-class v1, Landroid/hardware/radio/RadioManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$85;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$85;-><init>()V

    const-string v3, "broadcastradio"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1054
    const-class v1, Landroid/os/HardwarePropertiesManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$86;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$86;-><init>()V

    const-string v3, "hardware_properties"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1064
    const-class v1, Landroid/media/soundtrigger/SoundTriggerManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$87;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$87;-><init>()V

    const-string/jumbo v3, "soundtrigger"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1072
    const-class v1, Landroid/content/pm/ShortcutManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$88;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$88;-><init>()V

    const-string/jumbo v3, "shortcut"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1080
    const-class v1, Landroid/content/om/OverlayManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$89;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$89;-><init>()V

    const-string/jumbo v3, "overlay"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1088
    const-class v1, Landroid/net/NetworkWatchlistManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$90;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$90;-><init>()V

    const-string/jumbo v3, "network_watchlist"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1099
    const-class v1, Landroid/os/health/SystemHealthManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$91;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$91;-><init>()V

    const-string/jumbo v3, "systemhealth"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1107
    const-class v1, Landroid/hardware/location/ContextHubManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$92;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$92;-><init>()V

    const-string v3, "contexthub"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1115
    const-class v1, Landroid/os/IncidentManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$93;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$93;-><init>()V

    const-string v3, "incident"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1122
    const-class v1, Landroid/os/BugreportManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$94;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$94;-><init>()V

    const-string v3, "bugreport"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1132
    const-class v1, Landroid/view/autofill/AutofillManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$95;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$95;-><init>()V

    const-string v3, "autofill"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1142
    const-class v1, Landroid/media/musicrecognition/MusicRecognitionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$96;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$96;-><init>()V

    const-string/jumbo v3, "music_recognition"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1153
    const-class v1, Landroid/view/contentcapture/ContentCaptureManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$97;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$97;-><init>()V

    const-string v3, "content_capture"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1176
    const-class v1, Landroid/view/translation/TranslationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$98;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$98;-><init>()V

    const-string/jumbo v3, "translation"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1190
    const-class v1, Landroid/view/translation/UiTranslationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$99;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$99;-><init>()V

    const-string/jumbo v3, "ui_translation"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1203
    const-class v1, Landroid/app/search/SearchUiManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$100;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$100;-><init>()V

    const-string/jumbo v3, "search_ui"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1213
    const-class v1, Landroid/app/smartspace/SmartspaceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$101;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$101;-><init>()V

    const-string/jumbo v3, "smartspace"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1223
    const-class v1, Landroid/app/cloudsearch/CloudSearchManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$102;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$102;-><init>()V

    const-string v3, "cloudsearch"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1234
    const-class v1, Landroid/app/prediction/AppPredictionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$103;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$103;-><init>()V

    const-string v3, "app_prediction"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1244
    const-class v1, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$104;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$104;-><init>()V

    const-string v3, "content_suggestions"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1258
    const-class v1, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$105;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$105;-><init>()V

    const-string/jumbo v3, "wallpaper_effects_generation"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1272
    const-class v1, Landroid/app/VrManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$106;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$106;-><init>()V

    const-string/jumbo v3, "vrmanager"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1280
    const-class v1, Landroid/app/timezone/RulesManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$107;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$107;-><init>()V

    const-string/jumbo v3, "timezone"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1287
    const-class v1, Landroid/content/pm/CrossProfileApps;

    new-instance v2, Landroid/app/SystemServiceRegistry$108;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$108;-><init>()V

    const-string v3, "crossprofileapps"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1299
    const-class v1, Landroid/app/slice/SliceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$109;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$109;-><init>()V

    const-string/jumbo v3, "slice"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1309
    const-class v1, Landroid/app/timedetector/TimeDetector;

    new-instance v2, Landroid/app/SystemServiceRegistry$110;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$110;-><init>()V

    const-string/jumbo v3, "time_detector"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1317
    const-class v1, Landroid/app/timezonedetector/TimeZoneDetector;

    new-instance v2, Landroid/app/SystemServiceRegistry$111;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$111;-><init>()V

    const-string/jumbo v3, "time_zone_detector"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1325
    const-class v1, Landroid/app/time/TimeManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$112;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$112;-><init>()V

    const-string/jumbo v3, "time_manager"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1333
    const-class v1, Landroid/permission/PermissionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$113;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$113;-><init>()V

    const-string/jumbo v3, "permission"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1341
    const-class v1, Landroid/permission/LegacyPermissionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$114;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$114;-><init>()V

    const-string v3, "legacy_permission"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1349
    const-class v1, Landroid/permission/PermissionControllerManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$115;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$115;-><init>()V

    const-string/jumbo v3, "permission_controller"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1357
    const-class v1, Landroid/permission/PermissionCheckerManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$116;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$116;-><init>()V

    const-string/jumbo v3, "permission_checker"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1365
    const-class v1, Landroid/os/image/DynamicSystemManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$117;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$117;-><init>()V

    const-string v3, "dynamic_system"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1376
    const-class v1, Landroid/os/BatteryStatsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$118;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$118;-><init>()V

    const-string v3, "batterystats"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1386
    const-class v1, Landroid/content/pm/DataLoaderManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$119;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$119;-><init>()V

    const-string v3, "dataloader_manager"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1395
    const-class v1, Landroid/hardware/lights/LightsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$120;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$120;-><init>()V

    const-string v3, "lights"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1402
    const-class v1, Landroid/app/LocaleManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$121;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$121;-><init>()V

    const-string v3, "locale"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1410
    const-class v1, Landroid/os/incremental/IncrementalManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$122;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$122;-><init>()V

    const-string v3, "incremental"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1422
    const-class v1, Landroid/security/FileIntegrityManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$123;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$123;-><init>()V

    const-string v3, "file_integrity"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1433
    const-class v1, Landroid/security/attestationverification/AttestationVerificationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$124;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$124;-><init>()V

    const-string v3, "attestation_verification"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1446
    const-class v1, Landroid/content/integrity/AppIntegrityManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$125;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$125;-><init>()V

    const-string v3, "app_integrity"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1454
    const-class v1, Landroid/apphibernation/AppHibernationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$126;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$126;-><init>()V

    const-string v3, "app_hibernation"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1461
    const-class v1, Landroid/app/DreamManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$127;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$127;-><init>()V

    const-string v3, "dream"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1468
    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$128;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$128;-><init>()V

    const-string v3, "device_state"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1475
    const-class v1, Landroid/media/metrics/MediaMetricsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$129;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$129;-><init>()V

    const-string/jumbo v3, "media_metrics"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1487
    const-class v1, Landroid/app/GameManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$130;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$130;-><init>()V

    const-string v3, "game"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1497
    const-class v1, Landroid/content/pm/verify/domain/DomainVerificationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$131;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$131;-><init>()V

    const-string v3, "domain_verification"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1510
    const-class v1, Landroid/view/displayhash/DisplayHashManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$132;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$132;-><init>()V

    const-string v3, "display_hash"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1518
    const-class v1, Landroid/app/ambientcontext/AmbientContextManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$133;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$133;-><init>()V

    const-string v3, "ambient_context"

    invoke-static {v3, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1530
    const/4 v1, 0x1

    sput-boolean v1, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    .line 1534
    :try_start_6a3
    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializer;->registerServiceWrappers()V

    .line 1535
    invoke-static {}, Landroid/app/job/JobSchedulerFrameworkInitializer;->registerServiceWrappers()V

    .line 1536
    invoke-static {}, Landroid/app/blob/BlobStoreManagerFrameworkInitializer;->initialize()V

    .line 1537
    invoke-static {}, Landroid/bluetooth/BluetoothFrameworkInitializer;->registerServiceWrappers()V

    .line 1538
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->registerServiceWrappers()V

    .line 1539
    invoke-static {}, Landroid/app/appsearch/AppSearchManagerFrameworkInitializer;->initialize()V

    .line 1540
    invoke-static {}, Landroid/net/wifi/WifiFrameworkInitializer;->registerServiceWrappers()V

    .line 1541
    invoke-static {}, Landroid/os/StatsFrameworkInitializer;->registerServiceWrappers()V

    .line 1542
    invoke-static {}, Landroid/content/rollback/RollbackManagerFrameworkInitializer;->initialize()V

    .line 1543
    invoke-static {}, Landroid/media/MediaFrameworkPlatformInitializer;->registerServiceWrappers()V

    .line 1544
    invoke-static {}, Landroid/media/MediaFrameworkInitializer;->registerServiceWrappers()V

    .line 1545
    invoke-static {}, Landroid/app/role/RoleFrameworkInitializer;->registerServiceWrappers()V

    .line 1546
    invoke-static {}, Landroid/scheduling/SchedulingFrameworkInitializer;->registerServiceWrappers()V

    .line 1547
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxManagerFrameworkInitializer;->registerServiceWrappers()V

    .line 1548
    invoke-static {}, Landroid/adservices/AdServicesFrameworkInitializer;->registerServiceWrappers()V

    .line 1549
    invoke-static {}, Landroid/uwb/UwbFrameworkInitializer;->registerServiceWrappers()V

    .line 1550
    invoke-static {}, Landroid/safetycenter/SafetyCenterFrameworkInitializer;->registerServiceWrappers()V

    .line 1551
    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializerTiramisu;->registerServiceWrappers()V

    .line 1552
    invoke-static {}, Landroid/nearby/NearbyFrameworkInitializer;->registerServiceWrappers()V

    .line 1553
    invoke-static {}, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer;->registerServiceWrappers()V
    :try_end_6df
    .catchall {:try_start_6a3 .. :try_end_6df} :catchall_6ea

    .line 1557
    sput-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    .line 1558
    nop

    .line 1560
    invoke-static {}, Landroid/app/SystemServiceRegistryStub;->get()Landroid/app/SystemServiceRegistryStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/SystemServiceRegistryStub;->registerMiuiServices()V

    .line 1561
    return-void

    .line 1557
    :catchall_6ea
    move-exception v1

    sput-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    .line 1558
    throw v1
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createServiceCache()[Ljava/lang/Object;
    .registers 1

    .line 1573
    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private static blacklist ensureInitializing(Ljava/lang/String;)V
    .registers 4
    .param p0, "methodName"    # Ljava/lang/String;

    .line 1565
    sget-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "Internal error: %s can only be called during class initialization."

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1567
    return-void
.end method

.method public static blacklist getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p0, "ctx"    # Landroid/app/ContextImpl;
    .param p1, "name"    # Ljava/lang/String;

    .line 1581
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1582
    return-object v0

    .line 1584
    :cond_4
    sget-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    .line 1585
    .local v1, "fetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<*>;"
    const-string v2, "SystemServiceRegistry"

    if-nez v1, :cond_2b

    .line 1586
    sget-boolean v3, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v3, :cond_2a

    .line 1587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown manager requested: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_2a
    return-object v0

    .line 1592
    :cond_2b
    invoke-interface {v1, p0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v3

    .line 1593
    .local v3, "ret":Ljava/lang/Object;
    sget-boolean v4, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v4, :cond_80

    if-nez v3, :cond_80

    .line 1595
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_82

    :cond_3d
    goto :goto_65

    :sswitch_3e
    const-string v5, "incremental"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v4, 0x2

    goto :goto_65

    :sswitch_48
    const-string v5, "content_capture"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v4, 0x0

    goto :goto_65

    :sswitch_52
    const-string v5, "app_prediction"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v4, 0x1

    goto :goto_65

    :sswitch_5c
    const-string v5, "ethernet"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v4, 0x3

    :goto_65
    packed-switch v4, :pswitch_data_94

    .line 1602
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Manager wrapper not available: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    return-object v0

    .line 1600
    :pswitch_7f
    return-object v0

    .line 1605
    :cond_80
    return-object v3

    nop

    :sswitch_data_82
    .sparse-switch
        -0x5499b029 -> :sswitch_5c
        -0x2dd60a93 -> :sswitch_52
        0x3a1b1980 -> :sswitch_48
        0x40b177da -> :sswitch_3e
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
    .end packed-switch
.end method

.method public static blacklist getSystemServiceClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1646
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1613
    .local p0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    .line 1614
    const/4 v0, 0x0

    return-object v0

    .line 1616
    :cond_4
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1617
    .local v0, "serviceName":Ljava/lang/String;
    sget-boolean v1, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v1, :cond_2e

    if-nez v0, :cond_2e

    .line 1619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown manager requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemServiceRegistry"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_2e
    return-object v0
.end method

.method public static blacklist onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V
    .registers 4
    .param p0, "e"    # Landroid/os/ServiceManager$ServiceNotFoundException;

    .line 1991
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v1, "SystemServiceRegistry"

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_12

    .line 1992
    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 1994
    :cond_12
    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :goto_19
    return-void
.end method

.method public static whitelist registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 1806
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;, "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerContextAwareService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 1807
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1808
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    new-instance v0, Landroid/app/SystemServiceRegistry$136;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$136;-><init>(Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1820
    return-void
.end method

.method public static whitelist registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 1834
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;, "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerContextAwareService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 1835
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1836
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1837
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    new-instance v0, Landroid/app/SystemServiceRegistry$137;

    invoke-direct {v0, p2}, Landroid/app/SystemServiceRegistry$137;-><init>(Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1845
    return-void
.end method

.method static blacklist registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .registers 5
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 1632
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serviceFetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<TT;>;"
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    return-void
.end method

.method public static whitelist registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 1749
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;, "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 1750
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1751
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    new-instance v0, Landroid/app/SystemServiceRegistry$134;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$134;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1761
    return-void
.end method

.method public static whitelist registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 1773
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;, "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 1774
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1775
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    new-instance v0, Landroid/app/SystemServiceRegistry$135;

    invoke-direct {v0, p2}, Landroid/app/SystemServiceRegistry$135;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1784
    return-void
.end method
