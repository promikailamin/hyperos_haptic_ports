.class public abstract Landroid/content/pm/PackageManager;
.super Ljava/lang/Object;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageManager$ApplicationInfoFlags;,
        Landroid/content/pm/PackageManager$ResolveInfoFlags;,
        Landroid/content/pm/PackageManager$ComponentInfoFlags;,
        Landroid/content/pm/PackageManager$PackageInfoFlags;,
        Landroid/content/pm/PackageManager$ApplicationInfoQuery;,
        Landroid/content/pm/PackageManager$PackageInfoQuery;,
        Landroid/content/pm/PackageManager$OnChecksumsReadyListener;,
        Landroid/content/pm/PackageManager$CertificateInputType;,
        Landroid/content/pm/PackageManager$DexModuleRegisterCallback;,
        Landroid/content/pm/PackageManager$UninstallCompleteCallback;,
        Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;,
        Landroid/content/pm/PackageManager$MoveCallback;,
        Landroid/content/pm/PackageManager$DistractionRestriction;,
        Landroid/content/pm/PackageManager$PermissionFlags;,
        Landroid/content/pm/PackageManager$Flags;,
        Landroid/content/pm/PackageManager$SystemAppState;,
        Landroid/content/pm/PackageManager$NotifyReason;,
        Landroid/content/pm/PackageManager$PermissionWhitelistFlags;,
        Landroid/content/pm/PackageManager$AppMetadataSource;,
        Landroid/content/pm/PackageManager$DeleteFlags;,
        Landroid/content/pm/PackageManager$UserMinAspectRatio;,
        Landroid/content/pm/PackageManager$UninstallReason;,
        Landroid/content/pm/PackageManager$InstallScenario;,
        Landroid/content/pm/PackageManager$InstallReason;,
        Landroid/content/pm/PackageManager$SuspendedFlags;,
        Landroid/content/pm/PackageManager$EnabledFlags;,
        Landroid/content/pm/PackageManager$DevelopmentInstallFlags;,
        Landroid/content/pm/PackageManager$InstallFlags;,
        Landroid/content/pm/PackageManager$RollbackImpactLevel;,
        Landroid/content/pm/PackageManager$RollbackDataPolicy;,
        Landroid/content/pm/PackageManager$EnabledState;,
        Landroid/content/pm/PackageManager$SignatureResult;,
        Landroid/content/pm/PackageManager$PermissionResult;,
        Landroid/content/pm/PackageManager$ModuleInfoFlags;,
        Landroid/content/pm/PackageManager$InstrumentationInfoFlags;,
        Landroid/content/pm/PackageManager$PermissionGroupInfoFlags;,
        Landroid/content/pm/PackageManager$PermissionInfoFlags;,
        Landroid/content/pm/PackageManager$InstalledModulesFlags;,
        Landroid/content/pm/PackageManager$ResolveInfoFlagsBits;,
        Landroid/content/pm/PackageManager$ComponentInfoFlagsBits;,
        Landroid/content/pm/PackageManager$ApplicationInfoFlagsBits;,
        Landroid/content/pm/PackageManager$PackageInfoFlagsBits;,
        Landroid/content/pm/PackageManager$PropertyLocation;,
        Landroid/content/pm/PackageManager$ComponentType;,
        Landroid/content/pm/PackageManager$OnPermissionsChangedListener;,
        Landroid/content/pm/PackageManager$ComponentEnabledSetting;,
        Landroid/content/pm/PackageManager$Property;,
        Landroid/content/pm/PackageManager$NameNotFoundException;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_REQUEST_PERMISSIONS:Ljava/lang/String; = "android.content.pm.action.REQUEST_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REQUEST_PERMISSIONS_FOR_OTHER:Ljava/lang/String; = "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_VERIFY_DEVELOPER:Ljava/lang/String; = "android.content.pm.action.VERIFY_DEVELOPER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o APPLY_DEFAULT_TO_DEVICE_PROTECTED_STORAGE:Z = true

.field public static final blacklist APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

.field public static final blacklist APP_ENUMERATION_ENABLED_BY_DEFAULT:Z = true

.field public static final whitelist APP_METADATA_SOURCE_APK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist APP_METADATA_SOURCE_INSTALLER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist APP_METADATA_SOURCE_SYSTEM_IMAGE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist APP_METADATA_SOURCE_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CERT_INPUT_RAW_X509:I = 0x0

.field public static final whitelist CERT_INPUT_SHA256:I = 0x1

.field public static final whitelist COMPONENT_ENABLED_STATE_DEFAULT:I = 0x0

.field public static final whitelist COMPONENT_ENABLED_STATE_DISABLED:I = 0x2

.field public static final whitelist COMPONENT_ENABLED_STATE_DISABLED_UNTIL_USED:I = 0x4

.field public static final whitelist COMPONENT_ENABLED_STATE_DISABLED_USER:I = 0x3

.field public static final whitelist COMPONENT_ENABLED_STATE_ENABLED:I = 0x1

.field public static final whitelist DELETE_ALL_USERS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DELETE_ARCHIVE:I = 0x10

.field public static final greylist-max-o DELETE_CHATTY:I = -0x80000000

.field public static final greylist-max-o DELETE_DONT_KILL_APP:I = 0x8

.field public static final whitelist DELETE_FAILED_ABORTED:I = -0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DELETE_FAILED_APP_PINNED:I = -0x7

.field public static final whitelist DELETE_FAILED_DEVICE_POLICY_MANAGER:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DELETE_FAILED_FOR_CHILD_PROFILE:I = -0x8

.field public static final whitelist DELETE_FAILED_INTERNAL_ERROR:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DELETE_FAILED_OWNER_BLOCKED:I = -0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o DELETE_FAILED_USED_SHARED_LIBRARY:I = -0x6

.field public static final greylist-max-o DELETE_FAILED_USER_RESTRICTED:I = -0x3

.field public static final whitelist DELETE_KEEP_DATA:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DELETE_SUCCEEDED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o DELETE_SYSTEM_APP:I = 0x4

.field public static final whitelist DONT_KILL_APP:I = 0x1

.field public static final blacklist ENABLE_SHARED_UID_MIGRATION:Z = true

.field public static final greylist-max-o EXTRA_FAILURE_EXISTING_PACKAGE:Ljava/lang/String; = "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

.field public static final greylist-max-o EXTRA_FAILURE_EXISTING_PERMISSION:Ljava/lang/String; = "android.content.pm.extra.FAILURE_EXISTING_PERMISSION"

.field public static final greylist-max-o EXTRA_INTENT_FILTER_VERIFICATION_HOSTS:Ljava/lang/String; = "android.content.pm.extra.INTENT_FILTER_VERIFICATION_HOSTS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_INTENT_FILTER_VERIFICATION_ID:Ljava/lang/String; = "android.content.pm.extra.INTENT_FILTER_VERIFICATION_ID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_INTENT_FILTER_VERIFICATION_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.INTENT_FILTER_VERIFICATION_PACKAGE_NAME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_INTENT_FILTER_VERIFICATION_URI_SCHEME:Ljava/lang/String; = "android.content.pm.extra.INTENT_FILTER_VERIFICATION_URI_SCHEME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_MOVE_ID:Ljava/lang/String; = "android.content.pm.extra.MOVE_ID"

.field public static final blacklist EXTRA_PACKAGE_MONITOR_CALLBACK_RESULT:Ljava/lang/String; = "android.content.pm.extra.EXTRA_PACKAGE_MONITOR_CALLBACK_RESULT"

.field public static final whitelist EXTRA_REQUEST_PERMISSIONS_DEVICE_ID:Ljava/lang/String; = "android.content.pm.extra.REQUEST_PERMISSIONS_DEVICE_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_REQUEST_PERMISSIONS_LEGACY_ACCESS_PERMISSION_NAMES:Ljava/lang/String; = "android.content.pm.extra.REQUEST_PERMISSIONS_LEGACY_ACCESS_PERMISSION_NAMES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_REQUEST_PERMISSIONS_NAMES:Ljava/lang/String; = "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_REQUEST_PERMISSIONS_RESULTS:Ljava/lang/String; = "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_USER_ACTION_REQUIRED:Ljava/lang/String; = "android.content.pm.extra.USER_ACTION_REQUIRED"

.field public static final whitelist EXTRA_VERIFICATION_ID:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_ID"

.field public static final greylist-max-o EXTRA_VERIFICATION_INSTALLER_PACKAGE:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

.field public static final greylist-max-o EXTRA_VERIFICATION_INSTALLER_UID:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

.field public static final greylist-max-o EXTRA_VERIFICATION_INSTALL_FLAGS:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

.field public static final greylist-max-o EXTRA_VERIFICATION_LONG_VERSION_CODE:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

.field public static final greylist-max-o EXTRA_VERIFICATION_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

.field public static final whitelist EXTRA_VERIFICATION_RESULT:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_RESULT"

.field public static final blacklist EXTRA_VERIFICATION_ROOT_HASH:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_ROOT_HASH"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_VERIFICATION_URI:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_URI"

.field public static final greylist-max-o EXTRA_VERIFICATION_VERSION_CODE:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_VERSION_CODE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_ACTIVITIES_ON_SECONDARY_DISPLAYS:Ljava/lang/String; = "android.software.activities_on_secondary_displays"

.field public static final blacklist FEATURE_ADOPTABLE_STORAGE:Ljava/lang/String; = "android.software.adoptable_storage"

.field public static final blacklist FEATURE_APP_COMPAT_OVERRIDES:Ljava/lang/String; = "android.software.app_compat_overrides"

.field public static final blacklist FEATURE_APP_ENUMERATION:Ljava/lang/String; = "android.software.app_enumeration"

.field public static final whitelist FEATURE_APP_WIDGETS:Ljava/lang/String; = "android.software.app_widgets"

.field public static final greylist-max-o FEATURE_ASSIST_GESTURE:Ljava/lang/String; = "android.hardware.sensor.assist"

.field public static final whitelist FEATURE_AUDIO_LOW_LATENCY:Ljava/lang/String; = "android.hardware.audio.low_latency"

.field public static final whitelist FEATURE_AUDIO_OUTPUT:Ljava/lang/String; = "android.hardware.audio.output"

.field public static final whitelist FEATURE_AUDIO_PRO:Ljava/lang/String; = "android.hardware.audio.pro"

.field public static final whitelist FEATURE_AUDIO_SPATIAL_HEADTRACKING_LOW_LATENCY:Ljava/lang/String; = "android.hardware.audio.spatial.headtracking.low_latency"

.field public static final whitelist FEATURE_AUTOFILL:Ljava/lang/String; = "android.software.autofill"

.field public static final whitelist FEATURE_AUTOMOTIVE:Ljava/lang/String; = "android.hardware.type.automotive"

.field public static final whitelist FEATURE_BACKUP:Ljava/lang/String; = "android.software.backup"

.field public static final whitelist FEATURE_BLUETOOTH:Ljava/lang/String; = "android.hardware.bluetooth"

.field public static final whitelist FEATURE_BLUETOOTH_LE:Ljava/lang/String; = "android.hardware.bluetooth_le"

.field public static final whitelist FEATURE_BLUETOOTH_LE_CHANNEL_SOUNDING:Ljava/lang/String; = "android.hardware.bluetooth_le.channel_sounding"

.field public static final whitelist FEATURE_BROADCAST_RADIO:Ljava/lang/String; = "android.hardware.broadcastradio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_CAMERA:Ljava/lang/String; = "android.hardware.camera"

.field public static final whitelist FEATURE_CAMERA_ANY:Ljava/lang/String; = "android.hardware.camera.any"

.field public static final whitelist FEATURE_CAMERA_AR:Ljava/lang/String; = "android.hardware.camera.ar"

.field public static final whitelist FEATURE_CAMERA_AUTOFOCUS:Ljava/lang/String; = "android.hardware.camera.autofocus"

.field public static final whitelist FEATURE_CAMERA_CAPABILITY_MANUAL_POST_PROCESSING:Ljava/lang/String; = "android.hardware.camera.capability.manual_post_processing"

.field public static final whitelist FEATURE_CAMERA_CAPABILITY_MANUAL_SENSOR:Ljava/lang/String; = "android.hardware.camera.capability.manual_sensor"

.field public static final whitelist FEATURE_CAMERA_CAPABILITY_RAW:Ljava/lang/String; = "android.hardware.camera.capability.raw"

.field public static final whitelist FEATURE_CAMERA_CONCURRENT:Ljava/lang/String; = "android.hardware.camera.concurrent"

.field public static final whitelist FEATURE_CAMERA_EXTERNAL:Ljava/lang/String; = "android.hardware.camera.external"

.field public static final whitelist FEATURE_CAMERA_FLASH:Ljava/lang/String; = "android.hardware.camera.flash"

