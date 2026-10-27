.class Lcom/android/server/devicepolicy/ActiveAdmin;
.super Ljava/lang/Object;
.source "ActiveAdmin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;
    }
.end annotation


# static fields
.field private static final ATTR_LAST_NETWORK_LOGGING_NOTIFICATION:Ljava/lang/String; = "last-notification"

.field private static final ATTR_NUM_NETWORK_LOGGING_NOTIFICATIONS:Ljava/lang/String; = "num-notifications"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field static final DEF_KEYGUARD_FEATURES_DISABLED:I = 0x0

.field static final DEF_MAXIMUM_FAILED_PASSWORDS_FOR_WIPE:I = 0x0

.field static final DEF_MAXIMUM_NETWORK_LOGGING_NOTIFICATIONS_SHOWN:I = 0x2

.field static final DEF_MAXIMUM_TIME_TO_UNLOCK:J = 0x0L

.field static final DEF_ORGANIZATION_COLOR:I

.field static final DEF_PASSWORD_EXPIRATION_DATE:J = 0x0L

.field static final DEF_PASSWORD_EXPIRATION_TIMEOUT:J = 0x0L

.field static final DEF_PASSWORD_HISTORY_LENGTH:I = 0x0

.field private static final TAG_ACCOUNT_TYPE:Ljava/lang/String; = "account-type"

.field private static final TAG_ADMIN_CAN_GRANT_SENSORS_PERMISSIONS:Ljava/lang/String; = "admin-can-grant-sensors-permissions"

.field private static final TAG_ALWAYS_ON_VPN_LOCKDOWN:Ljava/lang/String; = "vpn-lockdown"

.field private static final TAG_ALWAYS_ON_VPN_PACKAGE:Ljava/lang/String; = "vpn-package"

.field private static final TAG_COMMON_CRITERIA_MODE:Ljava/lang/String; = "common-criteria-mode"

.field private static final TAG_CROSS_PROFILE_CALENDAR_PACKAGES:Ljava/lang/String; = "cross-profile-calendar-packages"

.field private static final TAG_CROSS_PROFILE_CALENDAR_PACKAGES_NULL:Ljava/lang/String; = "cross-profile-calendar-packages-null"

.field private static final TAG_CROSS_PROFILE_PACKAGES:Ljava/lang/String; = "cross-profile-packages"

.field private static final TAG_CROSS_PROFILE_WIDGET_PROVIDERS:Ljava/lang/String; = "cross-profile-widget-providers"

.field private static final TAG_DEFAULT_ENABLED_USER_RESTRICTIONS:Ljava/lang/String; = "default-enabled-user-restrictions"

.field private static final TAG_DISABLE_ACCOUNT_MANAGEMENT:Ljava/lang/String; = "disable-account-management"

.field private static final TAG_DISABLE_BLUETOOTH_CONTACT_SHARING:Ljava/lang/String; = "disable-bt-contacts-sharing"

.field private static final TAG_DISABLE_CALLER_ID:Ljava/lang/String; = "disable-caller-id"

.field private static final TAG_DISABLE_CAMERA:Ljava/lang/String; = "disable-camera"

.field private static final TAG_DISABLE_CONTACTS_SEARCH:Ljava/lang/String; = "disable-contacts-search"

.field private static final TAG_DISABLE_KEYGUARD_FEATURES:Ljava/lang/String; = "disable-keyguard-features"

.field private static final TAG_DISABLE_SCREEN_CAPTURE:Ljava/lang/String; = "disable-screen-capture"

.field private static final TAG_ENCRYPTION_REQUESTED:Ljava/lang/String; = "encryption-requested"

.field private static final TAG_END_USER_SESSION_MESSAGE:Ljava/lang/String; = "end_user_session_message"

.field private static final TAG_ENROLLMENT_SPECIFIC_ID:Ljava/lang/String; = "enrollment-specific-id"

.field private static final TAG_FACTORY_RESET_PROTECTION_POLICY:Ljava/lang/String; = "factory_reset_protection_policy"

.field private static final TAG_FORCE_EPHEMERAL_USERS:Ljava/lang/String; = "force_ephemeral_users"

.field private static final TAG_GLOBAL_PROXY_EXCLUSION_LIST:Ljava/lang/String; = "global-proxy-exclusion-list"

.field private static final TAG_GLOBAL_PROXY_SPEC:Ljava/lang/String; = "global-proxy-spec"

.field private static final TAG_IS_LOGOUT_ENABLED:Ljava/lang/String; = "is_logout_enabled"

.field private static final TAG_IS_NETWORK_LOGGING_ENABLED:Ljava/lang/String; = "is_network_logging_enabled"

.field private static final TAG_KEEP_UNINSTALLED_PACKAGES:Ljava/lang/String; = "keep-uninstalled-packages"

.field private static final TAG_LONG_SUPPORT_MESSAGE:Ljava/lang/String; = "long-support-message"

.field private static final TAG_MANAGE_TRUST_AGENT_FEATURES:Ljava/lang/String; = "manage-trust-agent-features"

.field private static final TAG_MAX_FAILED_PASSWORD_WIPE:Ljava/lang/String; = "max-failed-password-wipe"

.field private static final TAG_MAX_TIME_TO_UNLOCK:Ljava/lang/String; = "max-time-to-unlock"

.field private static final TAG_METERED_DATA_DISABLED_PACKAGES:Ljava/lang/String; = "metered_data_disabled_packages"

.field private static final TAG_MIN_PASSWORD_LENGTH:Ljava/lang/String; = "min-password-length"

.field private static final TAG_MIN_PASSWORD_LETTERS:Ljava/lang/String; = "min-password-letters"

.field private static final TAG_MIN_PASSWORD_LOWERCASE:Ljava/lang/String; = "min-password-lowercase"

.field private static final TAG_MIN_PASSWORD_NONLETTER:Ljava/lang/String; = "min-password-nonletter"

.field private static final TAG_MIN_PASSWORD_NUMERIC:Ljava/lang/String; = "min-password-numeric"

.field private static final TAG_MIN_PASSWORD_SYMBOLS:Ljava/lang/String; = "min-password-symbols"

.field private static final TAG_MIN_PASSWORD_UPPERCASE:Ljava/lang/String; = "min-password-uppercase"

.field private static final TAG_NEARBY_APP_STREAMING_POLICY:Ljava/lang/String; = "nearby-app-streaming-policy"

.field private static final TAG_NEARBY_NOTIFICATION_STREAMING_POLICY:Ljava/lang/String; = "nearby-notification-streaming-policy"

.field private static final TAG_ORGANIZATION_COLOR:Ljava/lang/String; = "organization-color"

.field private static final TAG_ORGANIZATION_ID:Ljava/lang/String; = "organization-id"

.field private static final TAG_ORGANIZATION_NAME:Ljava/lang/String; = "organization-name"

.field private static final TAG_PACKAGE_LIST_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PARENT_ADMIN:Ljava/lang/String; = "parent-admin"

.field private static final TAG_PASSWORD_COMPLEXITY:Ljava/lang/String; = "password-complexity"

.field private static final TAG_PASSWORD_EXPIRATION_DATE:Ljava/lang/String; = "password-expiration-date"

.field private static final TAG_PASSWORD_EXPIRATION_TIMEOUT:Ljava/lang/String; = "password-expiration-timeout"

.field private static final TAG_PASSWORD_HISTORY_LENGTH:Ljava/lang/String; = "password-history-length"

.field private static final TAG_PASSWORD_QUALITY:Ljava/lang/String; = "password-quality"