.field public static final whitelist FEATURE_CAMERA_FRONT:Ljava/lang/String; = "android.hardware.camera.front"

.field public static final whitelist FEATURE_CAMERA_LEVEL_FULL:Ljava/lang/String; = "android.hardware.camera.level.full"

.field public static final whitelist FEATURE_CANT_SAVE_STATE:Ljava/lang/String; = "android.software.cant_save_state"

.field public static final blacklist FEATURE_CAR_DISPLAY_COMPATIBILITY:Ljava/lang/String; = "android.software.car.display_compatibility"

.field public static final blacklist FEATURE_CAR_SPLITSCREEN_MULTITASKING:Ljava/lang/String; = "android.software.car.splitscreen_multitasking"

.field public static final blacklist FEATURE_CAR_TEMPLATES_HOST:Ljava/lang/String; = "android.software.car.templates_host"

.field public static final blacklist FEATURE_CAR_TEMPLATES_HOST_MEDIA:Ljava/lang/String; = "android.software.car.templates_host.media"

.field public static final blacklist FEATURE_COMMUNAL_MODE:Ljava/lang/String; = "android.software.communal_mode"

.field public static final whitelist FEATURE_COMPANION_DEVICE_SETUP:Ljava/lang/String; = "android.software.companion_device_setup"

.field public static final whitelist FEATURE_CONNECTION_SERVICE:Ljava/lang/String; = "android.software.connectionservice"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_CONSUMER_IR:Ljava/lang/String; = "android.hardware.consumerir"

.field public static final blacklist FEATURE_CONTEXTUAL_SEARCH_HELPER:Ljava/lang/String; = "android.software.contextualsearch"

.field public static final whitelist FEATURE_CONTEXT_HUB:Ljava/lang/String; = "android.hardware.context_hub"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_CONTROLS:Ljava/lang/String; = "android.software.controls"

.field public static final whitelist FEATURE_CREDENTIALS:Ljava/lang/String; = "android.software.credentials"

.field public static final greylist-max-o FEATURE_CTS:Ljava/lang/String; = "android.software.cts"

.field public static final whitelist FEATURE_DEVICE_ADMIN:Ljava/lang/String; = "android.software.device_admin"

.field public static final greylist-max-o FEATURE_DEVICE_ID_ATTESTATION:Ljava/lang/String; = "android.software.device_id_attestation"

.field public static final whitelist FEATURE_DEVICE_LOCK:Ljava/lang/String; = "android.software.device_lock"

.field public static final blacklist FEATURE_DEVICE_UNIQUE_ATTESTATION:Ljava/lang/String; = "android.hardware.device_unique_attestation"

.field public static final blacklist FEATURE_DREAM_OVERLAY:Ljava/lang/String; = "android.software.dream_overlay"

.field public static final whitelist FEATURE_EMBEDDED:Ljava/lang/String; = "android.hardware.type.embedded"

.field public static final whitelist FEATURE_EROFS:Ljava/lang/String; = "android.software.erofs"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_EROFS_LEGACY:Ljava/lang/String; = "android.software.erofs_legacy"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_ETHERNET:Ljava/lang/String; = "android.hardware.ethernet"

.field public static final whitelist FEATURE_EXPANDED_PICTURE_IN_PICTURE:Ljava/lang/String; = "android.software.expanded_picture_in_picture"

.field public static final whitelist FEATURE_FACE:Ljava/lang/String; = "android.hardware.biometrics.face"

.field public static final whitelist FEATURE_FAKETOUCH:Ljava/lang/String; = "android.hardware.faketouch"

.field public static final whitelist FEATURE_FAKETOUCH_MULTITOUCH_DISTINCT:Ljava/lang/String; = "android.hardware.faketouch.multitouch.distinct"

.field public static final whitelist FEATURE_FAKETOUCH_MULTITOUCH_JAZZHAND:Ljava/lang/String; = "android.hardware.faketouch.multitouch.jazzhand"

.field public static final blacklist FEATURE_FELICA:Ljava/lang/String; = "android.hardware.felica"

.field public static final blacklist FEATURE_FILE_BASED_ENCRYPTION:Ljava/lang/String; = "android.software.file_based_encryption"

.field public static final whitelist FEATURE_FINGERPRINT:Ljava/lang/String; = "android.hardware.fingerprint"

.field public static final whitelist FEATURE_FREEFORM_WINDOW_MANAGEMENT:Ljava/lang/String; = "android.software.freeform_window_management"

.field public static final whitelist FEATURE_GAMEPAD:Ljava/lang/String; = "android.hardware.gamepad"

.field public static final whitelist FEATURE_GAME_SERVICE:Ljava/lang/String; = "android.software.game_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_HARDWARE_KEYSTORE:Ljava/lang/String; = "android.hardware.hardware_keystore"

.field public static final greylist-max-o FEATURE_HDMI_CEC:Ljava/lang/String; = "android.hardware.hdmi.cec"

.field public static final whitelist FEATURE_HIFI_SENSORS:Ljava/lang/String; = "android.hardware.sensor.hifi_sensors"

.field public static final whitelist FEATURE_HOME_SCREEN:Ljava/lang/String; = "android.software.home_screen"

.field public static final whitelist FEATURE_IDENTITY_CREDENTIAL_HARDWARE:Ljava/lang/String; = "android.hardware.identity_credential"

.field public static final whitelist FEATURE_IDENTITY_CREDENTIAL_HARDWARE_DIRECT_ACCESS:Ljava/lang/String; = "android.hardware.identity_credential_direct_access"

.field public static final whitelist FEATURE_INCREMENTAL_DELIVERY:Ljava/lang/String; = "android.software.incremental_delivery"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_INPUT_METHODS:Ljava/lang/String; = "android.software.input_methods"

.field public static final whitelist FEATURE_IPSEC_TUNNELS:Ljava/lang/String; = "android.software.ipsec_tunnels"

.field public static final whitelist FEATURE_IPSEC_TUNNEL_MIGRATION:Ljava/lang/String; = "android.software.ipsec_tunnel_migration"

.field public static final whitelist FEATURE_IRIS:Ljava/lang/String; = "android.hardware.biometrics.iris"

.field public static final whitelist FEATURE_KEYSTORE_APP_ATTEST_KEY:Ljava/lang/String; = "android.hardware.keystore.app_attest_key"

.field public static final whitelist FEATURE_KEYSTORE_LIMITED_USE_KEY:Ljava/lang/String; = "android.hardware.keystore.limited_use_key"

.field public static final whitelist FEATURE_KEYSTORE_SINGLE_USE_KEY:Ljava/lang/String; = "android.hardware.keystore.single_use_key"

.field public static final whitelist FEATURE_LEANBACK:Ljava/lang/String; = "android.software.leanback"

.field public static final whitelist FEATURE_LEANBACK_ONLY:Ljava/lang/String; = "android.software.leanback_only"

.field public static final whitelist FEATURE_LIVE_TV:Ljava/lang/String; = "android.software.live_tv"

.field public static final whitelist FEATURE_LIVE_WALLPAPER:Ljava/lang/String; = "android.software.live_wallpaper"

.field public static final whitelist FEATURE_LOCATION:Ljava/lang/String; = "android.hardware.location"

.field public static final whitelist FEATURE_LOCATION_GPS:Ljava/lang/String; = "android.hardware.location.gps"

.field public static final whitelist FEATURE_LOCATION_NETWORK:Ljava/lang/String; = "android.hardware.location.network"

.field public static final greylist-max-o FEATURE_LOWPAN:Ljava/lang/String; = "android.hardware.lowpan"

.field public static final greylist-max-o FEATURE_MANAGED_PROFILES:Ljava/lang/String; = "android.software.managed_users"

.field public static final whitelist FEATURE_MANAGED_USERS:Ljava/lang/String; = "android.software.managed_users"

.field public static final whitelist FEATURE_MICROPHONE:Ljava/lang/String; = "android.hardware.microphone"

.field public static final whitelist FEATURE_MIDI:Ljava/lang/String; = "android.software.midi"

.field public static final whitelist FEATURE_NFC:Ljava/lang/String; = "android.hardware.nfc"

.field public static final greylist-max-o FEATURE_NFC_ANY:Ljava/lang/String; = "android.hardware.nfc.any"

.field public static final whitelist FEATURE_NFC_BEAM:Ljava/lang/String; = "android.sofware.nfc.beam"

.field public static final blacklist FEATURE_NFC_CHARGING:Ljava/lang/String; = "android.hardware.nfc.charging"

.field public static final greylist-max-o FEATURE_NFC_HCE:Ljava/lang/String; = "android.hardware.nfc.hce"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_NFC_HOST_CARD_EMULATION:Ljava/lang/String; = "android.hardware.nfc.hce"

.field public static final whitelist FEATURE_NFC_HOST_CARD_EMULATION_NFCF:Ljava/lang/String; = "android.hardware.nfc.hcef"

.field public static final whitelist FEATURE_NFC_OFF_HOST_CARD_EMULATION_ESE:Ljava/lang/String; = "android.hardware.nfc.ese"

.field public static final whitelist FEATURE_NFC_OFF_HOST_CARD_EMULATION_UICC:Ljava/lang/String; = "android.hardware.nfc.uicc"

.field public static final whitelist FEATURE_OPENGLES_DEQP_LEVEL:Ljava/lang/String; = "android.software.opengles.deqp.level"

.field public static final whitelist FEATURE_OPENGLES_EXTENSION_PACK:Ljava/lang/String; = "android.hardware.opengles.aep"

.field public static final whitelist FEATURE_PC:Ljava/lang/String; = "android.hardware.type.pc"

.field public static final whitelist FEATURE_PICTURE_IN_PICTURE:Ljava/lang/String; = "android.software.picture_in_picture"

.field public static final whitelist FEATURE_PRINTING:Ljava/lang/String; = "android.software.print"

.field public static final whitelist FEATURE_RAM_LOW:Ljava/lang/String; = "android.hardware.ram.low"

.field public static final whitelist FEATURE_RAM_NORMAL:Ljava/lang/String; = "android.hardware.ram.normal"

.field public static final whitelist FEATURE_REBOOT_ESCROW:Ljava/lang/String; = "android.hardware.reboot_escrow"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FEATURE_ROTARY_ENCODER_LOW_RES:Ljava/lang/String; = "android.hardware.rotaryencoder.lowres"

.field public static final whitelist FEATURE_SCREEN_LANDSCAPE:Ljava/lang/String; = "android.hardware.screen.landscape"

.field public static final whitelist FEATURE_SCREEN_PORTRAIT:Ljava/lang/String; = "android.hardware.screen.portrait"

.field public static final blacklist FEATURE_SDK_SANDBOX_WORK_PROFILE_INSTALL:Ljava/lang/String; = "android.software.sdksandbox.sdk_install_work_profile"

.field public static final whitelist FEATURE_SECURELY_REMOVES_USERS:Ljava/lang/String; = "android.software.securely_removes_users"

.field public static final whitelist FEATURE_SECURE_LOCK_SCREEN:Ljava/lang/String; = "android.software.secure_lock_screen"

.field public static final whitelist FEATURE_SECURITY_MODEL_COMPATIBLE:Ljava/lang/String; = "android.hardware.security.model.compatible"

.field public static final whitelist FEATURE_SENSOR_ACCELEROMETER:Ljava/lang/String; = "android.hardware.sensor.accelerometer"

.field public static final whitelist FEATURE_SENSOR_ACCELEROMETER_LIMITED_AXES:Ljava/lang/String; = "android.hardware.sensor.accelerometer_limited_axes"

.field public static final whitelist FEATURE_SENSOR_ACCELEROMETER_LIMITED_AXES_UNCALIBRATED:Ljava/lang/String; = "android.hardware.sensor.accelerometer_limited_axes_uncalibrated"

.field public static final whitelist FEATURE_SENSOR_AMBIENT_TEMPERATURE:Ljava/lang/String; = "android.hardware.sensor.ambient_temperature"

.field public static final whitelist FEATURE_SENSOR_BAROMETER:Ljava/lang/String; = "android.hardware.sensor.barometer"

.field public static final whitelist FEATURE_SENSOR_COMPASS:Ljava/lang/String; = "android.hardware.sensor.compass"

.field public static final whitelist FEATURE_SENSOR_DYNAMIC_HEAD_TRACKER:Ljava/lang/String; = "android.hardware.sensor.dynamic.head_tracker"

.field public static final whitelist FEATURE_SENSOR_GYROSCOPE:Ljava/lang/String; = "android.hardware.sensor.gyroscope"

.field public static final whitelist FEATURE_SENSOR_GYROSCOPE_LIMITED_AXES:Ljava/lang/String; = "android.hardware.sensor.gyroscope_limited_axes"

.field public static final whitelist FEATURE_SENSOR_GYROSCOPE_LIMITED_AXES_UNCALIBRATED:Ljava/lang/String; = "android.hardware.sensor.gyroscope_limited_axes_uncalibrated"

.field public static final whitelist FEATURE_SENSOR_HEADING:Ljava/lang/String; = "android.hardware.sensor.heading"

.field public static final whitelist FEATURE_SENSOR_HEART_RATE:Ljava/lang/String; = "android.hardware.sensor.heartrate"

.field public static final whitelist FEATURE_SENSOR_HEART_RATE_ECG:Ljava/lang/String; = "android.hardware.sensor.heartrate.ecg"

.field public static final whitelist FEATURE_SENSOR_HINGE_ANGLE:Ljava/lang/String; = "android.hardware.sensor.hinge_angle"

.field public static final whitelist FEATURE_SENSOR_LIGHT:Ljava/lang/String; = "android.hardware.sensor.light"

.field public static final whitelist FEATURE_SENSOR_PROXIMITY:Ljava/lang/String; = "android.hardware.sensor.proximity"

.field public static final whitelist FEATURE_SENSOR_RELATIVE_HUMIDITY:Ljava/lang/String; = "android.hardware.sensor.relative_humidity"

.field public static final whitelist FEATURE_SENSOR_STEP_COUNTER:Ljava/lang/String; = "android.hardware.sensor.stepcounter"

.field public static final whitelist FEATURE_SENSOR_STEP_DETECTOR:Ljava/lang/String; = "android.hardware.sensor.stepdetector"

.field public static final whitelist FEATURE_SE_OMAPI_ESE:Ljava/lang/String; = "android.hardware.se.omapi.ese"

.field public static final whitelist FEATURE_SE_OMAPI_SD:Ljava/lang/String; = "android.hardware.se.omapi.sd"

.field public static final whitelist FEATURE_SE_OMAPI_UICC:Ljava/lang/String; = "android.hardware.se.omapi.uicc"

.field public static final whitelist FEATURE_SIP:Ljava/lang/String; = "android.software.sip"

.field public static final whitelist FEATURE_SIP_VOIP:Ljava/lang/String; = "android.software.sip.voip"

.field public static final blacklist FEATURE_SLICES_DISABLED:Ljava/lang/String; = "android.software.slices_disabled"

.field public static final whitelist FEATURE_STRONGBOX_KEYSTORE:Ljava/lang/String; = "android.hardware.strongbox_keystore"

.field public static final whitelist FEATURE_TELECOM:Ljava/lang/String; = "android.software.telecom"

.field public static final whitelist FEATURE_TELEPHONY:Ljava/lang/String; = "android.hardware.telephony"

.field public static final whitelist FEATURE_TELEPHONY_CALLING:Ljava/lang/String; = "android.hardware.telephony.calling"

.field public static final whitelist FEATURE_TELEPHONY_CARRIERLOCK:Ljava/lang/String; = "android.hardware.telephony.carrierlock"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_TELEPHONY_CDMA:Ljava/lang/String; = "android.hardware.telephony.cdma"

.field public static final whitelist FEATURE_TELEPHONY_DATA:Ljava/lang/String; = "android.hardware.telephony.data"

.field public static final whitelist FEATURE_TELEPHONY_EUICC:Ljava/lang/String; = "android.hardware.telephony.euicc"

.field public static final whitelist FEATURE_TELEPHONY_EUICC_MEP:Ljava/lang/String; = "android.hardware.telephony.euicc.mep"

.field public static final whitelist FEATURE_TELEPHONY_GSM:Ljava/lang/String; = "android.hardware.telephony.gsm"

.field public static final whitelist FEATURE_TELEPHONY_IMS:Ljava/lang/String; = "android.hardware.telephony.ims"

.field public static final whitelist FEATURE_TELEPHONY_IMS_SINGLE_REGISTRATION:Ljava/lang/String; = "android.hardware.telephony.ims.singlereg"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_TELEPHONY_MBMS:Ljava/lang/String; = "android.hardware.telephony.mbms"

.field public static final whitelist FEATURE_TELEPHONY_MESSAGING:Ljava/lang/String; = "android.hardware.telephony.messaging"

.field public static final whitelist FEATURE_TELEPHONY_RADIO_ACCESS:Ljava/lang/String; = "android.hardware.telephony.radio.access"

.field public static final blacklist FEATURE_TELEPHONY_SATELLITE:Ljava/lang/String; = "android.hardware.telephony.satellite"

.field public static final whitelist FEATURE_TELEPHONY_SUBSCRIPTION:Ljava/lang/String; = "android.hardware.telephony.subscription"

.field public static final whitelist FEATURE_TELEVISION:Ljava/lang/String; = "android.hardware.type.television"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_THREAD_NETWORK:Ljava/lang/String; = "android.hardware.thread_network"

.field public static final whitelist FEATURE_TOUCHSCREEN:Ljava/lang/String; = "android.hardware.touchscreen"

.field public static final whitelist FEATURE_TOUCHSCREEN_MULTITOUCH:Ljava/lang/String; = "android.hardware.touchscreen.multitouch"

.field public static final whitelist FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT:Ljava/lang/String; = "android.hardware.touchscreen.multitouch.distinct"

.field public static final whitelist FEATURE_TOUCHSCREEN_MULTITOUCH_JAZZHAND:Ljava/lang/String; = "android.hardware.touchscreen.multitouch.jazzhand"

.field public static final blacklist FEATURE_TUNER:Ljava/lang/String; = "android.hardware.tv.tuner"

.field public static final whitelist FEATURE_USB_ACCESSORY:Ljava/lang/String; = "android.hardware.usb.accessory"

.field public static final whitelist FEATURE_USB_HOST:Ljava/lang/String; = "android.hardware.usb.host"

.field public static final whitelist FEATURE_UWB:Ljava/lang/String; = "android.hardware.uwb"

.field public static final whitelist FEATURE_VERIFIED_BOOT:Ljava/lang/String; = "android.software.verified_boot"

.field public static final whitelist FEATURE_VIRTUALIZATION_FRAMEWORK:Ljava/lang/String; = "android.software.virtualization_framework"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o FEATURE_VOICE_RECOGNIZERS:Ljava/lang/String; = "android.software.voice_recognizers"

.field public static final whitelist FEATURE_VR_HEADTRACKING:Ljava/lang/String; = "android.hardware.vr.headtracking"

.field public static final whitelist FEATURE_VR_MODE:Ljava/lang/String; = "android.software.vr.mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_VR_MODE_HIGH_PERFORMANCE:Ljava/lang/String; = "android.hardware.vr.high_performance"

.field public static final whitelist FEATURE_VULKAN_DEQP_LEVEL:Ljava/lang/String; = "android.software.vulkan.deqp.level"

.field public static final whitelist FEATURE_VULKAN_HARDWARE_COMPUTE:Ljava/lang/String; = "android.hardware.vulkan.compute"

.field public static final whitelist FEATURE_VULKAN_HARDWARE_LEVEL:Ljava/lang/String; = "android.hardware.vulkan.level"

.field public static final whitelist FEATURE_VULKAN_HARDWARE_VERSION:Ljava/lang/String; = "android.hardware.vulkan.version"

.field public static final whitelist FEATURE_WALLET_LOCATION_BASED_SUGGESTIONS:Ljava/lang/String; = "android.software.wallet_location_based_suggestions"

.field public static final whitelist FEATURE_WATCH:Ljava/lang/String; = "android.hardware.type.watch"

.field public static final whitelist FEATURE_WEBVIEW:Ljava/lang/String; = "android.software.webview"

.field public static final whitelist FEATURE_WIFI:Ljava/lang/String; = "android.hardware.wifi"

.field public static final whitelist FEATURE_WIFI_AWARE:Ljava/lang/String; = "android.hardware.wifi.aware"

.field public static final whitelist FEATURE_WIFI_DIRECT:Ljava/lang/String; = "android.hardware.wifi.direct"

.field public static final whitelist FEATURE_WIFI_PASSPOINT:Ljava/lang/String; = "android.hardware.wifi.passpoint"

.field public static final whitelist FEATURE_WIFI_RTT:Ljava/lang/String; = "android.hardware.wifi.rtt"

.field public static final whitelist FEATURE_WINDOW_MAGNIFICATION:Ljava/lang/String; = "android.software.window_magnification"

.field public static final blacklist FEATURE_XR_API_OPENXR:Ljava/lang/String; = "android.software.xr.api.openxr"

.field public static final blacklist FEATURE_XR_API_SPATIAL:Ljava/lang/String; = "android.software.xr.api.spatial"

.field public static final blacklist FEATURE_XR_INPUT_CONTROLLER:Ljava/lang/String; = "android.hardware.xr.input.controller"

.field public static final blacklist FEATURE_XR_INPUT_EYE_TRACKING:Ljava/lang/String; = "android.hardware.xr.input.eye_tracking"

.field public static final blacklist FEATURE_XR_INPUT_HAND_TRACKING:Ljava/lang/String; = "android.hardware.xr.input.hand_tracking"

.field public static final blacklist FEATURE_XR_PERIPHERAL:Ljava/lang/String; = "android.hardware.type.xr_peripheral"

.field public static final blacklist FILTER_APPLICATION_QUERY:J = 0x81452ebL

.field public static final whitelist FLAGS_PERMISSION_RESERVED_PERMISSION_CONTROLLER:I = -0x10000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FLAGS_PERMISSION_RESTRICTION_ANY_EXEMPT:I = 0x3800

.field public static final whitelist FLAG_PERMISSION_APPLY_RESTRICTION:I = 0x4000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_AUTO_REVOKED:I = 0x20000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_GRANTED_BY_DEFAULT:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_GRANTED_BY_ROLE:I = 0x8000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_ONE_TIME:I = 0x10000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_POLICY_FIXED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_RESTRICTION_INSTALLER_EXEMPT:I = 0x800
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_RESTRICTION_SYSTEM_EXEMPT:I = 0x1000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_RESTRICTION_UPGRADE_EXEMPT:I = 0x2000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_REVIEW_REQUIRED:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_REVOKED_COMPAT:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_REVOKE_ON_UPGRADE:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_REVOKE_WHEN_REQUESTED:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_SELECTED_LOCATION_ACCURACY:I = 0x80000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_SYSTEM_FIXED:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_USER_FIXED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_USER_SENSITIVE_WHEN_DENIED:I = 0x200
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_USER_SENSITIVE_WHEN_GRANTED:I = 0x100
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_USER_SET:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_PERMISSION_WHITELIST_INSTALLER:I = 0x2

.field public static final whitelist FLAG_PERMISSION_WHITELIST_SYSTEM:I = 0x1

.field public static final whitelist FLAG_PERMISSION_WHITELIST_UPGRADE:I = 0x4

.field public static final blacklist FLAG_SUSPEND_QUARANTINED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GET_ACTIVITIES:I = 0x1

.field public static final whitelist GET_ATTRIBUTIONS:I = -0x80000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GET_ATTRIBUTIONS_LONG:J = 0x80000000L

.field public static final whitelist GET_CONFIGURATIONS:I = 0x4000

.field public static final whitelist GET_DISABLED_COMPONENTS:I = 0x200
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GET_DISABLED_UNTIL_USED_COMPONENTS:I = 0x8000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GET_GIDS:I = 0x100

.field public static final whitelist GET_INSTRUMENTATION:I = 0x10

.field public static final whitelist GET_INTENT_FILTERS:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GET_META_DATA:I = 0x80

.field public static final whitelist GET_PERMISSIONS:I = 0x1000

.field public static final whitelist GET_PROVIDERS:I = 0x8

.field public static final whitelist GET_RECEIVERS:I = 0x2

.field public static final whitelist GET_RESOLVED_FILTER:I = 0x40

.field public static final whitelist GET_SERVICES:I = 0x4

.field public static final whitelist GET_SHARED_LIBRARY_FILES:I = 0x400

.field public static final whitelist GET_SIGNATURES:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GET_SIGNING_CERTIFICATES:I = 0x8000000

.field public static final whitelist GET_UNINSTALLED_PACKAGES:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GET_URI_PERMISSION_PATTERNS:I = 0x800

.field public static final blacklist INSTALL_ACTIVATION_FAILED:I = -0x80

.field public static final greylist-max-o INSTALL_ALLOCATE_AGGRESSIVE:I = 0x8000

.field public static final greylist-max-o INSTALL_ALLOW_DOWNGRADE:I = 0x100000

.field public static final greylist-max-o INSTALL_ALLOW_TEST:I = 0x4

.field public static final greylist-max-o INSTALL_ALL_USERS:I = 0x40

.field public static final blacklist INSTALL_ALL_WHITELIST_RESTRICTED_PERMISSIONS:I = 0x400000

.field public static final blacklist INSTALL_APEX:I = 0x20000

.field public static final blacklist INSTALL_ARCHIVED:I = 0x8000000

.field public static final blacklist INSTALL_BYPASS_LOW_TARGET_SDK_BLOCK:I = 0x1000000