.field private static final TAG_PERMITTED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "permitted-accessiblity-services"

.field private static final TAG_PERMITTED_IMES:Ljava/lang/String; = "permitted-imes"

.field private static final TAG_PERMITTED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "permitted-notification-listeners"

.field private static final TAG_POLICIES:Ljava/lang/String; = "policies"

.field private static final TAG_PREFERENTIAL_NETWORK_SERVICE_CONFIG:Ljava/lang/String; = "preferential_network_service_config"

.field private static final TAG_PREFERENTIAL_NETWORK_SERVICE_CONFIGS:Ljava/lang/String; = "preferential_network_service_configs"

.field private static final TAG_PREFERENTIAL_NETWORK_SERVICE_ENABLED:Ljava/lang/String; = "preferential-network-service-enabled"

.field private static final TAG_PROFILE_MAXIMUM_TIME_OFF:Ljava/lang/String; = "profile-max-time-off"

.field private static final TAG_PROFILE_OFF_DEADLINE:Ljava/lang/String; = "profile-off-deadline"

.field private static final TAG_PROTECTED_PACKAGES:Ljava/lang/String; = "protected_packages"

.field private static final TAG_PROVIDER:Ljava/lang/String; = "provider"

.field private static final TAG_REQUIRE_AUTO_TIME:Ljava/lang/String; = "require_auto_time"

.field private static final TAG_RESTRICTION:Ljava/lang/String; = "restriction"

.field private static final TAG_SHORT_SUPPORT_MESSAGE:Ljava/lang/String; = "short-support-message"

.field private static final TAG_SPECIFIES_GLOBAL_PROXY:Ljava/lang/String; = "specifies-global-proxy"

.field private static final TAG_SSID:Ljava/lang/String; = "ssid"

.field private static final TAG_SSID_ALLOWLIST:Ljava/lang/String; = "ssid-allowlist"

.field private static final TAG_SSID_DENYLIST:Ljava/lang/String; = "ssid-denylist"

.field private static final TAG_START_USER_SESSION_MESSAGE:Ljava/lang/String; = "start_user_session_message"

.field private static final TAG_STRONG_AUTH_UNLOCK_TIMEOUT:Ljava/lang/String; = "strong-auth-unlock-timeout"

.field private static final TAG_SUSPEND_PERSONAL_APPS:Ljava/lang/String; = "suspend-personal-apps"

.field private static final TAG_TEST_ONLY_ADMIN:Ljava/lang/String; = "test-only-admin"

.field private static final TAG_TRUST_AGENT_COMPONENT:Ljava/lang/String; = "component"

.field private static final TAG_TRUST_AGENT_COMPONENT_OPTIONS:Ljava/lang/String; = "trust-agent-component-options"

.field private static final TAG_USB_DATA_SIGNALING:Ljava/lang/String; = "usb-data-signaling"

.field private static final TAG_USER_RESTRICTIONS:Ljava/lang/String; = "user-restrictions"

.field private static final TAG_WIFI_MIN_SECURITY:Ljava/lang/String; = "wifi-min-security"

.field private static final USB_DATA_SIGNALING_ENABLED_DEFAULT:Z = true


# instance fields
.field final accountTypesWithManagementDisabled:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field crossProfileWidgetProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field disableBluetoothContactSharing:Z

.field disableCallerId:Z

.field disableCamera:Z

.field disableContactsSearch:Z

.field disableScreenCapture:Z

.field disabledKeyguardFeatures:I

.field encryptionRequested:Z

.field endUserSessionMessage:Ljava/lang/String;

.field forceEphemeralUsers:Z

.field globalProxyExclusionList:Ljava/lang/String;

.field globalProxySpec:Ljava/lang/String;

.field info:Landroid/app/admin/DeviceAdminInfo;

.field isLogoutEnabled:Z

.field isNetworkLoggingEnabled:Z

.field final isParent:Z

.field keepUninstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lastNetworkLoggingNotificationTimeMs:J

.field longSupportMessage:Ljava/lang/CharSequence;

.field public mAdminCanGrantSensorsPermissions:Z

.field public mAlwaysOnVpnLockdown:Z

.field public mAlwaysOnVpnPackage:Ljava/lang/String;

.field mCommonCriteriaMode:Z

.field mCrossProfileCalendarPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCrossProfilePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mEnrollmentSpecificId:Ljava/lang/String;

.field mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

.field mNearbyAppStreamingPolicy:I

.field mNearbyNotificationStreamingPolicy:I

.field public mOrganizationId:Ljava/lang/String;

.field mPasswordComplexity:I

.field mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

.field public mPreferentialNetworkServiceConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;"
        }
    .end annotation
.end field

.field public mPreferentialNetworkServiceEnabled:Z

.field mProfileMaximumTimeOffMillis:J

.field mProfileOffDeadline:J

.field mSuspendPersonalApps:Z

.field mUsbDataSignalingEnabled:Z

.field mWifiMinimumSecurityLevel:I

.field mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

.field maximumFailedPasswordsForWipe:I

.field maximumTimeToUnlock:J

.field meteredDisabledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field numNetworkLoggingNotifications:I

.field organizationColor:I

.field organizationName:Ljava/lang/String;

.field parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

.field passwordExpirationDate:J

.field passwordExpirationTimeout:J

.field passwordHistoryLength:I

.field permittedAccessiblityServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field permittedInputMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field permittedNotificationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protectedPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field requireAutoTime:Z

.field shortSupportMessage:Ljava/lang/CharSequence;

.field specifiesGlobalProxy:Z

.field startUserSessionMessage:Ljava/lang/String;

.field strongAuthUnlockTimeout:J

.field testOnlyAdmin:Z

.field trustAgentInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field userRestrictions:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 285
    const-string v0, "#00796B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    return-void
.end method

.method constructor <init>(Landroid/app/admin/DeviceAdminInfo;Z)V
    .registers 9
    .param p1, "info"    # Landroid/app/admin/DeviceAdminInfo;
    .param p2, "isParent"    # Z

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    .line 174
    new-instance v1, Landroid/app/admin/PasswordPolicy;

    invoke-direct {v1}, Landroid/app/admin/PasswordPolicy;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 177
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    .line 180
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    .line 183
    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    .line 190
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    .line 192
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    .line 195
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 198
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    .line 201
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    .line 205
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    .line 207
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    .line 208
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    .line 209
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    .line 210
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    .line 211
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    .line 212
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    .line 213
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    .line 214
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    .line 215
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    .line 216
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    .line 217
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    .line 221
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    .line 222
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 237
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    .line 264
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    .line 265
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 266
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 268
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    .line 278
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    .line 281
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    .line 282
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    .line 286
    sget v5, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    iput v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    .line 289
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    .line 292
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    .line 293
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    .line 298
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    .line 303
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    .line 306
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    .line 308
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    .line 310
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    .line 318
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceEnabled:Z

    .line 320
    sget-object v1, Landroid/app/admin/PreferentialNetworkServiceConfig;->DEFAULT:Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 321
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    .line 324
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    .line 326
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    .line 329
    iput-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 330
    iput-boolean p2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    .line 331
    return-void
.end method

.method static filterRestrictions(Landroid/os/Bundle;Ljava/util/function/Predicate;)Landroid/os/Bundle;
    .registers 6
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1070
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1071
    .local v0, "result":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1072
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1073
    goto :goto_d

    .line 1075
    :cond_20
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1076
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1078
    .end local v2    # "key":Ljava/lang/String;
    :cond_2a
    goto :goto_d

    .line 1079
    :cond_2b
    return-object v0