.field public static final blacklist INSTALL_DEVELOPMENT_FORCE_NON_STAGED_APEX_UPDATE:I = 0x1

.field public static final blacklist INSTALL_DISABLE_ALLOWED_APEX_UPDATE_CHECK:I = 0x800000

.field public static final blacklist INSTALL_DISABLE_VERIFICATION:I = 0x80000

.field public static final greylist-max-o INSTALL_DONT_KILL_APP:I = 0x1000

.field public static final blacklist INSTALL_ENABLE_ROLLBACK:I = 0x40000

.field public static final greylist-max-o INSTALL_FAILED_ABORTED:I = -0x73

.field public static final whitelist INSTALL_FAILED_ALREADY_EXISTS:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o INSTALL_FAILED_BAD_DEX_METADATA:I = -0x75

.field public static final blacklist INSTALL_FAILED_BAD_PERMISSION_GROUP:I = -0x7f

.field public static final blacklist INSTALL_FAILED_BAD_SIGNATURE:I = -0x76

.field public static final whitelist INSTALL_FAILED_CONFLICTING_PROVIDER:I = -0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_CONTAINER_ERROR:I = -0x12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:I = -0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_FAILED_DEPRECATED_SDK_VERSION:I = -0x1d

.field public static final whitelist INSTALL_FAILED_DEXOPT:I = -0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o INSTALL_FAILED_DUPLICATE_PERMISSION:I = -0x70

.field public static final blacklist INSTALL_FAILED_DUPLICATE_PERMISSION_GROUP:I = -0x7e

.field public static final whitelist INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_INTERNAL_ERROR:I = -0x6e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_INVALID_APK:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_INVALID_INSTALL_LOCATION:I = -0x13
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_INVALID_URI:I = -0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_MEDIA_UNAVAILABLE:I = -0x14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_MISSING_FEATURE:I = -0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_MISSING_SHARED_LIBRARY:I = -0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_FAILED_MISSING_SPLIT:I = -0x1c

.field public static final blacklist INSTALL_FAILED_MULTIPACKAGE_INCONSISTENCY:I = -0x78

.field public static final blacklist INSTALL_FAILED_MULTI_ARCH_NOT_MATCH_ALL_NATIVE_ABIS:I = -0x83

.field public static final whitelist INSTALL_FAILED_NEWER_SDK:I = -0xe
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o INSTALL_FAILED_NO_MATCHING_ABIS:I = -0x71

.field public static final whitelist INSTALL_FAILED_NO_SHARED_USER:I = -0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_OLDER_SDK:I = -0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_FAILED_OTHER_STAGED_SESSION_IN_PROGRESS:I = -0x77

.field public static final whitelist INSTALL_FAILED_PACKAGE_CHANGED:I = -0x17
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_PERMISSION_MODEL_DOWNGRADE:I = -0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_FAILED_PRE_APPROVAL_NOT_AVAILABLE:I = -0x81

.field public static final blacklist INSTALL_FAILED_PROCESS_NOT_DEFINED:I = -0x7a

.field public static final whitelist INSTALL_FAILED_REPLACE_COULDNT_DELETE:I = -0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_SANDBOX_VERSION_DOWNGRADE:I = -0x1b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_FAILED_SESSION_INVALID:I = -0x74

.field public static final blacklist INSTALL_FAILED_SHARED_LIBRARY_BAD_CERTIFICATE_DIGEST:I = -0x82

.field public static final whitelist INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:I = -0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_TEST_ONLY:I = -0xf
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o INSTALL_FAILED_UID_CHANGED:I = -0x18

.field public static final whitelist INSTALL_FAILED_UPDATE_INCOMPATIBLE:I = -0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o INSTALL_FAILED_USER_RESTRICTED:I = -0x6f

.field public static final whitelist INSTALL_FAILED_VERIFICATION_FAILURE:I = -0x16
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_FAILED_VERIFICATION_TIMEOUT:I = -0x15
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o INSTALL_FAILED_VERSION_DOWNGRADE:I = -0x19

.field public static final blacklist INSTALL_FAILED_WRONG_INSTALLED_VERSION:I = -0x79

.field public static final greylist-max-o INSTALL_FORCE_PERMISSION_PROMPT:I = 0x400

.field public static final greylist-max-o INSTALL_FORCE_VOLUME_UUID:I = 0x200

.field public static final greylist-max-o INSTALL_FROM_ADB:I = 0x20

.field public static final blacklist INSTALL_FROM_MANAGED_USER_OR_PROFILE:I = 0x4000000

.field public static final greylist-max-o INSTALL_FULL_APP:I = 0x4000

.field public static final blacklist INSTALL_GRANT_ALL_REQUESTED_PERMISSIONS:I = 0x100

.field public static final blacklist INSTALL_IGNORE_DEXOPT_PROFILE:I = 0x10000000

.field public static final greylist-max-o INSTALL_INSTANT_APP:I = 0x800

.field public static final greylist-max-o INSTALL_INTERNAL:I = 0x10

.field public static final whitelist INSTALL_PARSE_FAILED_BAD_MANIFEST:I = -0x65
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:I = -0x6a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:I = -0x6b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:I = -0x69
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:I = -0x68
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_PARSE_FAILED_MANIFEST_EMPTY:I = -0x6d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:I = -0x6c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_PARSE_FAILED_NOT_APK:I = -0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_PARSE_FAILED_NO_CERTIFICATES:I = -0x67
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_PARSE_FAILED_RESOURCES_ARSC_COMPRESSED:I = -0x7c

.field public static final blacklist INSTALL_PARSE_FAILED_SKIPPED:I = -0x7d

.field public static final whitelist INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:I = -0x66
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist INSTALL_REASON_DEVICE_RESTORE:I = 0x2

.field public static final whitelist INSTALL_REASON_DEVICE_SETUP:I = 0x3

.field public static final whitelist INSTALL_REASON_POLICY:I = 0x1

.field public static final blacklist INSTALL_REASON_ROLLBACK:I = 0x5

.field public static final whitelist INSTALL_REASON_UNKNOWN:I = 0x0

.field public static final whitelist INSTALL_REASON_USER:I = 0x4

.field public static final greylist INSTALL_REPLACE_EXISTING:I = 0x2

.field public static final blacklist INSTALL_REQUEST_DOWNGRADE:I = 0x80

.field public static final blacklist INSTALL_REQUEST_UPDATE_OWNERSHIP:I = 0x2000000

.field public static final whitelist INSTALL_SCENARIO_BULK:I = 0x2

.field public static final whitelist INSTALL_SCENARIO_BULK_SECONDARY:I = 0x3

.field public static final whitelist INSTALL_SCENARIO_DEFAULT:I = 0x0

.field public static final whitelist INSTALL_SCENARIO_FAST:I = 0x1

.field public static final blacklist INSTALL_STAGED:I = 0x200000

.field public static final whitelist INSTALL_SUCCEEDED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INSTALL_UNARCHIVE:I = 0x40000000

.field public static final blacklist INSTALL_UNARCHIVE_DRAFT:I = 0x20000000

.field public static final blacklist INSTALL_UNKNOWN:I = 0x0

.field public static final greylist-max-o INSTALL_VIRTUAL_PRELOAD:I = 0x10000

.field public static final whitelist INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_ALWAYS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_ALWAYS_ASK:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_ASK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_NEVER:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_UNDEFINED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INTENT_FILTER_VERIFICATION_FAILURE:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INTENT_FILTER_VERIFICATION_SUCCESS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MASK_PERMISSION_FLAGS:I = 0xff
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist MASK_PERMISSION_FLAGS_ALL:I = 0x3fbff

.field public static final whitelist MATCH_ALL:I = 0x20000

.field public static final whitelist MATCH_ANY_USER:I = 0x400000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MATCH_APEX:I = 0x40000000

.field public static final whitelist MATCH_ARCHIVED_PACKAGES:J = 0x100000000L

.field public static final whitelist MATCH_CLONE_PROFILE:I = 0x20000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MATCH_CLONE_PROFILE_LONG:J = 0x400000000L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o MATCH_DEBUG_TRIAGED_MISSING:I = 0x10000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MATCH_DEFAULT_ONLY:I = 0x10000

.field public static final whitelist MATCH_DIRECT_BOOT_AUTO:I = 0x10000000

.field public static final whitelist MATCH_DIRECT_BOOT_AWARE:I = 0x80000

.field public static final whitelist MATCH_DIRECT_BOOT_UNAWARE:I = 0x40000

.field public static final whitelist MATCH_DISABLED_COMPONENTS:I = 0x200

.field public static final whitelist MATCH_DISABLED_UNTIL_USED_COMPONENTS:I = 0x8000

.field public static final greylist-max-o MATCH_EXPLICITLY_VISIBLE_ONLY:I = 0x2000000

.field public static final whitelist MATCH_FACTORY_ONLY:I = 0x200000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MATCH_HIDDEN_UNTIL_INSTALLED_COMPONENTS:I = 0x20000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MATCH_INSTANT:I = 0x800000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MATCH_KNOWN_PACKAGES:I = 0x402000

.field public static final blacklist MATCH_QUARANTINED_COMPONENTS:J = 0x200000000L

.field public static final blacklist MATCH_STATIC_SHARED_AND_SDK_LIBRARIES:I = 0x4000000
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist MATCH_SYSTEM_ONLY:I = 0x100000

.field public static final whitelist MATCH_UNINSTALLED_PACKAGES:I = 0x2000

.field public static final greylist-max-o MATCH_VISIBLE_TO_INSTANT_APP_ONLY:I = 0x1000000

.field public static final whitelist MAXIMUM_VERIFICATION_TIMEOUT:J = 0x36ee80L

.field private static final blacklist MAX_INFO_CACHE_ENTRIES:I = 0x800

.field public static final whitelist MODULE_APEX_NAME:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-r MOVE_EXTERNAL_MEDIA:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o MOVE_FAILED_3RD_PARTY_NOT_ALLOWED_ON_INTERNAL:I = -0x9

.field public static final greylist-max-o MOVE_FAILED_DEVICE_ADMIN:I = -0x8

.field public static final greylist-max-o MOVE_FAILED_DOESNT_EXIST:I = -0x2

.field public static final greylist-max-o MOVE_FAILED_INSUFFICIENT_STORAGE:I = -0x1

.field public static final greylist-max-o MOVE_FAILED_INTERNAL_ERROR:I = -0x6

.field public static final greylist-max-o MOVE_FAILED_INVALID_LOCATION:I = -0x5

.field public static final greylist-max-o MOVE_FAILED_LOCKED_USER:I = -0xa

.field public static final greylist-max-o MOVE_FAILED_OPERATION_PENDING:I = -0x7

.field public static final greylist-max-o MOVE_FAILED_SYSTEM_PACKAGE:I = -0x3

.field public static final greylist-max-r MOVE_INTERNAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o MOVE_SUCCEEDED:I = -0x64

.field public static final greylist-max-o NOTIFY_PACKAGE_USE_ACTIVITY:I = 0x0

.field public static final greylist-max-o NOTIFY_PACKAGE_USE_BACKUP:I = 0x5

.field public static final greylist-max-o NOTIFY_PACKAGE_USE_BROADCAST_RECEIVER:I = 0x3

.field public static final greylist-max-o NOTIFY_PACKAGE_USE_CONTENT_PROVIDER:I = 0x4

.field public static final greylist-max-o NOTIFY_PACKAGE_USE_CROSS_PACKAGE:I = 0x6

.field public static final greylist-max-o NOTIFY_PACKAGE_USE_FOREGROUND_SERVICE:I = 0x2

.field public static final greylist-max-o NOTIFY_PACKAGE_USE_INSTRUMENTATION:I = 0x7

.field public static final greylist-max-o NOTIFY_PACKAGE_USE_REASONS_COUNT:I = 0x8

.field public static final greylist-max-o NOTIFY_PACKAGE_USE_SERVICE:I = 0x1

.field public static final greylist NO_NATIVE_LIBRARIES:I = -0x72

.field public static final greylist-max-o ONLY_IF_NO_MATCH_FOUND:I = 0x4

.field public static final whitelist PERMISSION_DENIED:I = -0x1

.field public static final whitelist PERMISSION_GRANTED:I = 0x0

.field public static final blacklist PROPERTY_ALLOW_ADB_BACKUP:Ljava/lang/String; = "android.backup.ALLOW_ADB_BACKUP"

.field public static final blacklist PROPERTY_ANDROID_SAFETY_LABEL:Ljava/lang/String; = "android.content.PROPERTY_ANDROID_SAFETY_LABEL"

.field public static final whitelist PROPERTY_COMPAT_OVERRIDE_LANDSCAPE_TO_PORTRAIT:Ljava/lang/String; = "android.camera.PROPERTY_COMPAT_OVERRIDE_LANDSCAPE_TO_PORTRAIT"

.field public static final blacklist PROPERTY_LEGACY_UPDATE_OWNERSHIP_DENYLIST:Ljava/lang/String; = "android.app.PROPERTY_LEGACY_UPDATE_OWNERSHIP_DENYLIST"

.field public static final whitelist PROPERTY_MEDIA_CAPABILITIES:Ljava/lang/String; = "android.media.PROPERTY_MEDIA_CAPABILITIES"

.field public static final blacklist PROPERTY_NO_APP_DATA_STORAGE:Ljava/lang/String; = "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

.field public static final whitelist PROPERTY_SELF_CERTIFIED_NETWORK_CAPABILITIES:Ljava/lang/String; = "android.net.PROPERTY_SELF_CERTIFIED_NETWORK_CAPABILITIES"

.field public static final whitelist PROPERTY_SPECIAL_USE_FGS_SUBTYPE:Ljava/lang/String; = "android.app.PROPERTY_SPECIAL_USE_FGS_SUBTYPE"

.field public static final whitelist PROPERTY_USE_RESTRICTED_BACKUP_MODE:Ljava/lang/String; = "android.app.backup.PROPERTY_USE_RESTRICTED_BACKUP_MODE"

.field public static final whitelist RESTRICTION_HIDE_FROM_SUGGESTIONS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTRICTION_HIDE_NOTIFICATIONS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTRICTION_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLLBACK_DATA_POLICY_RESTORE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLLBACK_DATA_POLICY_RETAIN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLLBACK_DATA_POLICY_WIPE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLLBACK_USER_IMPACT_HIGH:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLLBACK_USER_IMPACT_LOW:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROLLBACK_USER_IMPACT_ONLY_MANUAL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SDK_FEATURE_COUNT:I = 0xbc

.field public static final whitelist SIGNATURE_FIRST_NOT_SIGNED:I = -0x1

.field public static final whitelist SIGNATURE_MATCH:I = 0x0

.field public static final whitelist SIGNATURE_NEITHER_SIGNED:I = 0x1

.field public static final whitelist SIGNATURE_NO_MATCH:I = -0x3

.field public static final whitelist SIGNATURE_SECOND_NOT_SIGNED:I = -0x2

.field public static final whitelist SIGNATURE_UNKNOWN_PACKAGE:I = -0x4

.field public static final greylist-max-o SKIP_CURRENT_PROFILE:I = 0x2

.field public static final whitelist SYNCHRONOUS:I = 0x2

.field public static final whitelist SYSTEM_APP_STATE_HIDDEN_UNTIL_INSTALLED_HIDDEN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SYSTEM_APP_STATE_HIDDEN_UNTIL_INSTALLED_VISIBLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SYSTEM_APP_STATE_INSTALLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SYSTEM_APP_STATE_UNINSTALLED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-r SYSTEM_SHARED_LIBRARY_SERVICES:Ljava/lang/String; = "android.ext.services"

.field public static final greylist-max-r SYSTEM_SHARED_LIBRARY_SHARED:Ljava/lang/String; = "android.ext.shared"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PackageManager"

.field public static final whitelist TRUST_ALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TRUST_NONE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_ACTIVITY:I = 0x1

.field public static final blacklist TYPE_APPLICATION:I = 0x5

.field public static final blacklist TYPE_PROVIDER:I = 0x4

.field public static final blacklist TYPE_RECEIVER:I = 0x2

.field public static final blacklist TYPE_SERVICE:I = 0x3

.field public static final blacklist TYPE_UNKNOWN:I = 0x0

.field public static final blacklist UNINSTALL_REASON_UNKNOWN:I = 0x0

.field public static final blacklist UNINSTALL_REASON_USER_TYPE:I = 0x1

.field public static final blacklist USER_MIN_ASPECT_RATIO_16_9:I = 0x4

.field public static final blacklist USER_MIN_ASPECT_RATIO_3_2:I = 0x5

.field public static final blacklist USER_MIN_ASPECT_RATIO_4_3:I = 0x3

.field public static final blacklist USER_MIN_ASPECT_RATIO_APP_DEFAULT:I = 0x7

.field public static final blacklist USER_MIN_ASPECT_RATIO_DISPLAY_SIZE:I = 0x2

.field public static final blacklist USER_MIN_ASPECT_RATIO_FULLSCREEN:I = 0x6

.field public static final blacklist USER_MIN_ASPECT_RATIO_SPLIT_SCREEN:I = 0x1

.field public static final blacklist USER_MIN_ASPECT_RATIO_UNSET:I = 0x0

.field public static final whitelist VERIFICATION_ALLOW:I = 0x1

.field public static final greylist-max-o VERIFICATION_ALLOW_WITHOUT_SUFFICIENT:I = 0x2

.field public static final whitelist VERIFICATION_REJECT:I = -0x1

.field public static final whitelist VERSION_CODE_HIGHEST:I = -0x1

.field public static final blacklist sApplicationInfoCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/content/pm/PackageManager$ApplicationInfoQuery;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sPackageInfoCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/content/pm/PackageManager$PackageInfoQuery;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetApplicationInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetPackageInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 5555
    const-class v0, Landroid/app/AppDetailsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 11252
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/content/pm/PackageManager;->TRUST_ALL:Ljava/util/List;

    .line 11259
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/content/pm/PackageManager;->TRUST_NONE:Ljava/util/List;

    .line 11774
    new-instance v1, Landroid/content/pm/PackageManager$2;

    new-instance v2, Landroid/app/PropertyInvalidatedCache$Args;

    const-string/jumbo v3, "system_server"

    invoke-direct {v2, v3}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    .line 11776
    const/16 v4, 0x800

    invoke-virtual {v2, v4}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v2

    invoke-static {}, Landroid/content/pm/PackageManager;->packageInfoApi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/PropertyInvalidatedCache$Args;->cacheNulls(Z)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v2

    const-string v6, "getApplicationInfo"

    invoke-direct {v1, v2, v6, v0}, Landroid/content/pm/PackageManager$2;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    sput-object v1, Landroid/content/pm/PackageManager;->sApplicationInfoCache:Landroid/app/PropertyInvalidatedCache;

    .line 11858
    new-instance v1, Landroid/content/pm/PackageManager$3;

    new-instance v2, Landroid/app/PropertyInvalidatedCache$Args;

    invoke-direct {v2, v3}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    .line 11860
    invoke-virtual {v2, v4}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v2

    invoke-static {}, Landroid/content/pm/PackageManager;->packageInfoApi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/PropertyInvalidatedCache$Args;->cacheNulls(Z)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v2

    const-string v3, "getPackageInfo"

    invoke-direct {v1, v2, v3, v0}, Landroid/content/pm/PackageManager$3;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    sput-object v1, Landroid/content/pm/PackageManager;->sPackageInfoCache:Landroid/app/PropertyInvalidatedCache;

    .line 11858
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist corkPackageInfoCache()V
    .registers 1

    .line 11890
    sget-object v0, Landroid/content/pm/PackageManager;->sPackageInfoCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->corkInvalidations()V

    .line 11891
    return-void
.end method

.method public static greylist-max-o deleteStatusToPublicStatus(I)I
    .registers 3

    .line 10876
    const/4 v0, 0x1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_12

    .line 10885
    :pswitch_5
    return v0

    .line 10877
    :pswitch_6
    const/4 p0, 0x0

    return p0

    .line 10878
    :pswitch_8
    return v0

    .line 10879
    :pswitch_9
    return v1

    .line 10880
    :pswitch_a
    return v1

    .line 10881
    :pswitch_b
    return v1

    .line 10882
    :pswitch_c
    const/4 p0, 0x3

    return p0

    .line 10883
    :pswitch_e
    const/4 p0, 0x5

    return p0

    .line 10884
    :pswitch_10
    return v1

    nop

    :pswitch_data_12
    .packed-switch -0x7
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist deleteStatusToString(I)Ljava/lang/String;
    .registers 1

    .line 10861
    packed-switch p0, :pswitch_data_20

    .line 10870
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10862
    :pswitch_8
    const-string p0, "DELETE_SUCCEEDED"

    return-object p0

    .line 10863
    :pswitch_b
    const-string p0, "DELETE_FAILED_INTERNAL_ERROR"

    return-object p0

    .line 10864
    :pswitch_e
    const-string p0, "DELETE_FAILED_DEVICE_POLICY_MANAGER"

    return-object p0

    .line 10865
    :pswitch_11
    const-string p0, "DELETE_FAILED_USER_RESTRICTED"

    return-object p0

    .line 10866
    :pswitch_14
    const-string p0, "DELETE_FAILED_OWNER_BLOCKED"

    return-object p0

    .line 10867
    :pswitch_17
    const-string p0, "DELETE_FAILED_ABORTED"

    return-object p0

    .line 10868
    :pswitch_1a
    const-string p0, "DELETE_FAILED_USED_SHARED_LIBRARY"

    return-object p0

    .line 10869
    :pswitch_1d
    const-string p0, "DELETE_FAILED_APP_PINNED"

    return-object p0

    :pswitch_data_20
    .packed-switch -0x7
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist-max-o deleteStatusToString(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 10849
    invoke-static {p0}, Landroid/content/pm/PackageManager;->deleteStatusToString(I)Ljava/lang/String;

    move-result-object p0

    .line 10850
    if-eqz p1, :cond_1e

    .line 10851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10853
    :cond_1e
    return-object p0
.end method

.method public static blacklist disableApplicationInfoCache()V
    .registers 1

    .line 11799
    sget-object v0, Landroid/content/pm/PackageManager;->sApplicationInfoCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 11800
    return-void
.end method

.method public static blacklist disablePackageInfoCache()V
    .registers 1

    .line 11881
    sget-object v0, Landroid/content/pm/PackageManager;->sPackageInfoCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 11882
    return-void
.end method

.method public static blacklist getApplicationInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .registers 6

    .line 11789
    sget-object v0, Landroid/content/pm/PackageManager;->sApplicationInfoCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/content/pm/PackageManager$ApplicationInfoQuery;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/content/pm/PackageManager$ApplicationInfoQuery;-><init>(Ljava/lang/String;JI)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method private static blacklist getApplicationInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .registers 5

    .line 11756
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 11757
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 11756
    return-object p0

    .line 11758
    :catch_9
    move-exception p0

    .line 11759
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist getPackageInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .registers 6

    .line 11873
    sget-object v0, Landroid/content/pm/PackageManager;->sPackageInfoCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/content/pm/PackageManager$PackageInfoQuery;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/content/pm/PackageManager$PackageInfoQuery;-><init>(Ljava/lang/String;JI)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method private static blacklist getPackageInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .registers 5

    .line 11851
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 11852
    :catch_9
    move-exception p0

    .line 11853
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static whitelist getVerifiedSigningInfo(Ljava/lang/String;I)Landroid/content/pm/SigningInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/SigningInfoException;
        }
    .end annotation

    .line 12129
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 12130
    nop

    .line 12131
    invoke-static {v0, p0, p1}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 12132
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 12136
    new-instance p1, Landroid/content/pm/SigningInfo;

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/SigningDetails;

    invoke-direct {p1, p0}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    return-object p1

    .line 12133
    :cond_1b
    new-instance p1, Landroid/content/pm/SigningInfoException;

    .line 12134
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v0

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Landroid/content/pm/SigningInfoException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static greylist-max-o installStatusToPublicStatus(I)I
    .registers 7

    .line 10794
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x7

    const/4 v5, 0x4

    sparse-switch p0, :sswitch_data_3c

    .line 10842
    return v0

    .line 10795
    :sswitch_a
    const/4 p0, 0x0

    return p0

    .line 10796
    :sswitch_c
    return v3

    .line 10797
    :sswitch_d
    return v5

    .line 10798
    :sswitch_e
    return v5

    .line 10799
    :sswitch_f
    return v2

    .line 10800
    :sswitch_10
    return v3

    .line 10801
    :sswitch_11
    return v3

    .line 10802
    :sswitch_12
    return v3

    .line 10803
    :sswitch_13
    return v3

    .line 10804
    :sswitch_14
    return v4

    .line 10805
    :sswitch_15
    return v3

    .line 10806
    :sswitch_16
    return v5

    .line 10807
    :sswitch_17
    return v4

    .line 10808
    :sswitch_18
    return v3

    .line 10809
    :sswitch_19
    return v4

    .line 10810
    :sswitch_1a
    return v5

    .line 10811
    :sswitch_1b
    return v4

    .line 10812
    :sswitch_1c
    return v4

    .line 10813
    :sswitch_1d
    return v2

    .line 10814
    :sswitch_1e
    return v2

    .line 10815
    :sswitch_1f
    return v2

    .line 10816
    :sswitch_20
    return v1

    .line 10817
    :sswitch_21
    return v1

    .line 10818
    :sswitch_22
    return v5

    .line 10819
    :sswitch_23
    return v5

    .line 10820
    :sswitch_24
    return v5

    .line 10821
    :sswitch_25
    return v5

    .line 10839
    :sswitch_26
    return v4

    .line 10841
    :sswitch_27
    return v4

    .line 10822
    :sswitch_28
    return v5

    .line 10823
    :sswitch_29
    return v5

    .line 10824
    :sswitch_2a
    return v5

    .line 10825
    :sswitch_2b
    return v5

    .line 10826
    :sswitch_2c
    return v5

    .line 10827
    :sswitch_2d
    return v5

    .line 10828
    :sswitch_2e
    return v5

    .line 10829
    :sswitch_2f
    return v5

    .line 10830
    :sswitch_30
    return v5

    .line 10831
    :sswitch_31
    return v5

    .line 10834
    :sswitch_32
    return v0

    .line 10835
    :sswitch_33
    return v4

    .line 10836
    :sswitch_34
    return v3

    .line 10837
    :sswitch_35
    return v4

    .line 10838
    :sswitch_36
    return v1

    .line 10832
    :sswitch_37
    return v5

    .line 10833
    :sswitch_38
    return v5

    .line 10840
    :sswitch_39
    const/4 p0, 0x2

    return p0

    nop

    :sswitch_data_3c
    .sparse-switch
        -0x81 -> :sswitch_39
        -0x76 -> :sswitch_38
        -0x75 -> :sswitch_37
        -0x73 -> :sswitch_36
        -0x71 -> :sswitch_35
        -0x70 -> :sswitch_34
        -0x6f -> :sswitch_33
        -0x6e -> :sswitch_32
        -0x6d -> :sswitch_31
        -0x6c -> :sswitch_30
        -0x6b -> :sswitch_2f
        -0x6a -> :sswitch_2e
        -0x69 -> :sswitch_2d
        -0x68 -> :sswitch_2c
        -0x67 -> :sswitch_2b
        -0x66 -> :sswitch_2a
        -0x65 -> :sswitch_29
        -0x64 -> :sswitch_28
        -0x1d -> :sswitch_27
        -0x1c -> :sswitch_26
        -0x1a -> :sswitch_25
        -0x19 -> :sswitch_24
        -0x18 -> :sswitch_23
        -0x17 -> :sswitch_22
        -0x16 -> :sswitch_21
        -0x15 -> :sswitch_20
        -0x14 -> :sswitch_1f
        -0x13 -> :sswitch_1e
        -0x12 -> :sswitch_1d
        -0x11 -> :sswitch_1c
        -0x10 -> :sswitch_1b
        -0xf -> :sswitch_1a
        -0xe -> :sswitch_19
        -0xd -> :sswitch_18
        -0xc -> :sswitch_17
        -0xb -> :sswitch_16
        -0xa -> :sswitch_15
        -0x9 -> :sswitch_14
        -0x8 -> :sswitch_13
        -0x7 -> :sswitch_12
        -0x6 -> :sswitch_11
        -0x5 -> :sswitch_10
        -0x4 -> :sswitch_f
        -0x3 -> :sswitch_e
        -0x2 -> :sswitch_d
        -0x1 -> :sswitch_c
        0x1 -> :sswitch_a
    .end sparse-switch