.end method

.method private getAllTrustAgentInfos(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/util/ArrayMap;
    .registers 10
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 970
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 972
    .local v0, "outerDepthDAM":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 973
    .local v1, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;>;"
    :cond_9
    :goto_9
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "typeDAM":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4c

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1a

    .line 974
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_4c

    .line 975
    :cond_1a
    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_20

    .line 976
    goto :goto_9

    .line 978
    :cond_20
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 979
    .local v2, "tagDAM":Ljava/lang/String;
    const-string v5, "component"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 980
    const/4 v4, 0x0

    const-string/jumbo v5, "value"

    invoke-interface {p1, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 981
    .local v4, "component":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/ActiveAdmin;->getTrustAgentInfo(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;

    move-result-object v5

    .line 982
    .local v5, "trustAgentInfo":Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;
    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    .end local v4    # "component":Ljava/lang/String;
    .end local v5    # "trustAgentInfo":Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;
    goto :goto_4b

    .line 984
    :cond_3c
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    aput-object v2, v5, v4

    const-string v4, "DevicePolicyManager"

    const-string v6, "Unknown tag under %s: %s"

    invoke-static {v4, v6, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 986
    .end local v2    # "tagDAM":Ljava/lang/String;
    :goto_4b
    goto :goto_9

    .line 987
    :cond_4c
    return-object v1
.end method

.method private getPreferentialNetworkServiceConfigs(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1013
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1015
    .local v0, "outerDepth":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1016
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    :cond_9
    :goto_9
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "typeDAM":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_46

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1a

    .line 1017
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_46

    .line 1018
    :cond_1a
    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_20

    .line 1019
    goto :goto_9

    .line 1021
    :cond_20
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1022
    .local v2, "tagDAM":Ljava/lang/String;
    const-string/jumbo v5, "preferential_network_service_config"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1023
    nop

    .line 1024
    invoke-static {p1, p2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getPreferentialNetworkServiceConfig(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v4

    .line 1026
    .local v4, "preferentialNetworkServiceConfig":Landroid/app/admin/PreferentialNetworkServiceConfig;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    .end local v4    # "preferentialNetworkServiceConfig":Landroid/app/admin/PreferentialNetworkServiceConfig;
    goto :goto_45

    .line 1028
    :cond_36
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    aput-object v2, v5, v4

    const-string v4, "DevicePolicyManager"

    const-string v6, "Unknown tag under %s: %s"

    invoke-static {v4, v6, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1030
    .end local v2    # "tagDAM":Ljava/lang/String;
    :goto_45
    goto :goto_9

    .line 1031
    :cond_46
    return-object v1
.end method

.method private getTrustAgentInfo(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;
    .registers 10
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "outerTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 992
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 994
    .local v0, "outerDepth":I
    new-instance v1, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;-><init>(Landroid/os/PersistableBundle;)V

    .line 995
    .local v1, "result":Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;
    :cond_a
    :goto_a
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_45

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1b

    .line 996
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_45

    .line 997
    :cond_1b
    if-eq v3, v2, :cond_a

    const/4 v2, 0x4

    if-ne v3, v2, :cond_21

    .line 998
    goto :goto_a

    .line 1000
    :cond_21
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1001
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v5, "trust-agent-component-options"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1002
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    goto :goto_44

    .line 1004
    :cond_35
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    aput-object v2, v5, v4

    const-string v4, "DevicePolicyManager"

    const-string v6, "Unknown tag under %s: %s"

    invoke-static {v4, v6, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1006
    .end local v2    # "tag":Ljava/lang/String;
    :goto_44
    goto :goto_a

    .line 1007
    :cond_45
    return-object v1
.end method

.method static synthetic lambda$getGlobalUserRestrictions$3(ILjava/lang/String;)Z
    .registers 3
    .param p0, "adminType"    # I
    .param p1, "key"    # Ljava/lang/String;

    .line 1094
    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isGlobal(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getLocalUserRestrictions$2(ILjava/lang/String;)Z
    .registers 3
    .param p0, "adminType"    # I
    .param p1, "key"    # Ljava/lang/String;

    .line 1089
    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isLocal(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$readWifiSsids$1(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .registers 2
    .param p0, "ssid"    # Ljava/lang/String;

    .line 917
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$ssidsToStrings$0(Landroid/net/wifi/WifiSsid;)Ljava/lang/String;
    .registers 4
    .param p0, "ssid"    # Landroid/net/wifi/WifiSsid;

    .line 625
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/wifi/WifiSsid;->getBytes()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private readAttributeValues(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 10
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 950
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/Collection;->clear()V

    .line 951
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 953
    .local v0, "outerDepthDAM":I
    :cond_7
    :goto_7
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "typeDAM":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_44

    const/4 v1, 0x3

    if-ne v2, v1, :cond_18

    .line 954
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_44

    .line 955
    :cond_18
    if-eq v2, v1, :cond_7

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1e

    .line 956
    goto :goto_7

    .line 958
    :cond_1e
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 959
    .local v1, "tagDAM":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 960
    const/4 v3, 0x0

    const-string/jumbo v4, "value"

    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 962
    :cond_34
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    aput-object v1, v4, v3

    const-string v3, "DevicePolicyManager"

    const-string v5, "Expected tag %s but found %s"

    invoke-static {v3, v5, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 964
    .end local v1    # "tagDAM":Ljava/lang/String;
    :goto_43
    goto :goto_7

    .line 965
    :cond_44
    return-void
.end method

.method private readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 924
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 925
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 927
    .local v1, "outerDepth":I
    :cond_9
    :goto_9
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "outerType":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_55

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1a

    .line 928
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_55

    .line 929
    :cond_1a
    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_20

    .line 930
    goto :goto_9

    .line 932
    :cond_20
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 933
    .local v2, "outerTag":Ljava/lang/String;
    const-string/jumbo v5, "item"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "DevicePolicyManager"

    if-eqz v5, :cond_48

    .line 934
    const/4 v5, 0x0

    const-string/jumbo v8, "value"

    invoke-interface {p1, v5, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 935
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_3e

    .line 936
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 938
    :cond_3e
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    const-string v6, "Package name missing under %s"

    invoke-static {v7, v6, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 940
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_47
    goto :goto_54

    .line 941
    :cond_48
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    aput-object v2, v5, v4

    const-string v4, "Unknown tag under %s: "

    invoke-static {v7, v4, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 943
    .end local v2    # "outerTag":Ljava/lang/String;
    :goto_54
    goto :goto_9

    .line 944
    :cond_55
    return-object v0
.end method

.method private readWifiSsids(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiSsid;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 914
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .local v0, "ssidStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    .line 916
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda1;-><init>()V

    .line 917
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 918
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 919
    .local v1, "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    return-object v1
.end method

.method static removeDeprecatedRestrictions(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .param p0, "restrictions"    # Landroid/os/Bundle;

    .line 1063
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEPRECATED_USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1064
    .local v1, "deprecatedRestriction":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1065
    .end local v1    # "deprecatedRestriction":Ljava/lang/String;
    goto :goto_6

    .line 1066
    :cond_16
    return-object p0
.end method

.method private ssidsToStrings(Ljava/util/Set;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/wifi/WifiSsid;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 624
    .local p1, "ssids":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/wifi/WifiSsid;>;"
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda2;-><init>()V

    .line 625
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 626
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 624
    return-object v0
.end method


# virtual methods
.method addSyntheticRestrictions(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .line 1053
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 1054
    const-string/jumbo v0, "no_camera"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1056
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    if-eqz v0, :cond_15

    .line 1057
    const-string/jumbo v0, "no_config_date_time"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1059
    :cond_15
    return-object p1
.end method

.method dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 1098
    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1101
    const-string/jumbo v0, "testOnlyAdmin="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1102
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1104
    const-string/jumbo v0, "policies:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v0

    .line 1106
    .local v0, "pols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    if-eqz v0, :cond_41

    .line 1107
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1108
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 1109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v2, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1108
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 1111
    .end local v1    # "i":I
    :cond_3e
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1114
    :cond_41
    const-string/jumbo v1, "passwordQuality=0x"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1115
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->quality:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    const-string/jumbo v1, "minimumPasswordLength="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1118
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->length:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1120
    const-string/jumbo v1, "passwordHistoryLength="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1121
    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1123
    const-string/jumbo v1, "minimumPasswordUpperCase="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1124
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->upperCase:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1126
    const-string/jumbo v1, "minimumPasswordLowerCase="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1127
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1129
    const-string/jumbo v1, "minimumPasswordLetters="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1130
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->letters:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1132
    const-string/jumbo v1, "minimumPasswordNumeric="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1133
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->numeric:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1135
    const-string/jumbo v1, "minimumPasswordSymbols="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1136
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->symbols:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1138
    const-string/jumbo v1, "minimumPasswordNonLetter="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1139
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v1, v1, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1141
    const-string/jumbo v1, "maximumTimeToUnlock="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1142
    iget-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 1144
    const-string/jumbo v1, "strongAuthUnlockTimeout="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1145
    iget-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 1147
    const-string/jumbo v1, "maximumFailedPasswordsForWipe="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1148
    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1150
    const-string/jumbo v1, "specifiesGlobalProxy="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1151
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1153
    const-string/jumbo v1, "passwordExpirationTimeout="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1154
    iget-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 1156
    const-string/jumbo v1, "passwordExpirationDate="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1157
    iget-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 1159
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    if-eqz v1, :cond_109

    .line 1160
    const-string/jumbo v1, "globalProxySpec="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1161
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1163
    :cond_109
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    if-eqz v1, :cond_118

    .line 1164
    const-string/jumbo v1, "globalProxyEclusionList="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1165
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    :cond_118
    const-string v1, "encryptionRequested="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1168
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1170
    const-string v1, "disableCamera="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1171
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1173
    const-string v1, "disableCallerId="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1174
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1176
    const-string v1, "disableContactsSearch="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1177
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1179
    const-string v1, "disableBluetoothContactSharing="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1180
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1182
    const-string v1, "disableScreenCapture="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1183
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1185
    const-string/jumbo v1, "requireAutoTime="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1186
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1188
    const-string v1, "forceEphemeralUsers="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1189
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1191
    const-string/jumbo v1, "isNetworkLoggingEnabled="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1192
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1194
    const-string v1, "disabledKeyguardFeatures="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1195
    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1197
    const-string v1, "crossProfileWidgetProviders="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1198
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1200
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    if-eqz v1, :cond_197

    .line 1201
    const-string/jumbo v1, "permittedAccessibilityServices="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1202
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1205
    :cond_197
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    if-eqz v1, :cond_1a6

    .line 1206
    const-string/jumbo v1, "permittedInputMethods="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1207
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1210
    :cond_1a6
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    if-eqz v1, :cond_1b5

    .line 1211
    const-string/jumbo v1, "permittedNotificationListeners="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1212
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1215
    :cond_1b5
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    if-eqz v1, :cond_1c4

    .line 1216
    const-string/jumbo v1, "keepUninstalledPackages="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1217
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1220
    :cond_1c4
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    if-eqz v1, :cond_1d3

    .line 1221
    const-string/jumbo v1, "meteredDisabledPackages="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1222
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1225
    :cond_1d3
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    if-eqz v1, :cond_1e2

    .line 1226
    const-string/jumbo v1, "protectedPackages="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1227
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1230
    :cond_1e2
    const-string/jumbo v1, "organizationColor="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1231
    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1233
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    if-eqz v1, :cond_1fc

    .line 1234
    const-string/jumbo v1, "organizationName="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1235
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1238
    :cond_1fc
    const-string/jumbo v1, "userRestrictions:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    const-string v2, "  "

    invoke-static {p1, v2, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1241
    const-string v1, "defaultEnabledRestrictionsAlreadySet="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1242
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1244
    const-string/jumbo v1, "isParent="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1245
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1247
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz v1, :cond_233

    .line 1248
    const-string/jumbo v1, "parentAdmin:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1250
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1251
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1254
    :cond_233
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    if-eqz v1, :cond_242

    .line 1255
    const-string/jumbo v1, "mCrossProfileCalendarPackages="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1256
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1259
    :cond_242
    const-string/jumbo v1, "mCrossProfilePackages="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1260
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1262
    const-string/jumbo v1, "mSuspendPersonalApps="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1263
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1265
    const-string/jumbo v1, "mProfileMaximumTimeOffMillis="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1266
    iget-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 1268
    const-string/jumbo v1, "mProfileOffDeadline="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1269
    iget-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 1271
    const-string/jumbo v1, "mAlwaysOnVpnPackage="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1272
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1274
    const-string/jumbo v1, "mAlwaysOnVpnLockdown="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1275
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1277
    const-string/jumbo v1, "mPreferentialNetworkServiceEnabled="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1278
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceEnabled:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1280
    const-string/jumbo v1, "mCommonCriteriaMode="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1281
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCommonCriteriaMode:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1283
    const-string/jumbo v1, "mPasswordComplexity="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1284
    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1286
    const-string/jumbo v1, "mNearbyNotificationStreamingPolicy="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1287
    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1289
    const-string/jumbo v1, "mNearbyAppStreamingPolicy="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1290
    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1292
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2ce

    .line 1293
    const-string/jumbo v1, "mOrganizationId="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1294
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1297
    :cond_2ce
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e1

    .line 1298
    const-string/jumbo v1, "mEnrollmentSpecificId="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1299
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1302
    :cond_2e1
    const-string/jumbo v1, "mAdminCanGrantSensorsPermissions="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1303
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1305
    const-string/jumbo v1, "mUsbDataSignaling="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1306
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1308
    const-string/jumbo v1, "mWifiMinimumSecurityLevel="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1309
    iget v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1311
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    if-eqz v1, :cond_326

    .line 1312
    invoke-virtual {v1}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    move-result v1

    if-nez v1, :cond_313

    .line 1313
    const-string/jumbo v1, "mSsidAllowlist="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_319

    .line 1315
    :cond_313
    const-string/jumbo v1, "mSsidDenylist="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1317
    :goto_319
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    invoke-virtual {v1}, Landroid/app/admin/WifiSsidPolicy;->getSsids()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->ssidsToStrings(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1320
    :cond_326
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    if-eqz v1, :cond_33b

    .line 1321
    const-string/jumbo v1, "mFactoryResetProtectionPolicy:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1323
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    invoke-virtual {v1, p1}, Landroid/app/admin/FactoryResetProtectionPolicy;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1324
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1327
    :cond_33b
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    if-eqz v1, :cond_361

    .line 1328
    const-string/jumbo v1, "mPreferentialNetworkServiceConfigs:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1329
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1330
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 1331
    .local v2, "config":Landroid/app/admin/PreferentialNetworkServiceConfig;
    invoke-virtual {v2, p1}, Landroid/app/admin/PreferentialNetworkServiceConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1332
    .end local v2    # "config":Landroid/app/admin/PreferentialNetworkServiceConfig;
    goto :goto_34e

    .line 1333
    :cond_35e
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1335
    :cond_361
    return-void
.end method

.method ensureUserRestrictions()Landroid/os/Bundle;
    .registers 2

    .line 1039
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 1040
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    .line 1042
    :cond_b
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    return-object v0
.end method

.method getEffectiveRestrictions()Landroid/os/Bundle;
    .registers 3

    .line 1083
    new-instance v0, Landroid/os/Bundle;

    .line 1084
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->ensureUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->removeDeprecatedRestrictions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1083
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->addSyntheticRestrictions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method getGlobalUserRestrictions(I)Landroid/os/Bundle;
    .registers 4
    .param p1, "adminType"    # I

    .line 1093
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->getEffectiveRestrictions()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->filterRestrictions(Landroid/os/Bundle;Ljava/util/function/Predicate;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method getLocalUserRestrictions(I)Landroid/os/Bundle;
    .registers 4
    .param p1, "adminType"    # I

    .line 1088
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->getEffectiveRestrictions()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->filterRestrictions(Landroid/os/Bundle;Ljava/util/function/Predicate;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method getParentActiveAdmin()Lcom/android/server/devicepolicy/ActiveAdmin;
    .registers 4

    .line 334
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 336
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-nez v0, :cond_14

    .line 337
    new-instance v0, Lcom/android/server/devicepolicy/ActiveAdmin;

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, v2, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 339
    :cond_14
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    return-object v0
.end method

.method getUid()I
    .registers 2

    .line 347
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method hasParentActiveAdmin()Z
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hasUserRestrictions()Z
    .registers 2

    .line 1035
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method readFromXml(Landroid/util/TypedXmlPullParser;Z)V
    .registers 13
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "shouldOverridePolicies"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 687
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_595

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 688
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_595

    .line 689
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 690
    goto :goto_4

    .line 692
    :cond_1b
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 693
    .local v4, "tag":Ljava/lang/String;
    const-string/jumbo v5, "policies"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "DevicePolicyManager"

    if-eqz v5, :cond_38

    .line 694
    if-eqz p2, :cond_593

    .line 695
    const-string v1, "Overriding device admin policies from XML."

    invoke-static {v6, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Landroid/util/TypedXmlPullParser;)V

    goto/16 :goto_593

    .line 698
    :cond_38
    const-string/jumbo v5, "password-quality"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v7, "value"

    const/4 v8, 0x0

    if-eqz v5, :cond_4f

    .line 699
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->quality:I

    goto/16 :goto_593

    .line 700
    :cond_4f
    const-string/jumbo v5, "min-password-length"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 701
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->length:I

    goto/16 :goto_593

    .line 702
    :cond_62
    const-string/jumbo v5, "password-history-length"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 703
    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    goto/16 :goto_593

    .line 704
    :cond_73
    const-string/jumbo v5, "min-password-uppercase"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 705
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->upperCase:I

    goto/16 :goto_593

    .line 706
    :cond_86
    const-string/jumbo v5, "min-password-lowercase"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 707
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    goto/16 :goto_593

    .line 708
    :cond_99
    const-string/jumbo v5, "min-password-letters"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 709
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->letters:I

    goto/16 :goto_593

    .line 710
    :cond_ac
    const-string/jumbo v5, "min-password-numeric"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 711
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->numeric:I

    goto/16 :goto_593

    .line 712
    :cond_bf
    const-string/jumbo v5, "min-password-symbols"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 713
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->symbols:I

    goto/16 :goto_593

    .line 714
    :cond_d2
    const-string/jumbo v5, "min-password-nonletter"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 715
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    goto/16 :goto_593

    .line 716
    :cond_e5
    const-string/jumbo v5, "max-time-to-unlock"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 717
    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    goto/16 :goto_593

    .line 718
    :cond_f6
    const-string/jumbo v5, "strong-auth-unlock-timeout"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_107

    .line 719
    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    goto/16 :goto_593

    .line 720
    :cond_107
    const-string/jumbo v5, "max-failed-password-wipe"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_118

    .line 721
    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto/16 :goto_593

    .line 722
    :cond_118
    const-string/jumbo v5, "specifies-global-proxy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v9, 0x0

    if-eqz v5, :cond_12a

    .line 723
    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    goto/16 :goto_593

    .line 724
    :cond_12a
    const-string/jumbo v5, "global-proxy-spec"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13c

    .line 725
    nop

    .line 726
    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    goto/16 :goto_593

    .line 727
    :cond_13c
    const-string/jumbo v5, "global-proxy-exclusion-list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14e

    .line 728
    nop

    .line 729
    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    goto/16 :goto_593

    .line 730
    :cond_14e
    const-string/jumbo v5, "password-expiration-timeout"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15f

    .line 731
    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    goto/16 :goto_593

    .line 732
    :cond_15f
    const-string/jumbo v5, "password-expiration-date"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_170

    .line 733
    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    goto/16 :goto_593

    .line 734
    :cond_170
    const-string v5, "encryption-requested"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_180

    .line 735
    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    goto/16 :goto_593

    .line 736
    :cond_180
    const-string/jumbo v5, "test-only-admin"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_191

    .line 737
    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    goto/16 :goto_593

    .line 738
    :cond_191
    const-string v5, "disable-camera"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a1

    .line 739
    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    goto/16 :goto_593

    .line 740
    :cond_1a1
    const-string v5, "disable-caller-id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b1

    .line 741
    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    goto/16 :goto_593

    .line 742
    :cond_1b1
    const-string v5, "disable-contacts-search"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c1

    .line 743
    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    goto/16 :goto_593

    .line 744
    :cond_1c1
    const-string v5, "disable-bt-contacts-sharing"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d2

    .line 745
    nop

    .line 746
    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    goto/16 :goto_593

    .line 747
    :cond_1d2
    const-string v5, "disable-screen-capture"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e2

    .line 748
    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    goto/16 :goto_593

    .line 749
    :cond_1e2
    const-string/jumbo v5, "require_auto_time"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f3

    .line 750
    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    goto/16 :goto_593

    .line 751
    :cond_1f3
    const-string v5, "force_ephemeral_users"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_203

    .line 752
    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    goto/16 :goto_593

    .line 753
    :cond_203
    const-string/jumbo v5, "is_network_logging_enabled"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_226

    .line 754
    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    .line 755
    const-string/jumbo v1, "last-notification"

    invoke-interface {p1, v8, v1}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 757
    const-string/jumbo v1, "num-notifications"

    invoke-interface {p1, v8, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    goto/16 :goto_593

    .line 759
    :cond_226
    const-string v5, "disable-keyguard-features"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_236

    .line 760
    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    goto/16 :goto_593

    .line 761
    :cond_236
    const-string v5, "disable-account-management"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_247

    .line 762
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    const-string v3, "account-type"

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_593

    .line 764
    :cond_247
    const-string/jumbo v5, "manage-trust-agent-features"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_258

    .line 765
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->getAllTrustAgentInfos(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    goto/16 :goto_593

    .line 766
    :cond_258
    const-string v5, "cross-profile-widget-providers"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26f

    .line 767
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 768
    const-string/jumbo v3, "provider"

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_593

    .line 769
    :cond_26f
    const-string/jumbo v5, "permitted-accessiblity-services"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_280

    .line 770
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    goto/16 :goto_593

    .line 771
    :cond_280
    const-string/jumbo v5, "permitted-imes"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_291

    .line 772
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    goto/16 :goto_593

    .line 773
    :cond_291
    const-string/jumbo v5, "permitted-notification-listeners"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a2

    .line 774
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    goto/16 :goto_593

    .line 775
    :cond_2a2
    const-string/jumbo v5, "keep-uninstalled-packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b3

    .line 776
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    goto/16 :goto_593

    .line 777
    :cond_2b3
    const-string/jumbo v5, "metered_data_disabled_packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c4

    .line 778
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    goto/16 :goto_593

    .line 779
    :cond_2c4
    const-string/jumbo v5, "protected_packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d5

    .line 780
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    goto/16 :goto_593

    .line 781
    :cond_2d5
    const-string/jumbo v5, "user-restrictions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e6

    .line 782
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    goto/16 :goto_593

    .line 783
    :cond_2e6
    const-string v5, "default-enabled-user-restrictions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f8

    .line 784
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    const-string/jumbo v3, "restriction"

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_593

    .line 786
    :cond_2f8
    const-string/jumbo v5, "short-support-message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_316

    .line 787
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    .line 788
    if-ne v2, v1, :cond_30f

    .line 789
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    goto/16 :goto_593

    .line 791
    :cond_30f
    const-string v1, "Missing text when loading short support message"

    invoke-static {v6, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_593

    .line 793
    :cond_316
    const-string/jumbo v5, "long-support-message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_334

    .line 794
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    .line 795
    if-ne v2, v1, :cond_32d

    .line 796
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    goto/16 :goto_593

    .line 798
    :cond_32d
    const-string v1, "Missing text when loading long support message"

    invoke-static {v6, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_593

    .line 800
    :cond_334
    const-string/jumbo v5, "parent-admin"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_351

    .line 801
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    xor-int/2addr v1, v3

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 802
    new-instance v1, Lcom/android/server/devicepolicy/ActiveAdmin;

    iget-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v1, v5, v3}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 803
    invoke-virtual {v1, p1, p2}, Lcom/android/server/devicepolicy/ActiveAdmin;->readFromXml(Landroid/util/TypedXmlPullParser;Z)V

    goto/16 :goto_593

    .line 804
    :cond_351
    const-string/jumbo v5, "organization-color"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_362

    .line 805
    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    goto/16 :goto_593

    .line 806
    :cond_362
    const-string/jumbo v5, "organization-name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_380

    .line 807
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    .line 808
    if-ne v2, v1, :cond_379

    .line 809
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    goto/16 :goto_593

    .line 811
    :cond_379
    const-string v1, "Missing text when loading organization name"

    invoke-static {v6, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_593

    .line 813
    :cond_380
    const-string/jumbo v5, "is_logout_enabled"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_391

    .line 814
    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    goto/16 :goto_593

    .line 815
    :cond_391
    const-string/jumbo v5, "start_user_session_message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3af

    .line 816
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    .line 817
    if-ne v2, v1, :cond_3a8

    .line 818
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    goto/16 :goto_593

    .line 820
    :cond_3a8
    const-string v1, "Missing text when loading start session message"

    invoke-static {v6, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_593

    .line 822
    :cond_3af
    const-string v5, "end_user_session_message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3cc

    .line 823
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    .line 824
    if-ne v2, v1, :cond_3c5

    .line 825
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    goto/16 :goto_593

    .line 827
    :cond_3c5
    const-string v1, "Missing text when loading end session message"

    invoke-static {v6, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_593

    .line 829
    :cond_3cc
    const-string v5, "cross-profile-calendar-packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3dc

    .line 830
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    goto/16 :goto_593

    .line 831
    :cond_3dc
    const-string v5, "cross-profile-calendar-packages-null"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e8

    .line 832
    iput-object v8, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    goto/16 :goto_593

    .line 833
    :cond_3e8
    const-string v5, "cross-profile-packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f8

    .line 834
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    goto/16 :goto_593

    .line 835
    :cond_3f8
    const-string v5, "factory_reset_protection_policy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_408

    .line 836
    invoke-static {p1}, Landroid/app/admin/FactoryResetProtectionPolicy;->readFromXml(Landroid/util/TypedXmlPullParser;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    goto/16 :goto_593

    .line 838
    :cond_408
    const-string/jumbo v5, "suspend-personal-apps"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_419

    .line 839
    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    goto/16 :goto_593

    .line 840
    :cond_419
    const-string/jumbo v5, "profile-max-time-off"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42b

    .line 841
    nop

    .line 842
    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    goto/16 :goto_593

    .line 843
    :cond_42b
    const-string/jumbo v5, "profile-off-deadline"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43d

    .line 844
    nop

    .line 845
    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    goto/16 :goto_593

    .line 846
    :cond_43d
    const-string/jumbo v5, "vpn-package"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44e

    .line 847
    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    goto/16 :goto_593

    .line 848
    :cond_44e
    const-string/jumbo v5, "vpn-lockdown"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45f

    .line 849
    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    goto/16 :goto_593

    .line 850
    :cond_45f
    const-string/jumbo v5, "preferential-network-service-enabled"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48b

    .line 851
    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceEnabled:Z

    .line 853
    if-eqz v1, :cond_593

    .line 854
    new-instance v1, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-direct {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    .line 856
    .local v1, "configBuilder":Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceEnabled:Z

    invoke-virtual {v1, v5}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 857
    invoke-virtual {v1, v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 858
    invoke-virtual {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v3

    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    .line 859
    iput-boolean v9, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceEnabled:Z

    .line 860
    .end local v1    # "configBuilder":Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    goto/16 :goto_593

    .line 861
    :cond_48b
    const-string v5, "common-criteria-mode"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49b

    .line 862
    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCommonCriteriaMode:Z

    goto/16 :goto_593

    .line 863
    :cond_49b
    const-string/jumbo v5, "password-complexity"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4ac

    .line 864
    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    goto/16 :goto_593

    .line 865
    :cond_4ac
    const-string/jumbo v5, "nearby-notification-streaming-policy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4bd

    .line 866
    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    goto/16 :goto_593

    .line 867
    :cond_4bd
    const-string/jumbo v5, "nearby-app-streaming-policy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4ce

    .line 868
    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    goto/16 :goto_593

    .line 869
    :cond_4ce
    const-string/jumbo v5, "organization-id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4ec

    .line 870
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    .line 871
    if-ne v2, v1, :cond_4e5

    .line 872
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    goto/16 :goto_593

    .line 874
    :cond_4e5
    const-string v1, "Missing Organization ID."

    invoke-static {v6, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_593

    .line 876
    :cond_4ec
    const-string v5, "enrollment-specific-id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_509

    .line 877
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    .line 878
    if-ne v2, v1, :cond_502

    .line 879
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    goto/16 :goto_593

    .line 881
    :cond_502
    const-string v1, "Missing Enrollment-specific ID."

    invoke-static {v6, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_593

    .line 883
    :cond_509
    const-string v1, "admin-can-grant-sensors-permissions"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_519

    .line 884
    invoke-interface {p1, v8, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    goto/16 :goto_593

    .line 886
    :cond_519
    const-string/jumbo v1, "usb-data-signaling"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_529

    .line 887
    invoke-interface {p1, v8, v7, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    goto :goto_593

    .line 889
    :cond_529
    const-string/jumbo v1, "wifi-min-security"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_539

    .line 890
    invoke-interface {p1, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    goto :goto_593

    .line 891
    :cond_539
    const-string/jumbo v1, "ssid-allowlist"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v5, "ssid"

    if-eqz v1, :cond_556

    .line 892
    invoke-direct {p0, p1, v5}, Lcom/android/server/devicepolicy/ActiveAdmin;->readWifiSsids(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 893
    .local v1, "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    new-instance v3, Landroid/app/admin/WifiSsidPolicy;

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v9, v5}, Landroid/app/admin/WifiSsidPolicy;-><init>(ILjava/util/Set;)V

    iput-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    .line 895
    .end local v1    # "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    goto :goto_593

    :cond_556
    const-string/jumbo v1, "ssid-denylist"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_570

    .line 896
    invoke-direct {p0, p1, v5}, Lcom/android/server/devicepolicy/ActiveAdmin;->readWifiSsids(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 897
    .restart local v1    # "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    new-instance v5, Landroid/app/admin/WifiSsidPolicy;

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v5, v3, v6}, Landroid/app/admin/WifiSsidPolicy;-><init>(ILjava/util/Set;)V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    .line 899
    .end local v1    # "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    goto :goto_593

    :cond_570
    const-string/jumbo v1, "preferential_network_service_configs"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_587

    .line 900
    nop

    .line 901
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->getPreferentialNetworkServiceConfigs(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 902
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_586

    .line 903
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    .line 905
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    :cond_586
    goto :goto_593

    .line 906
    :cond_587
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v4, v1, v9

    const-string v3, "Unknown admin tag: %s"

    invoke-static {v6, v3, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 907
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 909
    .end local v4    # "tag":Ljava/lang/String;
    :cond_593
    :goto_593
    goto/16 :goto_4

    .line 910
    :cond_595
    return-void
.end method

.method public transfer(Landroid/app/admin/DeviceAdminInfo;)V
    .registers 3
    .param p1, "deviceAdminInfo"    # Landroid/app/admin/DeviceAdminInfo;

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->hasParentActiveAdmin()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1047
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    iput-object p1, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 1049
    :cond_a
    iput-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 1050
    return-void
.end method

.method writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V
    .registers 6
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 654
    const-string/jumbo v1, "value"

    invoke-interface {p1, v0, v1, p3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 655
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 656
    return-void
.end method

.method writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V
    .registers 7
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 660
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 661
    const-string/jumbo v1, "value"

    invoke-interface {p1, v0, v1, p3, p4}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 662
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 663
    return-void
.end method

.method writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 647
    const-string/jumbo v1, "value"

    invoke-interface {p1, v0, v1, p3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 648
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 649
    return-void
.end method

.method writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 667
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 668
    const-string/jumbo v1, "value"

    invoke-interface {p1, v0, v1, p3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 669
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 670
    return-void
.end method

.method writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 9
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "outerTag"    # Ljava/lang/String;
    .param p3, "innerTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    .local p4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 675
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 676
    .local v2, "value":Ljava/lang/String;
    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 677
    const-string/jumbo v3, "value"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 678
    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 679
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_8

    .line 680
    :cond_21
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 681
    return-void
.end method

.method writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "outerTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    .local p3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_3

    .line 639
    return-void

    .line 641
    :cond_3
    const-string/jumbo v0, "item"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 642
    return-void
.end method

.method writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 631
    invoke-interface {p1, p3}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 632
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 633
    return-void
.end method

.method writeToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 18
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const-string/jumbo v0, "policies"

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    iget-object v4, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, v2}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Landroid/util/TypedXmlSerializer;)V

    .line 358
    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->quality:I

    const/4 v4, 0x1

    if-eqz v0, :cond_94

    .line 360
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->quality:I

    const-string/jumbo v5, "password-quality"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 362
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->length:I

    if-eqz v0, :cond_34

    .line 363
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->length:I

    const-string/jumbo v5, "min-password-length"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 366
    :cond_34
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->upperCase:I

    if-eqz v0, :cond_44

    .line 367
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->upperCase:I

    const-string/jumbo v5, "min-password-uppercase"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 370
    :cond_44
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    if-eqz v0, :cond_54

    .line 371
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    const-string/jumbo v5, "min-password-lowercase"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 374
    :cond_54
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->letters:I

    if-eq v0, v4, :cond_64

    .line 375
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->letters:I

    const-string/jumbo v5, "min-password-letters"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 378
    :cond_64
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->numeric:I

    if-eq v0, v4, :cond_74

    .line 379
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->numeric:I

    const-string/jumbo v5, "min-password-numeric"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 382
    :cond_74
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->symbols:I

    if-eq v0, v4, :cond_84

    .line 383
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->symbols:I

    const-string/jumbo v5, "min-password-symbols"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 386
    :cond_84
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    if-lez v0, :cond_94

    .line 387
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    const-string/jumbo v5, "min-password-nonletter"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 391
    :cond_94
    iget v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    if-eqz v0, :cond_9e

    .line 392
    const-string/jumbo v5, "password-history-length"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 395
    :cond_9e
    iget-wide v5, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_ac

    .line 396
    const-string/jumbo v0, "max-time-to-unlock"

    invoke-virtual {v1, v2, v0, v5, v6}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 399
    :cond_ac
    iget-wide v5, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    const-wide/32 v9, 0xf731400

    cmp-long v0, v5, v9

    if-eqz v0, :cond_bb

    .line 400
    const-string/jumbo v0, "strong-auth-unlock-timeout"

    invoke-virtual {v1, v2, v0, v5, v6}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 403
    :cond_bb
    iget v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v0, :cond_c5

    .line 404
    const-string/jumbo v5, "max-failed-password-wipe"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 407
    :cond_c5
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v0, :cond_e3

    .line 408
    const-string/jumbo v5, "specifies-global-proxy"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 410
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    if-eqz v0, :cond_d9

    .line 411
    const-string/jumbo v5, "global-proxy-spec"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_d9
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    if-eqz v0, :cond_e3

    .line 414
    const-string/jumbo v5, "global-proxy-exclusion-list"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_e3
    iget-wide v5, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_ef

    .line 419
    const-string/jumbo v0, "password-expiration-timeout"

    invoke-virtual {v1, v2, v0, v5, v6}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 422
    :cond_ef
    iget-wide v5, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_fb

    .line 423
    const-string/jumbo v0, "password-expiration-date"

    invoke-virtual {v1, v2, v0, v5, v6}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 426
    :cond_fb
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    if-eqz v0, :cond_104

    .line 427
    const-string v5, "encryption-requested"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 430
    :cond_104
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    if-eqz v0, :cond_10e

    .line 431
    const-string/jumbo v5, "test-only-admin"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 434
    :cond_10e
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    if-eqz v0, :cond_117

    .line 435
    const-string v5, "disable-camera"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 438
    :cond_117
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    if-eqz v0, :cond_120

    .line 439
    const-string v5, "disable-caller-id"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 442
    :cond_120
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    if-eqz v0, :cond_129

    .line 443
    const-string v5, "disable-contacts-search"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 446
    :cond_129
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    if-nez v0, :cond_132

    .line 447
    const-string v5, "disable-bt-contacts-sharing"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 450
    :cond_132
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    if-eqz v0, :cond_13b

    .line 451
    const-string v5, "disable-screen-capture"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 454
    :cond_13b
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    if-eqz v0, :cond_145

    .line 455
    const-string/jumbo v5, "require_auto_time"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 458
    :cond_145
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    if-eqz v0, :cond_14e

    .line 459
    const-string v5, "force_ephemeral_users"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 462
    :cond_14e
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    const-string/jumbo v5, "value"

    if-eqz v0, :cond_173

    .line 463
    const-string/jumbo v0, "is_network_logging_enabled"

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 464
    iget-boolean v6, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    invoke-interface {v2, v3, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 465
    iget v6, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    const-string/jumbo v9, "num-notifications"

    invoke-interface {v2, v3, v9, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 467
    iget-wide v9, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    const-string/jumbo v6, "last-notification"

    invoke-interface {v2, v3, v6, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 469
    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 471
    :cond_173
    iget v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    if-eqz v0, :cond_17c

    .line 472
    const-string v6, "disable-keyguard-features"

    invoke-virtual {v1, v2, v6, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 475
    :cond_17c
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18d

    .line 476
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    const-string v6, "disable-account-management"

    const-string v9, "account-type"

    invoke-virtual {v1, v2, v6, v9, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 480
    :cond_18d
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1ef

    .line 481
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 482
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;>;>;"
    const-string/jumbo v9, "manage-trust-agent-features"

    invoke-interface {v2, v3, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 483
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1a5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ec

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/Map$Entry;

    .line 484
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;

    .line 485
    .local v12, "trustAgentInfo":Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;
    const-string v13, "component"

    invoke-interface {v2, v3, v13}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v3, v5, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 487
    iget-object v0, v12, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1e5

    .line 488
    const-string/jumbo v14, "trust-agent-component-options"

    invoke-interface {v2, v3, v14}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 490
    :try_start_1d1
    iget-object v0, v12, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V
    :try_end_1d6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d1 .. :try_end_1d6} :catch_1d7

    .line 493
    goto :goto_1e2

    .line 491
    :catch_1d7
    move-exception v0

    .line 492
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    const-string v4, "DevicePolicyManager"

    const-string v7, "Failed to save TrustAgent options"

    invoke-static {v4, v0, v7, v15}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1e2
    invoke-interface {v2, v3, v14}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 496
    :cond_1e5
    invoke-interface {v2, v3, v13}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 497
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;>;"
    .end local v12    # "trustAgentInfo":Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    goto :goto_1a5

    .line 498
    :cond_1ec
    invoke-interface {v2, v3, v9}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 500
    .end local v6    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;>;>;"
    :cond_1ef
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v0, :cond_203

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_203

    .line 501
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    const-string v4, "cross-profile-widget-providers"

    const-string/jumbo v5, "provider"

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 505
    :cond_203
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    const-string/jumbo v4, "permitted-accessiblity-services"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 507
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    const-string/jumbo v4, "permitted-imes"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 508
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    const-string/jumbo v4, "permitted-notification-listeners"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 510
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    const-string/jumbo v4, "keep-uninstalled-packages"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 511
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    const-string/jumbo v4, "metered_data_disabled_packages"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 512
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    const-string/jumbo v4, "protected_packages"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->hasUserRestrictions()Z

    move-result v0

    if-eqz v0, :cond_241

    .line 514
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    const-string/jumbo v4, "user-restrictions"

    invoke-static {v2, v0, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Landroid/util/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 517
    :cond_241
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_253

    .line 518
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    const-string v4, "default-enabled-user-restrictions"

    const-string/jumbo v5, "restriction"

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 522
    :cond_253
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_267

    .line 523
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "short-support-message"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_267
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27b

    .line 526
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "long-support-message"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_27b
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz v0, :cond_28d

    .line 529
    const-string/jumbo v0, "parent-admin"

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 530
    iget-object v4, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-virtual {v4, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    .line 531
    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 533
    :cond_28d
    iget v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    sget v4, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    if-eq v0, v4, :cond_299

    .line 534
    const-string/jumbo v4, "organization-color"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 536
    :cond_299
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    if-eqz v0, :cond_2a3

    .line 537
    const-string/jumbo v4, "organization-name"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_2a3
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    if-eqz v0, :cond_2ad

    .line 540
    const-string/jumbo v4, "is_logout_enabled"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 542
    :cond_2ad
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    if-eqz v0, :cond_2b7

    .line 543
    const-string/jumbo v4, "start_user_session_message"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_2b7
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    if-eqz v0, :cond_2c0

    .line 546
    const-string v4, "end_user_session_message"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_2c0
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    if-nez v0, :cond_2cd

    .line 549
    const-string v0, "cross-profile-calendar-packages-null"

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 550
    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2d2

    .line 552
    :cond_2cd
    const-string v4, "cross-profile-calendar-packages"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 555
    :goto_2d2
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    const-string v4, "cross-profile-packages"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 556
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    if-eqz v0, :cond_2ea

    .line 557
    const-string v0, "factory_reset_protection_policy"

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 558
    iget-object v4, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    invoke-virtual {v4, v2}, Landroid/app/admin/FactoryResetProtectionPolicy;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    .line 559
    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    :cond_2ea
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    if-eqz v0, :cond_2f4

    .line 562
    const-string/jumbo v4, "suspend-personal-apps"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 564
    :cond_2f4
    iget-wide v4, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_302

    .line 565
    const-string/jumbo v0, "profile-max-time-off"

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 568
    :cond_302
    iget-wide v4, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_310

    .line 569
    iget-wide v4, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    const-string/jumbo v0, "profile-off-deadline"

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 571
    :cond_310
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_320

    .line 572
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    const-string/jumbo v4, "vpn-package"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_320
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    if-eqz v0, :cond_32a

    .line 575
    const-string/jumbo v4, "vpn-lockdown"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 577
    :cond_32a
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mCommonCriteriaMode:Z

    if-eqz v0, :cond_333

    .line 578
    const-string v4, "common-criteria-mode"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 581
    :cond_333
    iget v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    if-eqz v0, :cond_33d

    .line 582
    const-string/jumbo v4, "password-complexity"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 584
    :cond_33d
    iget v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_348

    .line 585
    const-string/jumbo v5, "nearby-notification-streaming-policy"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 588
    :cond_348
    iget v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    if-eq v0, v4, :cond_352

    .line 589
    const-string/jumbo v4, "nearby-app-streaming-policy"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 592
    :cond_352
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_362

    .line 593
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    const-string/jumbo v4, "organization-id"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_362
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_371

    .line 596
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    const-string v4, "enrollment-specific-id"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_371
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    const-string v4, "admin-can-grant-sensors-permissions"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 600
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    const/4 v4, 0x1

    if-eq v0, v4, :cond_383

    .line 601
    const-string/jumbo v4, "usb-data-signaling"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 603
    :cond_383
    iget v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    if-eqz v0, :cond_38d

    .line 604
    const-string/jumbo v4, "wifi-min-security"

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 606
    :cond_38d
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    if-eqz v0, :cond_3ba

    .line 607
    invoke-virtual {v0}, Landroid/app/admin/WifiSsidPolicy;->getSsids()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->ssidsToStrings(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 608
    .local v0, "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    invoke-virtual {v4}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    move-result v4

    const-string/jumbo v5, "ssid"

    if-nez v4, :cond_3ab

    .line 609
    const-string/jumbo v4, "ssid-allowlist"

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_3ba

    .line 610
    :cond_3ab
    iget-object v4, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    invoke-virtual {v4}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3ba

    .line 611
    const-string/jumbo v4, "ssid-denylist"

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 614
    .end local v0    # "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3ba
    :goto_3ba
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e1

    .line 615
    const-string/jumbo v0, "preferential_network_service_configs"

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 616
    iget-object v4, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3ce
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3de

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 617
    .local v5, "config":Landroid/app/admin/PreferentialNetworkServiceConfig;
    invoke-virtual {v5, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    .line 618
    .end local v5    # "config":Landroid/app/admin/PreferentialNetworkServiceConfig;
    goto :goto_3ce

    .line 619
    :cond_3de
    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 621
    :cond_3e1
    return-void
.end method