.end method

.method public static greylist installStatusToString(I)Ljava/lang/String;
    .registers 1

    .line 10735
    sparse-switch p0, :sswitch_data_9e

    .line 10788
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10736
    :sswitch_8
    const-string p0, "INSTALL_SUCCEEDED"

    return-object p0

    .line 10737
    :sswitch_b
    const-string p0, "INSTALL_FAILED_ALREADY_EXISTS"

    return-object p0

    .line 10738
    :sswitch_e
    const-string p0, "INSTALL_FAILED_INVALID_APK"

    return-object p0

    .line 10739
    :sswitch_11
    const-string p0, "INSTALL_FAILED_INVALID_URI"

    return-object p0

    .line 10740
    :sswitch_14
    const-string p0, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    return-object p0

    .line 10741
    :sswitch_17
    const-string p0, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    return-object p0

    .line 10742
    :sswitch_1a
    const-string p0, "INSTALL_FAILED_NO_SHARED_USER"

    return-object p0

    .line 10743
    :sswitch_1d
    const-string p0, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    return-object p0

    .line 10744
    :sswitch_20
    const-string p0, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    return-object p0

    .line 10745
    :sswitch_23
    const-string p0, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    return-object p0

    .line 10746
    :sswitch_26
    const-string p0, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    return-object p0

    .line 10747
    :sswitch_29
    const-string p0, "INSTALL_FAILED_DEXOPT"

    return-object p0

    .line 10748
    :sswitch_2c
    const-string p0, "INSTALL_FAILED_OLDER_SDK"

    return-object p0

    .line 10749
    :sswitch_2f
    const-string p0, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    return-object p0

    .line 10750
    :sswitch_32
    const-string p0, "INSTALL_FAILED_NEWER_SDK"

    return-object p0

    .line 10751
    :sswitch_35
    const-string p0, "INSTALL_FAILED_TEST_ONLY"

    return-object p0

    .line 10752
    :sswitch_38
    const-string p0, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    return-object p0

    .line 10753
    :sswitch_3b
    const-string p0, "INSTALL_FAILED_MISSING_FEATURE"

    return-object p0

    .line 10754
    :sswitch_3e
    const-string p0, "INSTALL_FAILED_CONTAINER_ERROR"

    return-object p0

    .line 10755
    :sswitch_41
    const-string p0, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    return-object p0

    .line 10756
    :sswitch_44
    const-string p0, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    return-object p0

    .line 10757
    :sswitch_47
    const-string p0, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    return-object p0

    .line 10758
    :sswitch_4a
    const-string p0, "INSTALL_FAILED_VERIFICATION_FAILURE"

    return-object p0

    .line 10759
    :sswitch_4d
    const-string p0, "INSTALL_FAILED_PACKAGE_CHANGED"

    return-object p0

    .line 10760
    :sswitch_50
    const-string p0, "INSTALL_FAILED_UID_CHANGED"

    return-object p0

    .line 10761
    :sswitch_53
    const-string p0, "INSTALL_FAILED_VERSION_DOWNGRADE"

    return-object p0

    .line 10778
    :sswitch_56
    const-string p0, "INSTALL_FAILED_MISSING_SPLIT"

    return-object p0

    .line 10779
    :sswitch_59
    const-string p0, "INSTALL_FAILED_DEPRECATED_SDK_VERSION"

    return-object p0

    .line 10762
    :sswitch_5c
    const-string p0, "INSTALL_PARSE_FAILED_NOT_APK"

    return-object p0

    .line 10763
    :sswitch_5f
    const-string p0, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    return-object p0

    .line 10764
    :sswitch_62
    const-string p0, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    return-object p0

    .line 10765
    :sswitch_65
    const-string p0, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    return-object p0

    .line 10766
    :sswitch_68
    const-string p0, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    return-object p0

    .line 10767
    :sswitch_6b
    const-string p0, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    return-object p0

    .line 10768
    :sswitch_6e
    const-string p0, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    return-object p0

    .line 10769
    :sswitch_71
    const-string p0, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    return-object p0

    .line 10770
    :sswitch_74
    const-string p0, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    return-object p0

    .line 10771
    :sswitch_77
    const-string p0, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    return-object p0

    .line 10772
    :sswitch_7a
    const-string p0, "INSTALL_FAILED_INTERNAL_ERROR"

    return-object p0

    .line 10773
    :sswitch_7d
    const-string p0, "INSTALL_FAILED_USER_RESTRICTED"

    return-object p0

    .line 10774
    :sswitch_80
    const-string p0, "INSTALL_FAILED_DUPLICATE_PERMISSION"

    return-object p0

    .line 10775
    :sswitch_83
    const-string p0, "INSTALL_FAILED_NO_MATCHING_ABIS"

    return-object p0

    .line 10776
    :sswitch_86
    const-string p0, "INSTALL_FAILED_ABORTED"

    return-object p0

    .line 10783
    :sswitch_89
    const-string p0, "INSTALL_FAILED_SESSION_INVALID"

    return-object p0

    .line 10777
    :sswitch_8c
    const-string p0, "INSTALL_FAILED_BAD_DEX_METADATA"

    return-object p0

    .line 10780
    :sswitch_8f
    const-string p0, "INSTALL_FAILED_BAD_SIGNATURE"

    return-object p0

    .line 10781
    :sswitch_92
    const-string p0, "INSTALL_FAILED_WRONG_INSTALLED_VERSION"

    return-object p0

    .line 10782
    :sswitch_95
    const-string p0, "INSTALL_FAILED_PROCESS_NOT_DEFINED"

    return-object p0

    .line 10785
    :sswitch_98
    const-string p0, "INSTALL_FAILED_SHARED_LIBRARY_BAD_CERTIFICATE_DIGEST"

    return-object p0

    .line 10787
    :sswitch_9b
    const-string p0, "INSTALL_FAILED_MULTI_ARCH_NOT_MATCH_ALL_NATIVE_ABIS"

    return-object p0

    :sswitch_data_9e
    .sparse-switch
        -0x83 -> :sswitch_9b
        -0x82 -> :sswitch_98
        -0x7a -> :sswitch_95
        -0x79 -> :sswitch_92
        -0x76 -> :sswitch_8f
        -0x75 -> :sswitch_8c
        -0x74 -> :sswitch_89
        -0x73 -> :sswitch_86
        -0x71 -> :sswitch_83
        -0x70 -> :sswitch_80
        -0x6f -> :sswitch_7d
        -0x6e -> :sswitch_7a
        -0x6d -> :sswitch_77
        -0x6c -> :sswitch_74
        -0x6b -> :sswitch_71
        -0x6a -> :sswitch_6e
        -0x69 -> :sswitch_6b
        -0x68 -> :sswitch_68
        -0x67 -> :sswitch_65
        -0x66 -> :sswitch_62
        -0x65 -> :sswitch_5f
        -0x64 -> :sswitch_5c
        -0x1d -> :sswitch_59
        -0x1c -> :sswitch_56
        -0x19 -> :sswitch_53
        -0x18 -> :sswitch_50
        -0x17 -> :sswitch_4d
        -0x16 -> :sswitch_4a
        -0x15 -> :sswitch_47
        -0x14 -> :sswitch_44
        -0x13 -> :sswitch_41
        -0x12 -> :sswitch_3e
        -0x11 -> :sswitch_3b
        -0x10 -> :sswitch_38
        -0xf -> :sswitch_35
        -0xe -> :sswitch_32
        -0xd -> :sswitch_2f
        -0xc -> :sswitch_2c
        -0xb -> :sswitch_29
        -0xa -> :sswitch_26
        -0x9 -> :sswitch_23
        -0x8 -> :sswitch_20
        -0x7 -> :sswitch_1d
        -0x6 -> :sswitch_1a
        -0x5 -> :sswitch_17
        -0x4 -> :sswitch_14
        -0x3 -> :sswitch_11
        -0x2 -> :sswitch_e
        -0x1 -> :sswitch_b
        0x1 -> :sswitch_8
    .end sparse-switch
.end method

.method public static greylist-max-r installStatusToString(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 10723
    invoke-static {p0}, Landroid/content/pm/PackageManager;->installStatusToString(I)Ljava/lang/String;

    move-result-object p0

    .line 10724
    if-eqz p1, :cond_1e

    .line 10725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10727
    :cond_1e
    return-object p0
.end method

.method public static blacklist invalidatePackageInfoCache()V
    .registers 1

    .line 11908
    sget-object v0, Landroid/content/pm/PackageManager;->sPackageInfoCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    .line 11909
    return-void
.end method

.method public static greylist-max-o isMoveStatusFinished(I)Z
    .registers 2

    .line 10566
    if-ltz p0, :cond_9

    const/16 v0, 0x64

    if-le p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method public static blacklist maybeGetSdkFeatureIndex(Ljava/lang/String;)I
    .registers 1

    .line 12160
    invoke-static {p0}, Lcom/android/internal/pm/SystemFeaturesMetadata;->maybeGetSdkFeatureIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static blacklist packageInfoApi()Ljava/lang/String;
    .registers 1

    .line 11764
    sget-object v0, Landroid/permission/PermissionManager;->CACHE_KEY_PACKAGE_INFO_CACHE:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->apiFromProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o permissionFlagToString(I)Ljava/lang/String;
    .registers 1

    .line 10892
    sparse-switch p0, :sswitch_data_3c

    .line 10910
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10909
    :sswitch_8
    const-string p0, "AUTO_REVOKED"

    return-object p0

    .line 10908
    :sswitch_b
    const-string p0, "ONE_TIME"

    return-object p0

    .line 10906
    :sswitch_e
    const-string p0, "GRANTED_BY_ROLE"

    return-object p0

    .line 10905
    :sswitch_11
    const-string p0, "APPLY_RESTRICTION"

    return-object p0

    .line 10904
    :sswitch_14
    const-string p0, "RESTRICTION_UPGRADE_EXEMPT"

    return-object p0

    .line 10903
    :sswitch_17
    const-string p0, "RESTRICTION_SYSTEM_EXEMPT"

    return-object p0

    .line 10902
    :sswitch_1a
    const-string p0, "RESTRICTION_INSTALLER_EXEMPT"

    return-object p0

    .line 10901
    :sswitch_1d
    const-string p0, "USER_SENSITIVE_WHEN_DENIED"

    return-object p0

    .line 10900
    :sswitch_20
    const-string p0, "USER_SENSITIVE_WHEN_GRANTED"

    return-object p0

    .line 10899
    :sswitch_23
    const-string p0, "REVOKE_WHEN_REQUESTED"

    return-object p0

    .line 10898
    :sswitch_26
    const-string p0, "REVIEW_REQUIRED"

    return-object p0

    .line 10893
    :sswitch_29
    const-string p0, "GRANTED_BY_DEFAULT"

    return-object p0

    .line 10895
    :sswitch_2c
    const-string p0, "SYSTEM_FIXED"

    return-object p0

    .line 10907
    :sswitch_2f
    const-string p0, "REVOKED_COMPAT"

    return-object p0

    .line 10894
    :sswitch_32
    const-string p0, "POLICY_FIXED"

    return-object p0

    .line 10897
    :sswitch_35
    const-string p0, "USER_FIXED"

    return-object p0

    .line 10896
    :sswitch_38
    const-string p0, "USER_SET"

    return-object p0

    nop

    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_38
        0x2 -> :sswitch_35
        0x4 -> :sswitch_32
        0x8 -> :sswitch_2f
        0x10 -> :sswitch_2c
        0x20 -> :sswitch_29
        0x40 -> :sswitch_26
        0x80 -> :sswitch_23
        0x100 -> :sswitch_20
        0x200 -> :sswitch_1d
        0x800 -> :sswitch_1a
        0x1000 -> :sswitch_17
        0x2000 -> :sswitch_14
        0x4000 -> :sswitch_11
        0x8000 -> :sswitch_e
        0x10000 -> :sswitch_b
        0x20000 -> :sswitch_8
    .end sparse-switch
.end method

.method public static blacklist uncorkPackageInfoCache()V
    .registers 1

    .line 11899
    sget-object v0, Landroid/content/pm/PackageManager;->sPackageInfoCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->uncorkInvalidations()V

    .line 11900
    return-void
.end method


# virtual methods
.method public abstract greylist addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V
.end method

.method public abstract whitelist addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist addPackageToPreferred(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist addPermission(Landroid/content/pm/PermissionInfo;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public greylist addPreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9772
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented. Must override in a subclass."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist addUniquePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 5

    .line 9871
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addUniquePreferredActivity not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist addWhitelistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4

    .line 7144
    const/4 p1, 0x0

    return p1
.end method

.method public abstract whitelist arePermissionsIndividuallyControlled()Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public greylist buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 7320
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 7323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7324
    const-string v1, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 7325
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7326
    return-object v0

    .line 7321
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "permission cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist canPackageQuery(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 11633
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "canPackageQuery not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist canPackageQuery(Ljava/lang/String;[Ljava/lang/String;)[Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 11655
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "canPackageQuery not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist canRequestPackageInstalls()Z
.end method

.method public whitelist canUserUninstall(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11970
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "canUserUninstall not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract whitelist checkPermission(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract whitelist checkSignatures(II)I
.end method

.method public abstract whitelist checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract greylist clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract greylist clearCrossProfileIntentFilters(I)V
.end method

.method public abstract whitelist clearInstantAppCookie()V
.end method

.method public abstract whitelist clearPackagePreferredActivities(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract greylist deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract greylist deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract greylist deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
.end method

.method public abstract greylist deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
.end method

.method public abstract whitelist extendVerificationTimeout(IIJ)V
.end method

.method public blacklist extractPackageItemInfoAttributes(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;[I)Landroid/content/res/TypedArray;
    .registers 5

    .line 12112
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "parseServiceMetadata not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract greylist flushPackageRestrictionsAsUser(I)V
.end method

.method public greylist freeStorage(JLandroid/content/IntentSender;)V
    .registers 5

    .line 9640
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V

    .line 9641
    return-void
.end method

.method public abstract greylist freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
.end method

.method public greylist freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    .registers 5

    .line 9606
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V

    .line 9607
    return-void
.end method

.method public abstract greylist freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract whitelist getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6459
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getActivityInfo not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getAllPermissionGroups(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist getAppMetadata(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6621
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getAppMetadata not implemented in subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getAppMetadataSource(Ljava/lang/String;)I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6644
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getAppMetadataSource not implemented in subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getAppPredictionServicePackageName()Ljava/lang/String;
    .registers 3

    .line 11368
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAppPredictionServicePackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract whitelist getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getApplicationEnabledSetting(Ljava/lang/String;)I
.end method

.method public abstract greylist getApplicationHiddenSettingAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
.end method

.method public abstract whitelist getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract whitelist getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6358
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getApplicationInfo not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract greylist getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6409
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6378
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getApplicationInfoAsUser not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;Landroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6422
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
.end method

.method public abstract whitelist getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract whitelist getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getArchivedPackage(Ljava/lang/String;)Landroid/content/pm/ArchivedPackageInfo;
    .registers 3

    .line 11702
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getArchivedPackage not implemented in subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getArtManager()Landroid/content/pm/dex/ArtManager;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getArtManager not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAttentionServicePackageName()Ljava/lang/String;
    .registers 3

    .line 11335
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAttentionServicePackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBackgroundPermissionOptionLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 7305
    const-string v0, ""

    return-object v0
.end method

.method public abstract greylist-max-o getCarLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract whitelist getChangedPackages(I)Landroid/content/pm/ChangedPackages;
.end method

.method public abstract whitelist getComponentEnabledSetting(Landroid/content/ComponentName;)I
.end method

.method public final blacklist getContentCaptureServicePackageName()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11408
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getContentCaptureServicePackageName is deprecated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDeclaredSharedLibraries(Ljava/lang/String;I)Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 7706
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getDeclaredSharedLibraries() not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getDeclaredSharedLibraries(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 7719
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getDeclaredSharedLibraries() not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract whitelist getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public blacklist getDefaultTextClassifierPackageName()Ljava/lang/String;
    .registers 3

    .line 11313
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getDefaultTextClassifierPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public whitelist getGroupOfPlatformPermission(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6327
    return-void
.end method

.method public whitelist getHarmfulAppWarning(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11181
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getHarmfulAppWarning not implemented in subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getHoldLockToken()Landroid/os/IBinder;
    .registers 2

    .line 11919
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getHoldLockToken()Landroid/os/IBinder;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 11920
    :catch_9
    move-exception v0

    .line 11921
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public abstract greylist getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation
.end method

.method public whitelist getIncidentReportApproverPackageName()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11421
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getIncidentReportApproverPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract blacklist getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I
.end method

.method public whitelist getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 9504
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getInstallSourceInfo not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist getInstalledApplications(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist getInstalledApplications(Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$ApplicationInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 7454
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getInstalledApplications not implemented in subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract blacklist getInstalledApplicationsAsUser(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public blacklist getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$ApplicationInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 7494
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getInstalledApplicationsAsUser not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getInstalledModules(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ModuleInfo;",
            ">;"
        }
    .end annotation

    .line 6575
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getInstalledModules not implemented in subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist getInstalledPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 6602
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getInstalledPackages not implemented in subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist getInstalledPackagesAsUser(II)Ljava/util/List;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 6713
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getApplicationInfoAsUser not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract greylist-max-o getInstantAppAndroidId(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;
.end method

.method public abstract whitelist getInstantAppCookie()[B
.end method

.method public abstract whitelist getInstantAppCookieMaxBytes()I
.end method

.method public abstract greylist-max-o getInstantAppCookieMaxSize()I
.end method

.method public abstract whitelist getInstantAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist getInstantAppInstallerComponent()Landroid/content/ComponentName;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist getInstantApps()Ljava/util/List;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getIntentVerificationStatusAsUser(Ljava/lang/String;I)I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract greylist getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
.end method

.method public abstract whitelist getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public blacklist getLaunchIntentForPackage(Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 3

    .line 6039
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getLaunchIntentForPackage(packageName, includeDirectBootUnaware) not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getLaunchIntentSenderForPackage(Ljava/lang/String;)Landroid/content/IntentSender;
    .registers 3

    .line 6092
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getLaunchIntentSenderForPackage not implementedin subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public whitelist getMimeGroup(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11512
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getMimeGroup not implemented in subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6561
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getModuleInfo not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract greylist getMoveStatus(I)I
.end method

.method public abstract whitelist getNameForUid(I)Ljava/lang/String;
.end method

.method public abstract blacklist getNamesForUids([I)[Ljava/lang/String;
.end method

.method public whitelist getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 5

    .line 9078
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .registers 10

    .line 9087
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9089
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->getValue()J

    move-result-wide p1

    .line 9090
    const-wide/32 v1, 0xc0000

    and-long v3, p1, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_15

    goto :goto_16

    .line 9096
    :cond_15
    or-long/2addr p1, v1

    .line 9099
    :goto_16
    nop

    .line 9100
    const-wide/32 v1, 0x8000040

    and-long/2addr v1, p1

    cmp-long v1, v1, v5

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 9101
    const/16 v1, 0x20

    goto :goto_24

    .line 9100
    :cond_23
    move v1, v2

    .line 9104
    :goto_24
    new-instance v3, Lcom/android/internal/pm/parsing/PackageParser2;

    new-instance v4, Landroid/content/pm/PackageManager$1;

    invoke-direct {v4, p0}, Landroid/content/pm/PackageManager$1;-><init>(Landroid/content/pm/PackageManager;)V

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v5, v4}, Lcom/android/internal/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Lcom/android/internal/pm/parsing/IPackageCacher;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    .line 9132
    :try_start_2f
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    .line 9133
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 9135
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v1, p1, p2, v2}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generate(Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_3e
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_2f .. :try_end_3e} :catch_44
    .catchall {:try_start_2f .. :try_end_3e} :catchall_42

    .line 9140
    invoke-virtual {v3}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V

    .line 9135
    return-object p1

    .line 9140
    :catchall_42
    move-exception p1

    goto :goto_62

    .line 9136
    :catch_44
    move-exception p1

    .line 9137
    :try_start_45
    const-string p1, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure to parse package archive apkFile= "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_45 .. :try_end_5d} :catchall_42

    .line 9138
    nop

    .line 9140
    invoke-virtual {v3}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V

    .line 9138
    return-object v5

    .line 9140
    :goto_62
    invoke-virtual {v3}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V

    .line 9141
    throw p1
.end method

.method public abstract greylist-max-r getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-r getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;
.end method

.method public abstract whitelist getPackageGids(Ljava/lang/String;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getPackageGids(Ljava/lang/String;I)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getPackageGids(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)[I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6139
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getPackageGids not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist getPackageInfo(Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getPackageInfo(Landroid/content/pm/VersionedPackage;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5930
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getPackageInfo not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5893
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getPackageInfo not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract greylist getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public blacklist getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5969
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getPackageInfoAsUser not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist getPackageInstaller()Landroid/content/pm/PackageInstaller;
.end method

.method public greylist getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9684
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 9685
    return-void
.end method

.method public abstract greylist getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getPackageUid(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6165
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getPackageUid not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract greylist getPackageUidAsUser(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract greylist getPackageUidAsUser(Ljava/lang/String;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6217
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getPackageUidAsUser not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist getPackagesForUid(I)[Ljava/lang/String;
.end method

.method public abstract whitelist getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist getPackagesHoldingPermissions([Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 6675
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getPackagesHoldingPermissions not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getPageSizeCompatWarningMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 11166
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getPageSizeCompatWarningMessage not implemented in subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getPermissionControllerPackageName()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6770
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getPlatformPermissionsForGroup(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 6314
    return-void
.end method

.method public abstract whitelist getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getPreferredPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract greylist-max-o getPrimaryStorageCandidateVolumes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;
.end method

.method public whitelist getProperty(Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/pm/PackageManager$Property;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 11538
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getProperty not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 11525
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getProperty not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 11553
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getPropertyAsUser not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getProviderInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6544
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getProviderInfo not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getReceiverInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6488
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getReceiverInfo not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getResourcesForApplication(Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 9015
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract greylist-max-r getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public blacklist getRotationResolverPackageName()Ljava/lang/String;
    .registers 3

    .line 11345
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRotationResolverPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getSdkSandboxPackageName()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6784
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6515
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getServiceInfo not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract greylist getServicesSystemSharedLibraryPackageName()Ljava/lang/String;
.end method

.method public blacklist getSetupWizardPackageName()Ljava/lang/String;
    .registers 3

    .line 11390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSetupWizardPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getSharedLibraries(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist getSharedLibraries(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 7655
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getSharedLibraries() not implemented in subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract greylist-max-o getSharedLibrariesAsUser(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end method

.method public blacklist getSharedLibrariesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 7685
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getSharedLibrariesAsUser() not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract greylist getSharedSystemSharedLibraryPackageName()Ljava/lang/String;
.end method

.method public abstract greylist getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
.end method

.method public whitelist getSuspendedPackageAppExtras()Landroid/os/Bundle;
    .registers 3

    .line 10502
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSuspendedPackageAppExtras not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getSuspendingPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 10520
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getSuspendingPackage not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getSyntheticAppDetailsActivityEnabled(Ljava/lang/String;)Z
    .registers 3

    .line 9998
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getSyntheticAppDetailsActivityEnabled not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
.end method

.method public blacklist getSystemCaptionsServicePackageName()Ljava/lang/String;
    .registers 3

    .line 11379
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSystemCaptionsServicePackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getSystemSharedLibraryNames()[Ljava/lang/String;
.end method

.method public greylist-max-o getSystemTextClassifierPackageName()Ljava/lang/String;
    .registers 3

    .line 11325
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSystemTextClassifierPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTargetSdkVersion(Ljava/lang/String;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 6431
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract whitelist getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
.end method

.method public abstract greylist getUidForSharedUser(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getUnsuspendablePackages([Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10427
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getUnsuspendablePackages not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract greylist getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract greylist getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract whitelist getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract whitelist getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract whitelist getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
.end method

.method public greylist-max-o getUserId()I
    .registers 2

    .line 5854
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public abstract greylist-max-o getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
.end method

.method public blacklist getWellbeingPackageName()Ljava/lang/String;
    .registers 3

    .line 11357
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getWellbeingPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getWhitelistedRestrictedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7082
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
.end method

.method public abstract whitelist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public whitelist hasSigningCertificate(I[BI)Z
    .registers 4

    .line 11244
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "hasSigningCertificate not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist hasSigningCertificate(Ljava/lang/String;[BI)Z
    .registers 4

    .line 11220
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "hasSigningCertificate not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist hasSystemFeature(Ljava/lang/String;)Z
.end method

.method public abstract whitelist hasSystemFeature(Ljava/lang/String;I)Z
.end method

.method public blacklist holdLock(Landroid/os/IBinder;I)V
    .registers 4

    .line 11935
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->holdLock(Landroid/os/IBinder;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 11938
    nop

    .line 11939
    return-void

    .line 11936
    :catch_9
    move-exception p1

    .line 11937
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public abstract whitelist installExistingPackage(Ljava/lang/String;)I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist installExistingPackage(Ljava/lang/String;I)I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract greylist installExistingPackageAsUser(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist isAppArchivable(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 9515
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "isAppArchivable not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist isAutoRevokeWhitelisted()Z
    .registers 3

    .line 11461
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isAutoRevokeWhitelisted not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isAutoRevokeWhitelisted(Ljava/lang/String;)Z
    .registers 2

    .line 7273
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist isDefaultApplicationIcon(Landroid/graphics/drawable/Drawable;)Z
    .registers 4

    .line 11479
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 11480
    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getSourceDrawableResId()I

    move-result p1

    goto :goto_d

    :cond_c
    move p1, v1

    .line 11481
    :goto_d
    const v0, 0x1080093

    if-eq p1, v0, :cond_17

    const v0, 0x1080a33

    if-ne p1, v0, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public whitelist isDeviceUpgrading()Z
    .registers 2

    .line 10639
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist isInstantApp()Z
.end method

.method public abstract whitelist isInstantApp(Ljava/lang/String;)Z
.end method

.method public abstract greylist isPackageAvailable(Ljava/lang/String;)Z
.end method

.method public blacklist isPackageQuarantined(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 10548
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "isPackageQuarantined not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o isPackageStateProtected(Ljava/lang/String;I)Z
    .registers 3

    .line 11432
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "isPackageStateProtected not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist isPackageStopped(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 10532
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "isPackageStopped not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist isPackageSuspended()Z
    .registers 3

    .line 10478
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isPackageSuspended not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isPackageSuspended(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 10452
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "isPackageSuspended not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract greylist isPackageSuspendedForUser(Ljava/lang/String;I)Z
.end method

.method public blacklist isPageSizeCompatEnabled(Ljava/lang/String;)Z
    .registers 3

    .line 11154
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "isPageSizeCompatEnabled not implemented in subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract whitelist isSafeMode()Z
.end method

.method public abstract greylist isSignedBy(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
.end method

.method public abstract greylist isSignedByExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
.end method

.method public abstract greylist isUpgrade()Z
.end method

.method public abstract blacklist isWirelessConsentModeEnabled()Z
.end method

.method public abstract greylist loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract greylist loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public blacklist makeProviderVisible(ILjava/lang/String;)V
    .registers 4

    .line 11668
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->makeProviderVisible(ILjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 11671
    nop

    .line 11672
    return-void

    .line 11669
    :catch_9
    move-exception p1

    .line 11670
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist makeUidVisible(II)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 11692
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "makeUidVisible not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract greylist-max-r movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I
.end method

.method public abstract greylist-max-o movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I
.end method

.method public whitelist parseAndroidManifest(Landroid/os/ParcelFileDescriptor;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/function/Function<",
            "Landroid/content/res/XmlResourceParser;",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12099
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "parseAndroidManifest not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist parseAndroidManifest(Ljava/io/File;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/util/function/Function<",
            "Landroid/content/res/XmlResourceParser;",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12078
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "parseAndroidManifest not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist queryActivityProperty(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 11575
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "qeuryActivityProperty not implemented in subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist queryApplicationProperty(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 11564
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "qeuryApplicationProperty not implemented in subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public greylist queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8150
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1a

    const-string v2, "Shame on you for calling the hidden API queryBroadcastReceivers(). Shame!"

    if-ge v0, v1, :cond_18

    .line 8153
    const-string v0, "PackageManager"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8154
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 8151
    :cond_18
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist queryBroadcastReceivers(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 8079
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "queryBroadcastReceivers not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract greylist queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 8104
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 8137
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "queryBroadcastReceiversAsUser not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 8116
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end method

.method public greylist-max-o queryContentProviders(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 8526
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/pm/PackageManager$ComponentInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 8500
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "queryContentProviders not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/pm/PackageManager$ComponentInfoFlags;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 8537
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 7933
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "queryIntentActivities not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract greylist queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist queryIntentActivitiesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 8001
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 7970
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "queryIntentActivitiesAsUser not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 8013
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist queryIntentActivityOptions(Landroid/content/ComponentName;Ljava/util/List;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 8055
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "queryIntentActivityOptions not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist queryIntentContentProviders(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 8387
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "queryIntentContentProviders not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract greylist queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist queryIntentContentProvidersAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 8349
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist queryIntentContentProvidersAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 8325
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "queryIntentContentProvidersAsUser not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist queryIntentContentProvidersAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 8361
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 8225
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "queryIntentServices not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract greylist queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist queryIntentServicesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 8283
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 8258
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "queryIntentServicesAsUser not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 8295
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist queryProviderProperty(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 11586
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "qeuryProviderProperty not implemented in subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist queryReceiverProperty(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 11597
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "qeuryReceiverProperty not implemented in subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist queryServiceProperty(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 11608
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "qeuryServiceProperty not implemented in subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist registerDexModule(Ljava/lang/String;Landroid/content/pm/PackageManager$DexModuleRegisterCallback;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract greylist registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V
.end method

.method public blacklist registerPackageMonitorCallback(Landroid/os/IRemoteCallback;I)V
    .registers 3

    .line 12009
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "registerPackageMonitorCallback not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist relinquishUpdateOwnership(Ljava/lang/String;)V
    .registers 3

    .line 11997
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "relinquishUpdateOwnership not implemented in subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist removeCrossProfileIntentFilter(Landroid/content/IntentFilter;III)Z
    .registers 5

    .line 10680
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "removeCrossProfileIntentFilter not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist removePackageFromPreferred(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist removePermission(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist removeWhitelistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4

    .line 7213
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist replacePreferredActivity(Landroid/content/IntentFilter;ILjava/util/List;Landroid/content/ComponentName;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .line 9825
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/ComponentName;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/content/ComponentName;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 9826
    return-void
.end method

.method public abstract greylist replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public greylist replacePreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9842
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented. Must override in a subclass."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist requestChecksums(Ljava/lang/String;ZILjava/util/List;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Landroid/content/pm/PackageManager$OnChecksumsReadyListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 11302
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "requestChecksums not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
.end method

.method public whitelist resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;
    .registers 3

    .line 7830
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "resolveActivity not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract greylist resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
.end method

.method public blacklist resolveActivityAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;
    .registers 4

    .line 7903
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "resolveActivityAsUser not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist resolveActivityAsUser(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .registers 7

    .line 7873
    int-to-long v0, p3

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist resolveActivityAsUser(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;
    .registers 5

    .line 7883
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "resolveActivityAsUser not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
.end method

.method public whitelist resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;
    .registers 3

    .line 8417
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "resolveContentProvider not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract greylist resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
.end method

.method public blacklist resolveContentProviderAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;I)Landroid/content/pm/ProviderInfo;
    .registers 4

    .line 8447
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "resolveContentProviderAsUser not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist resolveContentProviderForUid(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;I)Landroid/content/pm/ProviderInfo;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8466
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "resolveContentProviderForUid not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
.end method

.method public whitelist resolveService(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;
    .registers 3

    .line 8178
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "resolveService not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract greylist-max-o resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
.end method

.method public blacklist resolveServiceAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;
    .registers 4

    .line 8198
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "resolveServiceAsUser not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public whitelist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6980
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 6981
    return-void
.end method

.method public whitelist sendDeviceCustomizationReadyBroadcast()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11446
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "sendDeviceCustomizationReadyBroadcast not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist setApplicationCategoryHint(Ljava/lang/String;I)V
.end method

.method public abstract whitelist setApplicationEnabledSetting(Ljava/lang/String;II)V
.end method

.method public abstract greylist setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
.end method

.method public whitelist setAutoRevokeWhitelisted(Ljava/lang/String;Z)Z
    .registers 3

    .line 7245
    const/4 p1, 0x0

    return p1
.end method

.method public abstract whitelist setComponentEnabledSetting(Landroid/content/ComponentName;II)V
.end method

.method public whitelist setComponentEnabledSettings(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$ComponentEnabledSetting;",
            ">;)V"
        }
    .end annotation

    .line 9952
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "setComponentEnabledSettings not implementedin subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public whitelist setDistractingPackageRestrictions([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10225
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "setDistractingPackageRestrictions not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11132
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "setHarmfulAppWarning not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract greylist setInstantAppCookie([B)Z
.end method

.method public blacklist setKeepUninstalledPackages(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 11951
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->setKeepUninstalledPackages(Ljava/util/List;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 11954
    nop

    .line 11955
    return-void

    .line 11952
    :catch_9
    move-exception p1

    .line 11953
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setMimeGroup(Ljava/lang/String;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 11496
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "setMimeGroup not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;)[Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10338
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "setPackagesSuspended not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;I)[Ljava/lang/String;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10402
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "setPackagesSuspended not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10281
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "setPackagesSuspended not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setPageSizeAppCompatFlagsSettingsOverride(Ljava/lang/String;Z)V
    .registers 3

    .line 11143
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "setPageSizeAppCompatFlagsSettingsOverride not implemented in subclass"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setSyntheticAppDetailsActivityEnabled(Ljava/lang/String;Z)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9983
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "setSyntheticAppDetailsActivityEnabled not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setSystemAppState(Ljava/lang/String;I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10082
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented. Must override in a subclass"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist setUpdateAvailable(Ljava/lang/String;Z)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public whitelist shouldShowNewAppInstalledNotification()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11982
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "isShowNewAppInstalledNotificationEnabled not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
.end method

.method public abstract greylist unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V
.end method

.method public blacklist unregisterPackageMonitorCallback(Landroid/os/IRemoteCallback;)V
    .registers 3

    .line 12021
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "unregisterPackageMonitorCallback not implemented in subclass"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist updateInstantAppCookie([B)V
.end method

.method public abstract whitelist updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist verifyIntentFilter(IILjava/util/List;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist verifyPendingInstall(II)V
.end method
